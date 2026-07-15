# ========================================================
# PROYECTO GÉNESIS - INSTALADOR PARA WINDOWS POWERSHELL
# CÓDIGO: PANDA (REPLICA DE ENTORNO TERMUX)
# ========================================================

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "[PANDA] Iniciando lectura de volcado Termux en Windows..." -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# 1. Comprobar si chocolatey (gestor de paquetes de Windows) está instalado
if (Get-Command choco -ErrorAction SilentlyContinue) {
    Write-Host "[+] Gestor Chocolatey detectado." -ForegroundColor Green
} else {
    Write-Host "[-] Chocolatey no instalado. Instalando para replicar paquetes..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# 2. Leer la lista de paquetes que mandaste desde Termux
if (Test-Path "paquetes_instalados.txt") {
    Write-Host "[+] Cargando archivo de volcado de memoria de paquetes..." -ForegroundColor Green
    $paquetes = Get-Content paquetes_instalados.txt
    
    # Aquí Windows buscará herramientas comunes que tenías en Termux (como git, gh, node) y las instalará en tu PC
    Write-Host "[*] Instalando herramientas base en Windows..." -ForegroundColor Cyan
    choco install git gh nodejs-lts -y
} else {
    Write-Host "[!] No se encontró el volcado de paquetes_instalados.txt" -ForegroundColor Red
}

Write-Host "[PANDA] Sincronización de entorno completada con éxito." -ForegroundColor Green

