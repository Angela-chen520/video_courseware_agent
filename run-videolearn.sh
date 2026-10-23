#!/usr/bin/env bash
# ==============================================================================
# VideoLearn AI — 一鍵快速啟動腳本 (Quick Start Launcher)
# 自動切換至專案目錄、偵測執行環境 (uv / .venv / python3)，並啟動 FastAPI 伺服器
# ==============================================================================
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PORT="${PORT:-8001}"
export PYTHONPATH="$(dirname "$SCRIPT_DIR"):$SCRIPT_DIR:${PYTHONPATH:-}"

echo "=================================================================="
echo "  🎓 VideoLearn AI — 影片智慧教材生成與資安防護系統 (v2.0.4)"
echo "  ⚖️ 學術合理使用聲明：一切資源作學術研討幫助學習者學習，不提供商業用、或搬運影片用"
echo "  🌐 服務啟動位址：http://localhost:${PORT}"
echo "=================================================================="

if command -v uv >/dev/null 2>&1; then
    exec uv run python web_server.py
elif [ -x "/home/angela/.gemini/antigravity/uv_pkg/bin/uv" ]; then
    exec /home/angela/.gemini/antigravity/uv_pkg/bin/uv run python web_server.py
elif [ -x "$SCRIPT_DIR/.venv/bin/python" ]; then
    exec "$SCRIPT_DIR/.venv/bin/python" web_server.py
else
    exec python3 web_server.py
fi
