@echo off
echo Starting CARLAUE4 in mid quality...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor
start CarlaUE4.exe

echo Waiting for 30 seconds before starting the next script...
timeout /t 30 >nul

echo Starting traffic generation script in a new window...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor\PythonAPI\examples
start cmd /k C:\Python\Python37\python.exe generate_traffic.py

echo Waiting for 20 seconds before starting the manual control script...
timeout /t 20 >nul

echo Starting manual control with steering wheel in a new window...
start cmd /k C:\Python\Python37\python.exe manual_control_steeringwheel_3screen.py

echo Waiting for 20 seconds to ensure smooth completion...
timeout /t 20 >nul

echo All tasks completed!
pause
