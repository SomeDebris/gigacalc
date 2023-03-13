function [G1Airdata,G1Tempdata,G1AmbTmp,G1AmbPress,G1InletPress] = Ae303Lab2Group1Calcs

[Lab2AirData,Lab2TmpData,InletPressAll,AmbPressPsi,AmbTmp] = Ae303Lab2Data;
%Airspeed data in 35x3x3 4D Matrix, Sensor,Group,WaterHeight
%Temperature data in 3x3 2D Matrix, Group across, WaterHeight down
%Ambient Pressure in 1x3 Matrix, Group1 = AmbPressPsi(1)(1)
%Ambient Temperature in 1x3 Matrix, Group1 = AmbTmp(1), etc
%Inlet Pressure 2x3x3, Ports [(1) static (2) total], Water Height, Group

%Group 1 can create for loops to do all if needed
G1Airdata = Lab2AirData(:,:,1);
G1Tempdata = Lab2TmpData(1,:);
G1AmbTmp = AmbTmp(1);
G1AmbPress = AmbPressPsi(1);
G1InletPress = InletPressAll(:,:,1);

end