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

### 语音识别 (Whisper - 本地)
- **脚本路径**: `/root/.openclaw/workspace/scripts/speech-to-text.sh`
- **类型**: 本地模型（无需 API Key）
- **模型大小**: tiny (~1GB内存), base, small, medium
- **支持语言**: 中文、英文等
- **用法**:
  ```bash
  # 安装
  pip3 install openai-whisper

  # 转写音频
  ./scripts/speech-to-text.sh <音频文件路径>

  # 使用更大模型（更准确）
  WHISPER_MODEL=base ./scripts/speech-to-text.sh <音频文件>
  ```
- **优点**: 完全免费、无需 API Key、数据不上传
- **首次运行**: 会自动下载模型（约39MB-74MB）


## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.
