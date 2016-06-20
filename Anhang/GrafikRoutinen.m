%% Tabelle 1

%ezplot
ezplot('exp(-0.4*x)*sin(x)')

%fplot
fplot('exp(-0.4*x)*sin(x)', [0,2*pi,-0.3,0.6])

%plot
x=[0:2*pi/100:2*pi]; y=exp(-0.4*x).*sin(x);
plot(x,y); figure(2) 
comet(x,y); figure(3) 
ribbon(x,y); figure(4) 
y2=100*exp(-0.4*x).*cos(x);
plotyy(x,y,x,y2)

%loglog
x=[0:2*pi/100:2*pi]; y=10*x.^pi;
loglog(x,y)

%semilogx
x=[0:2*pi/100:2*pi]; y=10*log(x)+pi;
semilogx(x,y);

%semilogy
x=[0:2*pi/100:2*pi]; y=10*exp(pi*x);
semilogy(x,y);

%% Tabelle 2

% area
x=[0:2*pi/100:2*pi]; y=exp(-0.4*x).*sin(x); area(x,y)

%pie, pie3
x=[2,4,6,8];
pie(x); figure(2) 
pie3(x)

%ezpolar
ezpolar('cos(2*x)^2');

%polar
x=[0:2*pi/100:2*pi];
y=(exp(-0.1*x).*sin(x)).^2; 
polar(x,y)

%compass
compass(rand(1,3)-0.5,rand(1,3)-0.5)

%bar, barh, bar3, bar3h
x=[8,7,6;13,21,15;32,27,32]; 
bar(x); figure(2) 
y=sum(x,2);
bar(y); figure(3) 
bar(x,'stacked'); figure(4) 
barh(x); figure(5)
bar3(x); figure(6) 
bar3h(x)

%fill
y=sin([0:2*pi/5:2*pi]);
x=cos([0:2*pi/5:2*pi]);
fill(x,y,'g')

%% Tabelle 3
% scatter, stem, errorbar, hist, histogram

x=[0:2*pi/100:2*pi]; 
y=10*x+pi+10*randn(1,101);
scatter(x,y); figure(2) 
stem(x,y); figure(3)
errorbar(x,y,10*ones(1,101),ones(1,101))
figure(4);
hist(y); figure(5) 
histogram(y) 
histc(y,[-40:20:80]) 
histcounts(y,5)

% histc
histc(y,[-40:20:80])

% histcounts
histcounts(y,5)

% stairs
x=[0:2*pi/10:2*pi]; 
y=10*x+pi+10*randn(1,11);
stairs(x,y)

% rose
rose(randn(1,100),5)

% pareto
histc(randn(1,100), [-4:1:4])
pareto(ans)

% spy
mymat=rand(5);
mymat=(mymat>0.5).*mymat;
spy(mymat)

% plotmatrix
plotmatrix(magic(3), magic(3))

%% Tabelle 4
% ezcontour
ezcontour('cos(x)* cos(y)')

% ezcontourf
ezcontourf('cos(x)* cos(y)')

% ezmesh
ezmesh('cos(x)* cos(y)')

% ezsurf
ezsurf('cos(x)* cos(y)')

% ezmeshc
ezmeshc('cos(x)* cos(y)')

% ezsurfc
ezsurfc('cos(x)* cos(y)')

% ezplot3
ezplot3('sin(x)', 'cos(x)','sin(3*x/2)',...
[-2*pi,2*pi],'animate')

% plot3, scatter3
a=[-2*pi:4*pi/100:2*pi];
x=sin(a);
y=cos(a);
z=sin(3*a/2);
plot3(x,y,z); figure(2)
scatter3(x,y,z)

% stem3
stem3(rand(5))

% contour, contourf, contour3, surf, surface, mesh,
% waterfall, surfc, meshc, meshz, surfl, pcolor
x=[-2*pi:4*pi/100:2*pi];
y=[-2*pi:4*pi/100:2*pi ];
z=cos(x)'*cos(y);
contour(x,y,z);title ('contour');figure(2)
contourf(x,y,z);title ('contourf');figure(3)
contour3(x,y,z);title ('contour3');figure(4)
surf(x,y,z);title ('surf');figure(5)
surface(x,y,z);title ('surface');figure(6)
mesh(x,y,z);title ('mesh');figure(7)
waterfall(x,y,z); title('waterfall'); figure(8)
surfc(x,y,z);title ('surfc');figure(9)
meshc(x,y,z);title ('meshc');figure(10)
meshz(x,y,z);title ('meshz');figure(11)
surfl(x,y,z);title ('surfl');figure(12)
pcolor(z);title('surfl')

% surfnorm
[x,y,z]=peaks; % Testfunktion
surfnorm(x,y,z)

% fill3
fill3([0,1,1,0],[0,0, 1,0],[0,1,0,1],'g')

%% Tabelle 5
% feather
feather(rand(1,3)-0.5, rand(1,3)-0.5)

% quiver, streamline
[x,y]=meshgrid([-5:5],[-5:5]);
u=ones(11)+(4./(sqrt(x.^2+y.^2)).*cos(atan2(y,x)));
v=(4./(sqrt(x.^2+y.^2)).*sin (atan2(y,x)));
v(6,6)=0; 
u(6,6)=0; 
quiver(x,y,u,v); 
hold on
streamline(x,y,u,v,[-5,-5,-5], [-1,.01,1]); 
hold off

% quiver3, streamribbon, coneplot, streamtube
figure(2)
[x,y,z]=meshgrid([-5:2:3],[-3:2:3],[-3:2:3]);
r=sqrt(x.^2+y.^2+z.^2);
u=ones(4,5,4)+(10./r.^2).*cos(atan2(y,x)).*sin(acos(z./r));
v=(10./r.^2).*sin(atan2(y,x)).* sin(acos(z./r));
w=10.*z./r; quiver3(x,y,z,u,v,w);
hold on;
streamribbon(x,y,z,u,v,w, -5,0,.1);
figure(2)
coneplot(x,y,z,u,v,w,x,y,z);
figure(3)
quiver3(x,y,z,u,v,w);
hold on;
streamtube(x,y,z,u,v,w,-5,0,.1);