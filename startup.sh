#!/bin/bash
# Ollama URL for the backend to connect
# The path '/ollama' will be redirected to the specified backend URL
export OLLAMA_BASE_URL='http://192.168.2.110:11434'

##OPENAI_API_BASE_URL='127.0.0.1:8099/v1'
export AUDIO_TTS_OPENAI_API_BASE_URL='http://127.0.0.1:8099/v1'
export AUDIO_STT_OPENAI_API_BASE_URL='http://127.0.0.1:8099/v1'
export OPENAI_API_KEY='xxxxx'
export AUDIO_STT_ENGINE='openai'
export AUDIO_STT_OPENAI_API_KEY='xxxxxx'
export AUDIO_TTS_ENGINE='openai'
export AUDIO_TTS_OPENAI_API_KEY='xxxxxx'
export WHISPER_MODEL=large-v3
export WHISPER_MODEL_DIR=/mnt/p/Models/Whisper
export HOST=127.0.0.1
export PORT=8100
export TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1
# DO NOT TRACK
export SCARF_NO_ANALYTICS=true
export DO_NOT_TRACK=true
export ANONYMIZED_TELEMETRY=false

cd ~/open-webui
git pull

# Building Frontend Using Node
nvm use 21
npm install
npm run build

. ~/ComfyUI/.venv/bin/activate

cd ./backend

# Install dependencies
#pip install -r requirements.txt -U

# Start the application
bash start.sh

#./backend/start.sh
