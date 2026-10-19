<#
.SYNOPSIS
    Antigravity Proxy'yi PowerShell ile tek tıkla başlatır.
#>

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Antigravity Proxy Başlatıcı" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

if (-not (Test-Path ".env")) {
    Write-Host "[+] .env dosyası bulunamadı, .env.example kopyalanıyor..." -ForegroundColor Yellow
    Copy-Item ".env.example" ".env"
}

if (-not (Test-Path "node_modules")) {
    Write-Host "[+] İlk çalıştırma: npm bağımlılıkları yükleniyor..." -ForegroundColor Yellow
    npm install
}

Write-Host "[+] Antigravity Proxy başlatılıyor..." -ForegroundColor Green
Write-Host "[i] Yönetim Paneli: http://localhost:8088" -ForegroundColor Cyan
Write-Host "[i] Durdurmak için Ctrl + C tuşlarına basın." -ForegroundColor Gray
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

node scripts/start.mjs
