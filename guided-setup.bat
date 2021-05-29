@echo off
title Guided XLArig setup

REM Delete the file "start-miner.cmd" if it already exists
IF EXIST "start-miner.cmd" DEL "start-miner.cmd" /s
set
cls

REM Variables
echo Paste your preferred pool address. 
echo Unsure? You can find a list of pools here: https://miningpoolstats.stream/scala
echo Example: mine.scalaproject.io:5555 
echo.
set /P pool="Pool: "
cls
echo Set a donate level, default is 5
echo.
set /P donate-level="Donate level (1-10): "
cls
echo Username for mining server (this is usually your XLA wallet address) 
echo An example: Ssy2L9U75D2JomhUToLSNQhybW4fDyJCVgaH95UTvRWNEX7UAYdpVrjfbqZuXqj4r3TgSnoiq7mDVRq72BmJtVP93TcAR9oeHJ
echo.
set /P wallet="Paste in your wallet address: "
cls
echo Password for mining server. This is your worker name.
echo An example: Mypc01
echo.
set /P worker="Worker name: "
@echo cd %%~dp0% > "start-miner.cmd"
@echo xlarig.exe -o %pool% -p %worker% -u %wallet% --donate-level %donate-level% -a panthera -k >> "start-miner.cmd"
@echo pause >> "start-miner.cmd"
cls
echo Run the newly created file "start-miner.cmd" as an administrator. 
echo.
echo Happy mining!
echo.
pause