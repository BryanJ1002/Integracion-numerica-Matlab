%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('Regla de Simpson 1/3')
%Damos de alta la variable simb�lica X
syms x
%Introducimos la funci�n,los puntos a y b,as� como
%porcentaje de error
f =input('Introduzca la funci�n f(x):');
a =input('Introduzca el punto a: ');
b =input('Introduzca el punto b: ');
%Graficamos la funci�n en el intervalo [a,b]
ezplot(f,[a,b]);
grid,title('\bf Regla de Simpson 1/3')
f=inline(f);
%Aproximamos la integral con la f�rmula correspondiente
int=((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nAproximaci�n a la integral=%12.6f \n',int);