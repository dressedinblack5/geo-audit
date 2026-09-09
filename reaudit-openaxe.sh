#!/bin/bash
# Monthly GEO re-audit of openaxe. Logs to reaudit.log. Results land in runs/<timestamp>-openaxe/.
export PATH=/usr/bin:/bin:/usr/local/bin
cd /home/dressedinblack/Projects/niubigeo || exit 1
/usr/bin/npx tsx src/cli.ts audit \
  --domain github.com \
  --github https://github.com/dressedinblack5/openaxe \
  --name "openaxe" \
  --no-auto-discover \
  --provider openrouter \
  --model openai/gpt-4o-mini \
  --prompt-count 8 \
  --max-tokens 900 \
  --keywords "openaxe AI coding assistant,openaxe vs opencode,open source AI coding agent terminal,lean fork of opencode,TUI AI coding assistant Linux,openaxe security coding agent" \
  --keyword-limit 6 \
  --prompts-per-keyword 2 >> reaudit.log 2>&1
