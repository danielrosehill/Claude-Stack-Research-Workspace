#!/bin/bash

# add-gitkeep.sh
# Adds .gitkeep files to all empty directories in the repository
# This ensures the full directory structure is preserved in version control

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the repository root directory
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo -e "${BLUE}Claude Stack Research Workspace - .gitkeep Manager${NC}"
echo -e "${BLUE}===================================================${NC}\n"

# Counter for tracking
added_count=0
skipped_count=0
total_empty=0

# Find all directories, excluding .git
find "$REPO_ROOT" -type d ! -path "*/.git/*" | while read -r dir; do
    # Check if directory is empty (no files, only potential subdirectories with .gitkeep)
    file_count=$(find "$dir" -maxdepth 1 -type f ! -name '.gitkeep' 2>/dev/null | wc -l)

    if [ "$file_count" -eq 0 ]; then
        ((total_empty++))

        # Check if .gitkeep already exists
        if [ -f "$dir/.gitkeep" ]; then
            rel_path="${dir#$REPO_ROOT/}"
            [ -z "$rel_path" ] && rel_path="."
            echo -e "${YELLOW}✓${NC} Already exists: $rel_path"
            ((skipped_count++))
        else
            # Create .gitkeep file
            touch "$dir/.gitkeep"
            rel_path="${dir#$REPO_ROOT/}"
            [ -z "$rel_path" ] && rel_path="."
            echo -e "${GREEN}✓${NC} Added .gitkeep:  $rel_path"
            ((added_count++))
        fi
    fi
done

# Note: Because we're in a subshell, we can't get the exact counts
# But the visual output shows what was done

echo -e "\n${BLUE}===================================================${NC}"
echo -e "${GREEN}Complete! Check the output above for details.${NC}"

# Check if any .gitkeep files were added
if git status --short | grep -q ".gitkeep"; then
    echo -e "\n${YELLOW}New .gitkeep files detected. To commit them:${NC}"
    echo -e "  git add ."
    echo -e "  git commit -m \"Add .gitkeep files to preserve directory structure\""
fi

echo ""
