# TOOLS.md - Local Notes

Skills define *how* tools work. This file is for *your* specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:
- Camera names and locations
- SSH hosts and aliases  
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras
- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH
- home-server → 192.168.1.100, user: admin

### TTS
- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Audio/Video Tools

### FFmpeg
- **路径**: `/usr/bin/ffmpeg`
- **版本**: 7.0.2
- **用途**: 音频/视频处理、格式转换、语音识别预处理
- **支持的音频格式**: MP3, WAV, OGG, AAC, FLAC, OPUS 等
- **安装时间**: 2026-02-01

### 语音识别 (Whisper)
- **脚本路径**: `/root/.openclaw/workspace/scripts/speech-to-text.sh`
- **API**: OpenAI Whisper (whisper-1)
- **支持语言**: 中文、英文等
- **用法**:
  ```bash
  ./scripts/speech-to-text.sh <音频文件路径>
  ```
- **环境变量**: `OPENAI_API_KEY` - OpenAI API 密钥
- **注意事项**: 需要设置 OPENAI_API_KEY 环境变量


## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.
