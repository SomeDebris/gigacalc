% function [Lab2AvgAirData,Lab2TmpData,InletPressAll,AmbPressPsi,AmbTmp] = Ae303Lab2Data

G1Data = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','b7:e41');

G1AmbTmp = 73.8 ; %Group 1, Pressure in inHg, for all is 29.59, Tmp in F
G1Data0in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','b7:e41');
G1Tmp(1) = 73.6; %G1TmpD0
G1Data2in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','f7:i41');
G1Tmp(2) = 73.8; %G1TmpD2
G1Data7in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','j7:m41');
G1Tmp(3) = 76.8; %G1TmpD7

G1Data(:,:,1) = G1Data0in;
G1Data(:,:,2) = G1Data2in;
G1Data(:,:,3) = G1Data7in;

G2AmbTmp = 74.4 ; %Group 2
G2Data0in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','b7:e41');
G2Tmp(1) = 74; %G2TmpD0
G2Data2in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','f7:i41');
G2Tmp(2) = 74.1; %G2TmpD2
G2Data7in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','j7:m41');
G2Tmp(3) = 77.1; %G2TmpD7

G2Data(:,:,1) = G2Data0in;
G2Data(:,:,2) = G2Data2in;
G2Data(:,:,3) = G2Data7in;

G3AmbTmp = 74.6 ;%Group 3
G3Data0in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','b7:e41');
G3Tmp(1) = 74.3; %G3TmpD0
G3Data2in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','f7:i41');
G3Tmp(2) = 74.3; %G3TmpD2
G3Data7in = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','j7:m41');
G3Tmp(3) = 78.2; %G3TmpD7

G3Data(:,:,1) = G3Data0in;
G3Data(:,:,2) = G3Data2in;
G3Data(:,:,3) = G3Data7in;

%Airspeed data in 37x4x3x3 4D Matrix, Sensor,Sample,Group,WaterHeight
Lab2AirDataS(:,:,:,1) = G1Data;
Lab2AirDataS(:,:,:,2) = G2Data;
Lab2AirDataS(:,:,:,3) = G3Data;
%Temp Speed in 3x3 2D Matrix, Group across, WaterHeight down
Lab2TmpData = [G1Tmp; G2Tmp; G3Tmp];
%Ambient Temperature in 1x3 Matrix
AmbTmp(1) = G1AmbTmp;
AmbTmp(2) = G2AmbTmp;
AmbTmp(3) = G3AmbTmp;

%Ambient Pressure in 1x1 Matrix, HAve to Correct, use Bilinear interp like
%last lab, T1 = AmbTmp(1), T2 = AmbTmp(2), T3 = AmbTmp(3)
AmbPress = 29.59;

InletPressG1a = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','B5:E6');
InletPressG1b = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','F5:I6');
InletPressG1c = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',2,'Range','J5:M6');

InletPressG2a = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','B5:E6');
InletPressG2b = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','F5:I6');
InletPressG2c = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',3,'Range','J5:M6');

InletPressG3a = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','B5:E6');
InletPressG3b = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','F5:I6');
InletPressG3c = readmatrix("C:\Users\mgaes\OneDrive\Documents\Ae303Lab\Ae303Lab2Data.xlsx",'Sheet',4,'Range','J5:M6');

G1DataA(:,:,1) = InletPressG1a;
G1DataA(:,:,2) = InletPressG1b;
G1DataA(:,:,3) = InletPressG1c;

G2DataA(:,:,1) = InletPressG2a;
G2DataA(:,:,2) = InletPressG2b;
G2DataA(:,:,3) = InletPressG2c;

G3DataA(:,:,1) = InletPressG3a;
G3DataA(:,:,2) = InletPressG3b;
G3DataA(:,:,3) = InletPressG3c;

InletPressAllS(:,:,:,1) = G1DataA;
InletPressAllS(:,:,:,2) = G2DataA;
InletPressAllS(:,:,:,3) = G3DataA;

for n = 1:35
    for j = 1:3
        for k = 1:3

            Lab2AvgAirData(n,j,k) = mean(Lab2AirDataS(n,:,j,k));
            InletPressAll(1,j,k) = mean(InletPressAllS(1,:,j,k));
            InletPressAll(2,j,k) = mean(InletPressAllS(2,:,j,k));
            
        end
    end
end

%Avg has 35x3x3,    Runs x WaterHeight x Group
%Lab2AvgAirDatainHg = Lab2AvgAirData*2.03602; in case

%All measurements have the same Latitude
%Lat Correction
Xl = [29 30];
Yl = [32 34];

Vl = [0.035 0.036 ; 0.030 0.031];

Xql = AmbPress;
Yql = 32.7157;

LatCorrect = interp2(Xl,Yl,Vl,Xql,Yql);

%For Group 1
%Temp Correction
XTa = [29 30];
YTa = [72 74];

VTa = [0.114 0.118 ; 0.119 0.123];

XqTa = AmbPress;
YqTa = AmbTmp(1);

TempCorrectG1 = interp2(XTa,YTa,VTa,XqTa,YqTa);

%For Group 2
%Temp Correction
XT1a = [29 30];
YT1a = [74 76];

VT1a = [0.119 0.123 ; 0.124 0.128];

XqT1a = AmbPress;
YqT1a = AmbTmp(2);

TempCorrectG2 = interp2(XT1a,YT1a,VT1a,XqT1a,YqT1a);

%For Group 3
%Temp Correction
XT2a = [29 30];
YT2a = [74 76];

VT2a = [0.119 0.123 ; 0.124 0.128];

XqT2a = AmbPress;
YqT2a = AmbTmp(3);

TempCorrectG3 = interp2(XT2a,YT2a,VT2a,XqT2a,YqT2a);

AmbPressCorr(1) = AmbPress - LatCorrect - TempCorrectG1;
AmbPressCorr(2) = AmbPress - LatCorrect - TempCorrectG2;
AmbPressCorr(3) = AmbPress - LatCorrect - TempCorrectG3;

AmbPressPsi = AmbPressCorr * 0.491154;

