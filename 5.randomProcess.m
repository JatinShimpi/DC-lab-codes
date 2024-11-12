%Case 1:
m = 0;
sd = 1;
x = -6:0.1:6;
y = normpdf(x, m, sd);
figure(1)
subplot(2, 3, 1);
plot(x, y);
axis([-6 6 0 0.5]);
title('CASE-1, mean=0, sd=1');
xlabel('x values --->');
ylabel('pdf --->'); 
grid on;

%Case 2:
m = -1;
sd = 1;
x = -6:0.1:6;
y = normpdf(x, m, sd);
figure(1)
subplot(2, 3, 2);
plot(x, y);
axis([-6 6 0 0.5]);
title('CASE-2, mean=-1, sd=1');
xlabel('x values --->');
ylabel('pdf --->'); 
grid on;


%Case 3:
m = 1;
sd = 1;
x = -6:0.1:6;
y = normpdf(x, m, sd);
figure(1)
subplot(2, 3, 3);
plot(x, y);
axis([-6 6 0 0.5]);
title('CASE-3, mean=1, sd=1');
xlabel('x values --->');
ylabel('pdf --->'); 
grid on;
