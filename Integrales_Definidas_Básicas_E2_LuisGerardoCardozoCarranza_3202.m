% Octave Script
% Title			:1.10 Cálculo de Integrales Definidas Básicas
% Description		:Script para graficar el ejericio 2 de la actividad 1.10
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210531
% sion		        :1
% Usage			:octave> /path/Cálculo_de_Integrales_Definidas_Básicas_LuisGerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.
%                    7
%Actividad_Ejercicio ∫v(t) -1.197 t^2 +58.68 t dt
%                    0
%limpia la pantalla y las variables.
clc, clear  
%Carga de la paqueteria Symbolic
pkg load symbolic
%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms t;
%La integracion se realizara respecto a la variable simbolica por defecto (x). 
TFC=1.197*t.^2+58.68 ;
int(TFC)
ans = (sym)

%La integral al aplicar la ley de los exponentes (57.473t^3/3)
%La respuesta de la operacion no ha sido asignado a ninguna variable y por defecto es ans
a= 0;
b= 7;
%operacion es la velocidad(pies/seg) 
operacion=(2*7.^3)-(2*0.^3);

%imprime el valor de la operacion
fprintf('El valor de la velocidad (distancia/tiempo) al utilizar el T.F.C. es:%2.1f\n',operacion)

%DISTANCIA QUE RRECORRE EL VEHÍCULO MIENTRAS EL CONDUCTOR ESTABA FRENADO EN (PIES/SEG)
%Hacemos uso del Movimiento Rectilineo Uniforme Desacelerado (M.R.U.D.)
%La formula para la distancia recorrida=(v1+v2/2)*t
%Los valores de las variables
v2=6.71;
v1=58.67;
t=7;
%Sutituimos letras por numeros
dr=(v1+v2/2)*t;
%Convertimos de pies a metros; Recordemos que 1pie=0.3048000metros
conversion=dr*0.3048000;
fprintf('Distancia que rrecorre el vehiculo (en mts) mientras el coductor estaba frenando, es:%2.1f\n',conversion)

%Define los intervalos y el numero de rectangulos.
a = 0;
b = 7;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(57.473*x.^2);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(0,7,100);
y2 = (57.473*x.^2);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(0,7,100);
yab = (57.473*x.^2);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 2: Distancia recorrida (en mts) mientras frenaba el vehiculo");

%Etiquetas de x,y
xlabel('Tiempo(seg)') 
ylabel('Velocidad(mts)')

%ajusta la grafica a los datos.
axis tight
