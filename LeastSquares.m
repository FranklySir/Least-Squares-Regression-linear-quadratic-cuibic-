t = [-2 -1 0 2 3];
x = [12 11 8 5 -3];
plot(t,x,'*','DisplayName','Data Points')
hold on
P1t = 7.697674419 - 2.744186047*(t);
plot(t,P1t,'DisplayName','Linear Regression')
hold on
P2t = 9.376623377 - 2.163961039*t -0.5308441558*(t.^2);
plot(t,P2t,'DisplayName','Quadratic Regression')
hold on;
P3t=9.050420168-0.764005602*(t)-0.163865546*(t.^2)-0.299019607*(t.^3);
plot(t,P3t,'DisplayName','Cubic Regression');
hold off
legend
disp(abs(x-P1t));
disp(abs(x-P2t));
disp(abs(x-P3t));
format long
T=[1 -2 4 -8; 1 -1 1 -1; 1 0 0 0; 1 2 4 8; 1 3 9 27];
Tt=(T')*(x');
disp(Tt);
A=(T'*T)\Tt;

disp(A);
