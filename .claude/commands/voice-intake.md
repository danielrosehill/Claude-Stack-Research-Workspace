---
description: Transcribe a voice note and parse it into structured stack requirements
tags: [intake, voice, transcription]
---

You are processing a voice note that describes what the user is looking for in a stack search. Your job is to transcribe it, extract structured parameters, and write a complete `context/from-human/stack-requirements.md`.

## Your Task

### Step 1: Find the audio file

Check for audio files in this order:
1. If the user specified a file path, use that.
2. Check the repo root for any `.mp3`, `.m4a`, `.wav`, or `.ogg` files.
3. Check `voice-notes/` if it exists.
4. Ask the user where the file is.

### Step 2: Transcribe

Use the Gemini transcription MCP if available (`transcribe_audio` tool). If not available, tell the user you need them to provide a transcript or enable a transcription tool.

Save the raw transcript to `context/from-human/voice-transcript-YYYY-MM-DD.md` with a header:

```
# Voice Intake Transcript — YYYY-MM-DD

> Raw transcript of voice note describing stack search requirements.

[transcript text]
```

### Step 3: Parse into structured requirements

Read `context/from-human/stack-requirements-template.md` for the canonical field list.

Extract from the transcript:
- **What they're looking for** — the core problem/need
- **Deployment model** — did they mention SaaS, self-hosted, or a preference?
- **Budget** — any mention of price, cost, "free", "cheap", budget range?
- **Who it's for** — personal, business, client?
- **Deal-breakers** — anything stated as a must-have or absolute requirement
- **Nice-to-haves** — preferences mentioned but not as hard requirements
- **Integration needs** — specific tools or services mentioned
- **Data portability** — any mention of backup, export, data ownership
- **Known candidates** — any tools mentioned by name (to include or exclude)
- **Other context** — anything that doesn't fit the above categories

For fields not mentioned in the voice note, fill in sensible defaults from `context/general-prefs.md` (the user's standing preferences) and mark them with `(default — not specified in voice note)` so the user can verify.

### Step 4: Write the requirements file

Write `context/from-human/stack-requirements.md` using the parsed data.

Also update `CONTEXT.md` at the repo root with a summary.

### Step 5: Confirm with the user

Show a summary of what was extracted and ask:
- "Here's what I got from your voice note. Anything I missed or got wrong?"
- "Any sections you want to add to or change?"

Make edits as requested.

### Step 6: Ready to research

Tell the user they can now run `/start-research` to begin the evaluation.

## Parsing Guidelines

Voice notes are messy. Expect:
- Stream of consciousness, not structured answers
- Tangents and corrections ("actually, no, I meant...")
- Implicit requirements (e.g., "I use Linux" implies platform constraint)
- Casual language for budget ("not too expensive" = probably Low-Mid band)
- Named tools as both candidates and comparisons ("something like Notion but...")

When in doubt, extract what you can and flag uncertain items for the user to confirm.
