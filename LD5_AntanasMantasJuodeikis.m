% Antanas Mantas Juodeikis Ef-25/1
% 5 variantas
% papildomos 20 variantas
% 2026-10-08
clear
clc

cel = {"Jonas", "Lubius", 'Lazdyneliai';
    "Zole", "Biltyte", 'Zirmunai';
    "Tautvydas", "Ardvilys", 'Saltininkai'};

laukai = ["Vardas", "Pavarde", "Adresas"];

strukt = cell2struct(cel, laukai, 2)
strukt(2).Adresas
strukt(2).Adresas(3)

isstruct(strukt)
%% 
clear
clc
format compact

while (true)
    x = input("Iveskite x reiksme: ");
    y = input("Iveskite y reiksme: ");
    clc
    if (x==0) && (y==0)
        break
    end

    b = atan(y/x);
    ats = zeros(10, 3);
    for n = 1:10
        ats(n,1) = n*(cos(b) + 1i*sin(b))^n;
        ats(n,2) = cos(n*b) + 1i*sin(n*b);
        ats(n,3) = ats(n,1) - ats(n,2);
    end
    disp(ats)

    if sum(ats(:, 3))~=0
        disp("Lygybe negalioja")
    else
        disp("Lygybe galioja")
    end
end

clc
%% 
clear
clc
x = input("Iveskite x reiksme: ");
y = input("Iveskite y reiksme: ");

for i = 1:20
    A = zeros(x,y);
    m = randi([1 x]);
    n = randi([1 y]);
    A(m,n) = NaN;
    clc
    disp(A)
    pause(0.5)
end