% Octave Script
% Title			:1.10 Cálculo de Integrales Definidas Básicas
% Description		:Script para graficar el ejericio 1 de la actividad 1.10
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210531
% sion		        :1
% Usage			:octave> /path/Cálculo_de_Integrales_Definidas_Básicas_LuisGerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.
%                    4
%Actividad_Ejercicio ∫v(t)=√dt
%                    1
%limpia la pantalla y las variables.
clc, clear  
%Carga de la paqueteria Symbolic
pkg load symbolic
%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms t;
%La integracion se realizara respecto a la variable simbolica por defecto (x). 
TFC=sqrt(t);
int(TFC)
ans = (sym)

%La integral al aplicar la ley de los exponentes (2t^3/2/(3/2))
%La respuesta de la operacion no ha sido asignado a ninguna variable y por defecto es ans
a= 1;
b= 4;
%operacion es la velocidad(millas/h) como la que constante de velocidad; Ojo la velocidad esta en millas por hora
operacion=(2*b.^3/2./(3/2))-(2*a.^3/2./(3/2));

%imprime el valor de la operacion
fprintf('El valor de la velocidad (distancia/tiempo) al utilizar el T.F.C.es:%2.1f\n',operacion)

%DISTANCIA QUE RRECORRE LA PARTICULA EN LA 2DA, 3ERA Y 4TA HORA
%La formula para la velocidad=distancia/Tiempo; Por lo que convertiremos la formula para obtener la "distancia"
%La formula para la distancia=Velocidad/Tiempo; Ahora si podemos obtener la distancia en las horas solicitadas

Distancia2=operacion*2;
fprintf('Distancia que rrecorre la particula en millas durante la 2da hora es:%2.1f\n',Distancia2)
Distancia3=operacion*3;
fprintf('Distancia que rrecorre la particula en millas durante la 3er hora es:%2.1f\n',Distancia3)
Distancia4=operacion*4;
fprintf('Distancia que rrecorre la particula en millas durante la 4ta hora es:%2.1f\n',Distancia4)

%Define los intervalos y el numero de rectangulos.
a = 1;
b = 4;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(2*x);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(1,4,100);
y2 = (2*x);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(1,4,100);
yab = (2*x);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 2: Integral definida de 1 hasta 4  v(t)=√dt ");

%Etiquetas de x,y
xlabel('Tiempo(horas)') 
ylabel('Distancia(millas)')

%ajusta la grafica a los datos.
axis tight
