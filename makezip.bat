@echo off
setlocal

set /p VERSION=<VERSION

set OUTDIR=.\out
set ZIPFILE=%OUTDIR%\release-%VERSION%.zip

if exist %ZIPFILE% del %ZIPFILE%

mkdir %OUTDIR%
tar -a -c -f %ZIPFILE% *.html

echo 完了: %ZIPFILE% を作成しました
