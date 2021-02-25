@echo off
fpc simple1.lpr > NUL
for %%a in (tests\*.a) do (
  simple1.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple1.exe