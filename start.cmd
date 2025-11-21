@echo off
TITLE Tigin server software for Minecraft: Bedrock Edition
cd /d %~dp0

set PHP_BINARY=

where /q php.exe
if %ERRORLEVEL%==0 (
	set PHP_BINARY=php
)

if exist bin\php\php.exe (
	set PHPRC=""
	set PHP_BINARY=bin\php\php.exe
)

if "%PHP_BINARY%"=="" (
	echo Couldn't find a PHP binary in system PATH or "%~dp0bin\php"
	echo Please refer to the installation instructions at https://docs.tigin.org/installation
	pause
	exit 1
)

if exist Tigin.phar (
	set TIGIN_FILE=Tigin.phar
) else (
	echo Tigin.phar not found
	echo Downloads can be found at https://github.com/TiginProject/Tigin/releases
	pause
	exit 1
)

%PHP_BINARY% %TIGIN_FILE% %* || pause