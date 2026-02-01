#!/bin/bash
# 语音转文字工具 - 本地 Whisper (轻量级)
# 用法: ./scripts/speech-to-text.sh <音频文件路径>

AUDIO_FILE="$1"
MODEL_SIZE="${WHISPER_MODEL:-tiny}"  # 可选: tiny, base, small, medium

if [ -z "$AUDIO_FILE" ]; then
    echo "用法: $0 <音频文件路径>"
    echo "环境变量: WHISPER_MODEL (默认: tiny, 可选 base/small/medium)"
    exit 1
fi

if [ ! -f "$AUDIO_FILE" ]; then
    echo "错误: 文件不存在: $AUDIO_FILE"
    exit 1
fi

echo "正在转写音频: $AUDIO_FILE (模型: $MODEL_SIZE)..."

# 检查 whisper 是否安装
if ! command -v whisper &> /dev/null; then
    echo "错误: 未安装 whisper"
    echo "请运行: pip3 install openai-whisper"
    exit 1
fi

# 转换音频格式
TEMP_FILE="/tmp/audio_for_whisper.wav"
ffmpeg -y -i "$AUDIO_FILE" -ar 16000 -ac 1 -acodec pcm_s16le "$TEMP_FILE" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "错误: 音频转换失败"
    exit 1
fi

# 执行转写
whisper "$TEMP_FILE" \
    --model "$MODEL_SIZE" \
    --language Chinese \
    --output_format txt \
    --output_dir /tmp

# 清理
rm -f "$TEMP_FILE"

# 显示结果
if [ -f "/tmp/audio_for_whisper.txt" ]; then
    cat /tmp/audio_for_whisper.txt
    rm -f /tmp/audio_for_whisper.txt
fi
