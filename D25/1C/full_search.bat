@echo off 
G:\CodeBlocks\MinGW\bin\g++.exe %~n0.cpp -o %~n0.exe
for %%a in (tests\*.a) do (
  %~n0.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del %~n0.exe 

