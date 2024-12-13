@echo off
echo Starting CARLAUE4 in mid quality...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor
start CarlaUE4.exe 

echo Waiting for 30 seconds before connecting to Zephyr biometric belt...
timeout /t 30 >nul

echo Connecting to Zephyr biometric belt...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor\CBSvC-main\src\zephyr
run.cmd

echo Waiting for 30 seconds before starting the traffic generation script...
timeout /t 30 >nul

echo Starting traffic generation script in a new window...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor\PythonAPI\examples
start cmd /k python generate_traffic.py

echo Waiting for 10 seconds before starting the manual control script...
timeout /t 10 >nul

echo Starting manual control with TestRun parameters in a new window...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor\CBSvC-main
start cmd /k python -m src.driving.manual_control --name "TestRun"

echo All tasks completed!
pause
