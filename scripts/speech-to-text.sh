#!/bin/bash
# 语音转文字工具 - 使用 OpenAI Whisper API
# 用法: ./speech-to-text.sh <音频文件路径>

AUDIO_FILE="$1"
OPENAI_API_KEY="${OPENAI_API_KEY:-sk-your-api-key}"

if [ -z "$AUDIO_FILE" ]; then
    echo "用法: $0 <音频文件路径>"
    exit 1
fi

if [ ! -f "$AUDIO_FILE" ]; then
    echo "错误: 文件不存在: $AUDIO_FILE"
    exit 1
fi

echo "正在转写音频: $AUDIO_FILE..."

curl -s -X POST "https://api.openai.com/v1/audio/transcriptions" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: multipart/form-data" \
  -F "model=whisper-1" \
  -F "file=@$AUDIO_FILE" \
  -F "language=zh" \
  -F "response_format=text"
