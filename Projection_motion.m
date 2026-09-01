%Data you need to put here
v= 'number1'  %[output:7373933e]
teta = 'number2'  %[output:9d54a021]
%%
%[text] Constant number
g = 9.81 ;
%%
%[text] Formula
Vy = v*sind(teta) % Max speed y axis %[output:4cf7522e]
Vx = v*cosd(teta) % Max speed x axis %[output:3c88d09b]
t = Vy/g;
Tmax= 2*t ;
Hmax= Vy*t-1/2*g*t^2 ;
Rmax = Vx*Tmax ;
fprintf("Max height for time is %5.3f", t) %[output:7f7be460]
fprintf("Max flying time is %4.2f", Tmax) %[output:03dd33fc]
fprintf("Max height is %7.5f",Hmax) %[output:8cdb1fc2]
fprintf("Max length is %9f", Rmax) %[output:1e55ef62]
%%
time =linspace(0,Tmax,200) ;
x= Vx*time;
y= Vy*time-1/2*g*time.*time;

plot(x, y); %[output:1af43021]
xlabel('Length (m)'); %[output:1af43021]
ylabel('Height (m)'); %[output:1af43021]
title('Flight time'); %[output:1af43021]
grid on; %[output:1af43021]
yline(Hmax) %[output:1af43021]
