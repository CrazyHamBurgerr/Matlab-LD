% Antanas Mantas Juodeikis Ef-25/1
% 15 variantas
% papildomos 1 variantas
% 2026-10-15

clear
clc
s = [];
for i = 1:3:50
    s = [s i];
end
disp (s)
[a, b, c] = masyvoinfo(s)
help masyvoinfo

%%
clear
clc
global x y
x = 2*pi:-0.1:-2*pi;
y = zeros(length(x));
sinplius;
sinminus;

plot(x, y, 'b-.+')

%%
clear
close all
s = linspace(-2*pi, 2*pi, 10);
grafsincos(s);
b = grafsincos(s);
disp (b)