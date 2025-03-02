# Elevar privilégios para execução do script
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Este script precisa ser executado como Administrador. Reiniciando como Admin..."
    Start-Process powershell -ArgumentList "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Atualizando Winget
winget upgrade --all

# Instalando ferramentas de desenvolvimento
winget install --id Microsoft.DotNet.SDK.8 -e
winget install --id Microsoft.VisualStudio.2022.Community -e
winget install --id Microsoft.SQLServerManagementStudio -e
winget install --id DBeaver.DBeaver -e
winget install --id Git.Git -e
winget install --id Docker.DockerDesktop -e

# Instalando Node.js
winget install --id OpenJS.NodeJS.LTS -e

# Instalando editores de texto
winget install --id Notepad++.Notepad++ -e
winget install --id Microsoft.VisualStudioCode -e

# Instalando ferramentas de testes e APIs
winget install --id Postman.Postman -e

# Instalando comunicação
winget install --id SlackTechnologies.Slack -e
winget install --id Discord.Discord -e

# Instalando navegador
winget install --id Google.Chrome -e

# Limpeza final
Write-Host "Finalizando instalação e limpeza do sistema..."
winget upgrade --all
Write-Host "Configuração concluída! 🚀"
