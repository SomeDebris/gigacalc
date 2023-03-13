%% Problem 8

x = linspace(-3,3,20)

figure
subplot(3,2,1);
plot(x, cos(x), ':r')

subplot(3,2,2);
plot(x, cos(x), 'g')

subplot(3,2,3);
plot(x, cos(x), 'ok')

subplot(3,2,4);
plot(x, cos(x), 'bpentagram')

subplot(3,2,5);
plot(x, cos(x), '<m')

subplot(3,2,6);
plot(x, cos(x), 'c--')
