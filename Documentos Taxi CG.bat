@echo off
title SITES PARA RECADASTAMENTO TAXI STTP CAMPINA GRANDE - v5.3
color 0A

:menu_principal
cls
echo ============================================
echo  FEITO POR LESSANDRO WHATSAPP (83)98887 6487

echo.********************************************
echo              MENU PRINCIPAL    
echo.********************************************
echo.
echo 1. Certidoes Criminais e Eleitorais
echo 2. Renovacao de Emplacamento de Taxi
echo 0. Sair
echo.
set /p opcao="Escolha uma opcao (0-2): "

if "%opcao%"=="1" goto menu_certidoes
if "%opcao%"=="2" goto menu_taxi
if "%opcao%"=="0" exit

echo Opcao invalida! Pressione qualquer tecla para tentar novamente.
pause >nul
goto menu_principal

:menu_certidoes
cls
echo ============================================
echo       CERTIDOES CRIMINAIS E ELEITORAIS      
echo ============================================
echo.
echo 1. Abrir TODOS os sites
echo 2. TSE (Certidao Eleitoral)
echo 3. STM (Certidao Militar)
echo 4. TJPB (Certidao Estadual)
echo 5. CJF (Certidao Federal)
echo 6. Voltar ao Menu Principal

echo.
set /p opcao="Escolha uma opcao (1-6): "

if "%opcao%"=="1" goto todos_certidoes
if "%opcao%"=="2" goto tse
if "%opcao%"=="3" goto stm
if "%opcao%"=="4" goto tjpb
if "%opcao%"=="5" goto cjf
if "%opcao%"=="6" goto menu_principal


echo Opcao invalida! Pressione qualquer tecla para tentar novamente.
pause >nul
goto menu_certidoes

:menu_taxi
cls
echo ============================================
echo      RENOVACAO DE EMPLACAMENTO DE TAXI      
echo ============================================
echo.
echo 1. Abrir TODOS os sites de Taxi
echo 2. Prefeitura de Campina Grande (1Doc)
echo 3. INSS (Declaracao de Beneficiario)
echo 4. SEFAZ-PB (Certidao de Debitos)
echo 5. Voltar ao Menu Principal

echo.
set /p opcao="Escolha uma opcao (1-5): "

if "%opcao%"=="2" goto 1doc
if "%opcao%"=="3" goto inss
if "%opcao%"=="4" goto cnd
if "%opcao%"=="1" goto todos_taxi
if "%opcao%"=="5" goto menu_principal


echo Opcao invalida! Pressione qualquer tecla para tentar novamente.
pause >nul
goto menu_taxi

:todos_certidoes
echo Abrindo todos os sites de certidoes...
start "" "https://www.tse.jus.br/servicos-eleitorais/autoatendimento-eleitoral#/certidoes-eleitor"
timeout /t 1 >nul
start "" "https://www.stm.jus.br/servicos-stm/certidao-negativa/emitir-certidao-negativa"
timeout /t 1 >nul
start "" "https://app.tjpb.jus.br/certo/paginas/publico/areaPublica.jsf"
timeout /t 1 >nul
start "" "https://www.cjf.jus.br/cjf/certidao-negativa"
echo Todos os sites foram abertos!
echo Pressione qualquer tecla para selecionar outra opcao.
pause >nul
goto menu_certidoes

:todos_taxi
echo Abrindo todos os sites de Taxi...
start "" "https://campinagrande.1doc.com.br/atendimento"
timeout /t 1 >nul
start "" "https://meu.inss.gov.br/central/index.html#/nada-consta"
timeout /t 1 >nul
start "" "https://www.sefaz.pb.gov.br/servirtual/certidoes/emissao-de-certidao-de-debitos-cidadao"
echo Todos os sites de Taxi foram abertos!
echo Pressione qualquer tecla para selecionar outra opcao.
pause >nul
goto menu_taxi

:tse
start "" "https://www.tse.jus.br/servicos-eleitorais/autoatendimento-eleitoral#/certidoes-eleitor"
echo Site do TSE aberto!
goto menu_certidoes

:stm
start "" "https://www.stm.jus.br/servicos-stm/certidao-negativa/emitir-certidao-negativa"
echo Site do STM aberto!
goto menu_certidoes

:tjpb
start "" "https://app.tjpb.jus.br/certo/paginas/publico/areaPublica.jsf"
echo Site do TJPB aberto!
goto menu_certidoes

:cjf
start "" "https://www.cjf.jus.br/cjf/certidao-negativa"
echo Site do CJF aberto!
goto menu_certidoes

:inss
start "" "https://meu.inss.gov.br/central/index.html#/nada-consta"
echo Site do INSS aberto!
goto menu_taxi

:cnd
start "" "https://www.sefaz.pb.gov.br/servirtual/certidoes/emissao-de-certidao-de-debitos-cidadao"
echo Site do SEFAZ aberto!
goto menu_taxi

:1doc
start "" "https://campinagrande.1doc.com.br/atendimento"
echo Site do Campina Grande 1Doc aberto!
goto menu_taxi