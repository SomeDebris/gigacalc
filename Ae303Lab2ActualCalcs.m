clear,clc
[G1Airdata,G1Tempdata,G1AmbTmp,G1AmbPress,G1InletPress] = Ae303Lab2Group1Calcs;

G1Airdata(:,2) = G1Airdata(:,2) - G1Airdata(:,1);
G1Airdata(:,3) = G1Airdata(:,3) - G1Airdata(:,1);

qInlet = G1InletPress(2) - G1InletPress(1);

for j = 1:3

    %Number j is water level
    StaticPress(j) = G1Airdata(7,j);
    
end

for j = 1:3
    for n = 1:35

        qMeasured(n,j) = G1Airdata(n,j) - StaticPress(j);

        qInlet(j) = G1InletPress(2,j) - G1InletPress(1,j);

    end
end

qTotal = G1AmbPress - qInlet;

qTotalCoolUnits = qTotal .* 6894.76;

qMeasuredCoolUnits = qMeasured .* 6894.76;

qInletCoolUnits = qInlet .* 6894.76;

%TempRank = G1Tempdata + 459.67;

TempKelv = ((G1Tempdata - 32) .* 5./9) +273.15;

%RDumb = 1717; %https://www.engineeringtoolbox.com/individual-universal-gas-constant-d_588.html
RCoolUnits = 287;

%Dens = qTotal ./ (RDumb.*TempRank);

Dens = qTotalCoolUnits ./ (RCoolUnits.*TempKelv);

VInlet = sqrt((2 .* abs(qInletCoolUnits))./Dens);

VMeasured = sqrt((2 .* abs(qMeasuredCoolUnits))./Dens);

%Average, Standard Deviation, and graphs
G1AirdataForAvg = G1Airdata;    %psi
G1AirdataForAvg(7,:) = [];      %psi
qMeasuredForAvg = qMeasured;    %Psi
qMeasuredForAvg(7,:) = [];      %Psi
VMeasuredForAvg = VMeasured;    %m/s
VMeasuredForAvg(7,:) = [];      %m/s
%random names for calcs
t95 = 2.032;
Std1 = std(G1AirdataForAvg);
Std2 = std(qMeasuredForAvg);
Std3 = std(VMeasuredForAvg);

CI95RawData = t95 * Std1 / sqrt(34);
CI95qMeasured = t95 * Std2 / sqrt(34);
CI95VMeasured = t95 * Std3 / sqrt(34);
CI95VMeasuredOTS = t95 * Std3;

%Since dynamic viscosity is temperature dependant, 73.6, 73.8, 76.8
mu(1) = 18.28 * 10^-6;
mu(2) = 18.28 * 10^-6;
mu(3) = 18.36 * 10^-6;

for n = 1:3

    AirDataAvg(n) = mean(G1AirdataForAvg(:,n));

    qMeasuredAvg(n) = mean(qMeasuredForAvg(:,n));

    VMeasuredAvg(n) = mean(VMeasuredForAvg(:,n));
    %Unit Reynolds number for each mean q
    Reynolds(n)  = (Dens(n).*VMeasuredAvg(n))./mu(n);

end
