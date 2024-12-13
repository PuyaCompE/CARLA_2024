@echo off
echo Starting CARLAUE4 in low quality...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor
start CarlaUE4.exe -quality-level=Low

echo Waiting for 30 seconds before starting the next script...
timeout /t 30 >nul

echo Starting traffic generation script in a new window...
cd C:\WS\CARLA_0.9.13\WindowsNoEditor\PythonAPI\examples
start cmd /k C:\Python\Python37\python.exe generate_traffic.py

echo Waiting for 10 seconds before starting the manual control script...
timeout /t 10 >nul

echo Starting manual control with steering wheel in a new window...
start cmd /k C:\Python\Python37\python.exe manual_control_steeringwheel.py

echo Waiting for 10 seconds to ensure smooth completion...
timeout /t 10 >nul

echo All tasks completed!
pause
