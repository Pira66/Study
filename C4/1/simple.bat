@echo off
fpc simple.lpr > NUL
for %%a in (tests\*.a) do (
  simple.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple.exe