<!-- When you apply this bat file you have to set up your restarts through task scheduler. Its a simple process-->
<!--Win key>task scheduler>Create Basic Task>name your restart>daily>what ever time you want and how long you wantt until task no longer happen happen>start a program>browse for bat>finish-->
<!--Repeat as needed-->
<!--https://www.youtube.com/watch?v=yf0y2FDKqls-->

@echo off
:start
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Server name
set serverName=Wolfpack RP
::Server files location
set serverLocation="C:\DayZServer_x64"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=4
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "c:\DayZServer\DayZServer_x64.exe" -config=%serverConfig% -port=2302 -profiles=Profilesfolder "-mod=@Survivor Animations;@Stack bullets to 1000;@Server_Information_Panel;@MuchFramework;@MRTsMREs;@KillReward;@InventoryPlusPlus;@GoreZ;@Dabs Framework;@CF" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
