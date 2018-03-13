%1
clear
disp('Prob 1')
xi=[1930 1940 1950 1960 1970 1980];
f=[123203 131669 150697 179323 203212 226505];
disp('Approximation for 1955')
lagrInter(xi,f,1955)
disp('Approximation for 1995')
lagrInter(xi,f,1995)

%2
clear
disp('Prob 2')
xi=[100,121,144];
f=[10,11,12];
disp('Approximation for sqrt(115)')
lagrInter(xi,f,115)
disp('Actual sqrt(115)')
sqrt(115)

%3
clear
disp('Prob 3')
%xi and f used to compute the interpolation
xi=0:0.5:10;
f=(1+cos(pi*xi))./(1+xi);

%xplot and fplot (on an interval with more points) used for plotting
xplot=0:0.01:10;
fplot=(1+cos(pi*xplot))./(1+xplot);
figure
plot(xplot,fplot)
grid on
hold on
%xi2 - xi with a small (0.01) offset
xi2=0.01:0.5:10.01;
l=zeros(size(xplot));
for i=1:length(l)
    l(i)=lagrInter(xi,f,xplot(i));
end
plot(xplot,l);

