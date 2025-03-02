# Windows Workstation Setup

Este script automatiza a configuração do ambiente de desenvolvimento no Windows usando o **PowerShell** e o **Winget**.

## 📌 Pré-requisitos

Antes de executar o script, certifique-se de:
1. **Executar o PowerShell como Administrador**.
2. **Habilitar a execução de scripts PowerShell**.

## 🚀 Como Executar o Script

### 1️⃣ Habilitar a Execução de Scripts
Por padrão, o Windows bloqueia a execução de scripts PowerShell. Para permitir:

1. **Abra o PowerShell como Administrador**:
   - No menu Iniciar, digite `PowerShell`.
   - Clique com o botão direito em **Windows PowerShell**.
   - Selecione **Executar como administrador**.

2. **Digite o seguinte comando** e pressione **Enter**:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
   - Se for solicitado, digite `S` e pressione **Enter**.

### 2️⃣ Executar o Script
1. **Navegue até a pasta onde o script está salvo**:
   ```powershell
   cd C:\caminho\para\o\script
   ```
2. **Execute o script**:
   ```powershell
   ./windows-workstation-setup.ps1
   ```

### 3️⃣ (Opcional) Reverter a Configuração de Execução de Scripts
Se quiser desativar a execução de scripts após rodar o setup, use:
   ```powershell
   Set-ExecutionPolicy Restricted -Scope CurrentUser
   ```

## 📦 Programas Instalados
O script instala os seguintes programas:
- **Desenvolvimento**
  - .NET SDK 8
  - Visual Studio 2022 Community
  - SQL Server Management Studio (SSMS)
  - DBeaver
  - Git
  - Docker Desktop
  - Node.js LTS
- **Editores de Texto**
  - Notepad++
  - VS Code
- **Ferramentas de Teste e APIs**
  - Postman
- **Comunicação**
  - Slack
  - Discord
- **Navegador**
  - Google Chrome

## 🎯 Considerações Finais
- O script **não remove nenhum programa existente**, apenas instala os listados.
- Caso precise adicionar ou remover pacotes, edite o arquivo **windows-workstation-setup.ps1**.

💡 **Dúvidas ou sugestões? Fique à vontade para modificar e personalizar conforme sua necessidade!** 🚀

