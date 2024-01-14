a = linspace(1,3,1700)

% Se inicializa el primer elemento de la serie con un numero aleatorio.
xn(:) = 2*rand;
% Nos aseguramos que no sea ni 0 ni 1
if xn(1)==0
    xn(:) = xn(:) + 0.5;
end
if xn(1)==1
    xn(:) = xn(:) + 0.5;
end
 
% Como se debe partir de un valor de la serie ya estabilizado se itera 
% sobre el primer elemento 100 veces
for k = 1:100
    xn = xn + a .* (1 - xn) .* xn;
end

% Gráficas
plot(a(1), xn(1), 'k.', 'MarkerSize', 0.2);
hold on
for k = 1:1000
    xn = xn + a .* (1 - xn) .* xn;
    plot(a, xn, 'k.', 'MarkerSize', 0.2);
end
xlim([1, 3]);
xlabel('a');
ylabel('Xn');
title('Diagrama de bifurcación');
grid on;
xline(1.3,'r','E1')
xline(2.2,'r','E2')
xline(2.5,'r','E3')
xline(2.7,'r','E4')
xline(2.8,'r','E6')
xline(2.83,'r','E5')