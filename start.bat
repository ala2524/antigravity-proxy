@echo off
setlocal

cd /d "%~dp0"

echo ==========================================================
echo  Antigravity Proxy Baslatici
echo ==========================================================

if not exist ".env" (
    echo [+] .env dosyasi bulunamadi, .env.example kopyalaniyor...
    copy .env.example .env >nul
)

if not exist "node_modules" (
    echo [+] Ilk calistirma: npm bagimliliklari yukleniyor...
    call npm install
)

echo [+] Antigravity Proxy baslatiliyor...
echo [i] Yonetim Paneli: http://localhost:8088
echo [i] Durdurmak icin Ctrl + C tuslarina basin.
echo ==========================================================
echo.

node scripts/start.mjs

pause
