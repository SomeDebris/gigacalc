Ae303Lab2ActualCalcs

x = [-19.5, -16.5,-13.5,-10.5, -7.5 ,-4.5, 0,1.5,4.5,7.5,10.5, 13.5,16.5,19.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5]';
z = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13.5, 10.5, 7.5 ,4.5, 1.5, -1.5, -4.5,-7.5, -10.5, -13.5, 13.5, 10.5, 7.5, 4.5, 1.5, -1.5, -4.5, -7.5, -10.5, -13.5]';

k = (1:35);

figure(1)
plot(k,G1Airdata,'o')
title('Lab Raw Data')
ylabel('pressure (psi)')
xlabel('pressure port')
hold on
yline(AirDataAvg(1))
yline(AirDataAvg(2))
yline(AirDataAvg(3))
legend('0in H2O','2in H2O','7in H2O','average')
hold off

figure(2)
plot(k,qMeasured,'o')
title('True Dynamic Pressure')
ylabel('pressure (psi)')
xlabel('pressure port')
hold on
yline(qMeasuredAvg(1))
yline(qMeasuredAvg(2))
yline(qMeasuredAvg(3))

yline(qInlet(1),'g')
yline(qInlet(2),'g')
yline(qInlet(3),'g')
legend('0in H2O','2in H2O','7in H2O','average','','','inlet')
hold off

figure(3)
plot(k,VMeasured,'o')
title('Port Velocity')
ylabel('airspeed (m/s)')
xlabel('pressure port')
hold on
yline(VMeasuredAvg(1))
yline(VMeasuredAvg(2))
yline(VMeasuredAvg(3))

yline(VInlet(1),'g')
yline(VInlet(2),'g')
yline(VInlet(3),'g')
legend('0in H2O','2in H2O','7in H2O','average','','','inlet')
hold off

%Calcs for Deviation
arb1 = (qMeasured(:,2) - qMeasuredAvg(2)) ./ qMeasuredAvg(2) * 100;
arb2 = (qMeasured(:,3) - qMeasuredAvg(3)) ./ qMeasuredAvg(3) * 100;
arb3 = (VMeasured(:,2) - VMeasuredAvg(2)) ./ VMeasuredAvg(2) * 100;
arb4 = (VMeasured(:,3) - VMeasuredAvg(3)) ./ VMeasuredAvg(3) * 100;

arb1(7) = NaN;
arb2(7) = NaN;
arb3(7) = NaN;
arb4(7) = NaN;

figure(4)
plot(k,arb1,'ob')
title('Flow Variation - Dynamic Pressure Deviation From Average')
ylabel('(q -qAvg) /qAvg (%)')
xlabel('Pressure Port')
hold on
plot(k,arb2,'sk')
legend('2.0 inH2O','7.0 inH2O')
hold off

figure(10)
plot(k,arb1,'ob')
title('Flow Variation - Dynamic Pressure Deviation From Average (2.0in H2O)')
ylabel('(q -qAvg) /qAvg (%)')
xlabel('Pressure Port')
hold on
legend('2.0 inH2O')
hold off

figure(11)
plot(k,arb2,'sk')
title('Flow Variation - Dynamic Pressure Deviation From Average (7.0in H2O)')
ylabel('(q -qAvg) /qAvg (%)')
xlabel('Pressure Port')
hold on
legend('7.0 inH2O')
hold off

figure(5)
plot(k,arb3,'ob')
title('Flow Variation - Airspeed Deviation From Average')
ylabel('(v -vAvg) /vAvg (%)')
xlabel('Pressure Port')
hold on
plot(k,arb4,'sk')
legend('2.0 inH2O','7.0 inH2O')
hold off

figure(12)
plot(k,arb3,'ob')
title('Flow Variation - Airspeed Deviation From Average (2.0in H2O)')
ylabel('(v -vAvg) /vAvg (%)')
xlabel('Pressure Port')
hold on
legend('2.0 inH2O')
hold off

figure(13)
plot(k,arb4,'sk')
title('Flow Variation - Airspeed Deviation From Average (7.0in H2O)')
ylabel('(v -vAvg) /vAvg (%)')
xlabel('Pressure Port')
hold on
legend('7.0 inH2O')
hold off

arb1(7) = [];
arb2(7) = [];
arb3(7) = [];
arb4(7) = [];

figure(6)
dq = arb1;
F = scatteredInterpolant(x,z,dq,'linear','none');
[X,Z] = meshgrid(linspace(min(x),max(x)), linspace(min(z),max(z)));
Dq = F(X,Z);
contourf(X,Z,Dq);
y = colorbar;
y.Label.String = '(q-qAvg) /qAvg (%)';
title('Dynamic Pressure Deviation From Average (q=2.0 inH2O)')
ylabel('z position (in)')
xlabel('x position (in)')
hold on
plot(x,z,'or')
hold off

figure(7)
dq1 = arb2;
F1 = scatteredInterpolant(x,z,dq1,'linear','none');
[X1,Z1] = meshgrid(linspace(min(x),max(x)), linspace(min(z),max(z)));
Dq1 = F1(X1,Z1);
contourf(X1,Z1,Dq1);
y = colorbar;
y.Label.String = '(q-qAvg) /qAvg (%)';
title('Dynamic Pressure Deviation From Average (q=7.0 inH2O)')
ylabel('z position (in)')
xlabel('x position (in)')
hold on
plot(x,z,'or')
hold off

figure(8)
dq2 = arb3+29.7991;
F2 = scatteredInterpolant(x,z,dq2,'linear','none');
[X2,Z2] = meshgrid(linspace(min(x),max(x)), linspace(min(z),max(z)));
Dq2 = F2(X2,Z2);
contourf(X2,Z2,Dq2);
y = colorbar;
y.Label.String = 'Measured Airspeed [m/s]';
title('Airspeed distribution - IAS = 30.10')
ylabel('z position (in)')
xlabel('x position (in)')
hold on
plot(x,z,'or')
hold off

figure(9)
dq3 = arb4+56.6462;
F3 = scatteredInterpolant(x,z,dq3,'linear','none');
[X3,Z3] = meshgrid(linspace(min(x),max(x)), linspace(min(z),max(z)));
Dq3 = F3(X3,Z3);
contourf(X3,Z3,Dq3);
y = colorbar;
y.Label.String = 'Measured Airspeed [m/s]';
title('Airspeed distribution - IAS = 56.06')
ylabel('z position (in)')
xlabel('x position (in)')
hold on
plot(x,z,'or')
hold off