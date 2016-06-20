an{1,1,1} = 'Georg';
an{1,2,1} = 'Schmidt';
an{2,1,1} = rand();
an{2,2,1} = uint16(1953);
an{1,1,2} = true;
an{1,2,2} = false;
an{2,1,2} = 14.551 + 2.113i;
an{2,2,2} = 'Ende!'

zeros(3)
ones(3)
eye(3)
rand(3)
randn(3)
blkdiag(ones(2), ones(2))
magic(3)

size(zeros(2,3,4))
length(0:50)
spy(blkdiag(ones(100), ones(200), ones(100)))

x = -pi:0.01:pi;
plot(x, sin(x)), grid on


y = [5, 10, 22, 6, 17];
bar(y)

plot(1:5, y, 'r+--')

plot(x, sin(x), 'g-', x, cos(x),'b--')
legend('Sinus','Cosinus')
legend('orientation','horizontal')
title('Sinus und Cosinus')

hold on
newplot = plot(x, power(x,2), 'm:')
hold off
delete(newplot)

clf
subplot(1,3,1)
p1 = plot(x, sin(x), 'g-')
subplot(1, 3, 2)
p2 = plot(x, cos(x), 'b--')
subplot(1, 3, 3)
p3 = plot(x, power(x,2), 'm:')

subplot(1,3,1)
title('Sinus')

subplot(1,3,2)
set(p2,'color','r')
set(p2,'LineStyle','-.')


Y = [1, 5, 3;
     3, 2, 7;
     1, 5, 3;
     2, 6, 1];
area(Y)

%% Kapitel 7
DatenErhebung = [8, 7, 6; 13, 21, 15; 32, 27, 32]
bar(DatenErhebung)
Balken1 = bar(DatenErhebung, 'stacked')
set(Balken1(1), 'YData', [40, 40, 40])
get(Balken1(1))
Bar2 = bar3(DatenErhebung)
view([-45, 45, 30])

%Einschub: Grafikarten
hist(randn(1,100), 5)
hist(randn(1,100), [-3.5, -2.5, -1.5, -.5, .5, 1.5, 2.5, 3.5])

histc(randn(1,100), [-4:1:4])
bar([-4:1:4], ans, 'histc')

histc(randn(1,100), [-4:1:4])
pareto(ans)

histc(randn(1,100), [-4:1:4])
polar(ans)

rose(randn(1,100), 5)

%Einschub Ende

Bar2Axes = gca()
get(Bar2Axes)

xlabel(Bar2Axes, 'x-Achse')
ylabel(Bar2Axes, 'y-Achse')

set(Bar2Axes, 'XTickLabel', {'Gestern', 'Heute', 'Morgen'})
set(Bar2Axes, 'YTickLabel', {'Bereich 1', 'Bereich 2', 'Bereich 3'})
set(Bar2Axes, 'ZTick', [0, 5, 10, 15, 20, 25, 30, 35, 40])
set(Bar2Axes, 'ZLim', [0 45])
zlim(Bar2Axes, [0 45])
zlim(Bar2Axes, 'auto')
set(Bar2Axes, 'ZLimMode', 'auto')
title(Bar2Axes, 'Beispielgrafik', 'FontName', 'Times', 'FontSize', 22, 'Color', [.5, 0, .5], 'BackgroundColor', [1, 1, 1], 'EdgeColor', [0, 0, 0], 'LineWidth', 2, 'Margin', 4)
get(Bar2Axes, 'XLabel') 
get(get(Bar2Axes, 'XLabel'))

set(get(Bar2Axes, 'XLabel'), 'Rotation', -30)
set(get(Bar2Axes, 'YLabel'), 'Rotation', 30)

get(get(Bar2Axes, 'XLabel'), 'Position')
set(get(Bar2Axes, 'XLabel'), 'Position', [2.0 0.31 -5.6])

TArrow = annotation('textarrow', [.69 .56], [.9 .83], 'String', 'Bereich 3 ist der beste!')
TBox = annotation('textbox', [.1, .8, .2, .1], 'string', 'Bereichsreport', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle')


%% Kapitel 9

help('input')
doc('input')
docsearch('input')
lookfor('input')
which('input')
what('lang')
SagHallo
SagHallo()
SagHallo
help(SagHallo)
help('SagHallo')
doc('SagHallo')
SagHallo2
SagHallo2(Kuno)
SagHallo2('Kuno')
SagHallo2('Josh')
SagHallo3('Ambrosius')
Ausgabe = SagHallo3('Ambrosius')
SagHallo2oA
SagHallo2oA('Selma')

SagHallo4('Georg')
SagHallo5()
Ausgabe = SagHallo6('Stefan')
GetGruss()

Ausgabe = SagHallo7('Stefan')

SagHallo8 = inline('[''Hallo da draussen '', Name ''!'']')

disp(SagHallo8('Robert'))

SagHallo8 = inline('disp([''Hallo da draussen '', Name ''!''])')
SagHallo8('Robert')

SagHallo9 = @(Name)['Hallo da draussen ', Name, '!']

disp(SagHallo9('Eva'))

%% Kapitel 10

EinfachesIf(6)
EinfachesIf(4)


IfElse(6)
IfElse(4)

IfElseIf(6)
IfElseIf(5)
IfElseIf(4)

EinfachesSwitch(1)
EinfachesSwitch(2)
EinfachesSwitch(3)
EinfachesSwitch(4)

Fakultaet1(4)
Fakultaet2(4)

EinfachesFor(4)
EinfachesWhile(4)

BreakVerwenden(10)
ReturnVerwenden(10)
disp(ReturnVerwenden(10))

%% Kapitel 11

CSVAusgabe = csvread('NumerischeDaten_kom.csv')
DLMAusgabe = dlmread('NumerischeDaten_sem.csv')

DateiID = fopen('NumerischeDaten_sem.csv')
TSAusgabe = textscan(DateiID, '%d;%d;%d/n')
feof(DateiID)
TSAusgabe = [TSAusgabe; textscan(DateiID, '%f;%f;%f/n')]
isinteger(TSAusgabe{1,1})
isinteger(TSAusgabe{2,1})
TSAusgabe = [TSAusgabe; textscan(DateiID, '%2s;%2s;%2s/n')]
textscan(DateiID, '%d;%d;%d/n')
feof(DateiID)
fclose(DateiID)

NimmTextscan()

RTAusgabe = readtable('NumerischeDaten_kom.csv', 'ReadvariableNames', false)
RTAusgabe{1, 'Var1'}

Datenmix = readtable('Datenmix.csv', 'ReadRowNames', true, 'Format', '%d%s%d%s')
Datenmix('1234','Alter')
Datenmix{'1234','Alter'}
Datenmix{1,2}
class(Datenmix{'1234','Alter'})

Datenmix = readtable('Trennzeichen.csv', 'ReadRowNames', true)
Datenmix = readtable('Trennzeichen.csv', 'ReadRowNames', true, 'Delimiter', ';')
CSVAusgabe = csvread('NumerischeDaten_kom.csv', 0, 0, [0, 0, 1, 1])
CSVAusgabe = csvread('NumerischeDaten_kom.csv', 0, 1, [0, 1, 2, 2])

ExportDaten = [1, 2, 3; 4, 5, 6; 7, 8, 9]
csvwrite('ExportierteDaten1.csv', ExportDaten)

ZellExport = {'Andrea', 42, true; 'Michael', 23, false; 'Sarah', 61, false}
MeineMatrix = cell2mat(ZellExport)
MeineTabelle = cell2table(ZellExport)
writetable(MeineTabelle, 'ExportierteDaten2.csv', 'WriteVariableNames',false)

publish('NimmTextscan.m', 'html')

% Bilder exportieren
DatenErhebung = [8, 7, 6; 13, 21, 15; 32, 27, 32]
bar(DatenErhebung)
Balken1 = bar(DatenErhebung, 'stacked')
set(Balken1(1), 'YData', [40, 40, 40])

saveas(gcf(), 'Balken1.jpeg', 'jpg')
ImportiertesBild = imread('Balken1.jpeg');
image(ImportiertesBild)

%% Kapitel 12

Schriften = listfonts();
Arial = find(strcmp(Schriften, 'Arial'))
length(Arial)

Balken1 = bar([5, 15, 8, 2, 9]);
TBox1 = annotation('textbox', [.13,.825,.14,.075], 'String', 'Light','FontName', 'Arial', 'FontSize',16,'FontWeight','light','BackgroundColor',[1,1,0]);
TBox2 = annotation('textbox', [.29,.825,.14,.075], 'String', 'Normal','FontName', 'Arial', 'FontSize',16,'FontWeight','normal','BackgroundColor',[1,1,0]);
TBox3 = annotation('textbox', [.45,.825,.14,.075], 'String', 'Demi','FontName', 'Arial', 'FontSize',16,'FontWeight','demi','BackgroundColor',[1,1,0]);
TBox4 = annotation('textbox', [.61,.825,.14,.075], 'String', 'Bold','FontName', 'Arial', 'FontSize',16,'FontWeight','bold','BackgroundColor',[1,1,0]);
TBox5 = annotation('textbox', [.13,.72,.15,.075], 'String', 'Dicktengleich','FontName', 'CourierNew', 'BackgroundColor',[0,1,1]);

TBox6 = annotation('textbox', [.13,.61,.14,.075], 'String', 'Normal','FontSize',16, 'FontAngle', 'normal','BackgroundColor',[1,0,1]);
TBox7 = annotation('textbox', [.29,.61,.14,.075], 'String', 'Italic','FontSize',16, 'FontAngle', 'italic','BackgroundColor',[1,0,1]);
TBox8 = annotation('textbox', [.45,.61,.15,.075], 'String', 'Oblique','FontSize',16, 'FontAngle', 'oblique','BackgroundColor',[1,0,1]);
TBox9 = annotation('textbox', [.13,.5,.16,.075], 'String', '\underline{Unterstrichen}','FontSize',14,'BackgroundColor',[.5,1,.5], 'Interpreter', 'latex');

TBox10 = annotation('textbox', [.13,.39,.17,.085], 'String', '\alpha\beta\gamma\delta\epsilon\zeta\eta\theta\iota\kappa\lambda\mu \nu\xi\pi\rho\sigma\tau\upsilon\phi\chi\psi\omega','FontSize',13,'BackgroundColor',[.5,.5,1]);

TBox11 = annotation('textbox', [.45,.39,.15,.075], 'String', 'Normal^{hoch}_{tief}','FontSize',14,'BackgroundColor',[.5,.5,1]);
TBox12 = annotation('textbox', [.13,.28,.14,.085], 'String', '$\displaystyle\frac{x-2y}{x+y}$','FontSize',14,'BackgroundColor',[1,.5,.5], 'Interpreter', 'latex');
TBox13 = annotation('textbox', [.29,.28,.14,.085], 'String', '$\sqrt{f}$','FontSize',14,'BackgroundColor',[1,.5,.5], 'Interpreter', 'latex');
TBox14 = annotation('textbox', [.45,.27,.14,.11], 'String', '$$\sum_{i=1}^{2n}{|n - i|}$$','FontSize',14,'BackgroundColor',[1,.5,.5], 'Interpreter', 'latex');
TBox15 = annotation('textbox', [.61,.27,.14,.11], 'String', '$$\int_{a}^{b}{f(x) \d dx}$$','FontSize',14,'BackgroundColor',[1,.5,.5], 'Interpreter', 'latex');
TBox16 = annotation('textbox', [.13,.18,.14,.085], 'String', '$\displaystyle\frac{d^2u}{dx^2}$','FontSize',14,'BackgroundColor',[1,.5,.5], 'Interpreter', 'latex');

saveas(Balken1, 'Balken1','m')
publish('Balken1.m')
web('html/Balken1.html')

%% Kapitel 13

FehlerUndWarnung()

warning('query','backtrace')
warning('query','MATLAB:FileIO:InvalidFid')

%% Kapitel 14
syms x y
solve(2 * x + 3 * y - 22 == 0)
solve(2 * x + 3 * y - 22 == 0, y)
solve(11 - (3*y)/2)
solve(2 * 22/3 + 3 * y - 22 == 0)

% Zwischen numerischer und symbolischer Algebra unterscheiden
syms x y
vpasolve(2 * x + 3 * y - 22 == 0,x)
vpasolve(11.0 - 1.5*y)
vpasolve(2 * 7.3333333333333333333333333333333 + 3 * y - 22 == 0)
2 * 7.3333333333333333333333333333333 + ...
    3 * 2.4444444444444444444444444444444 - 22
solve(x^2 + 3 * x - 4 == 0)
roots([1 3 -4])

syms x
a=2;
b=-4;
c=-22;
d=24;
Loesungen = solve(a*x^3 + b*x^2 + c*x + d == 0)

% Interpolation verstehen
x = [0, 2, 4];
y = [0, 2, 8];
x2 = [0:.1:4];
y2linear = interp1(x,y,x2);
y2nearest = interp1(x,y,x2,'nearest');
y2spline = interp1(x,y,x2,'spline')
y2pchip = interp1(x,y,x2,'pchip')
plot(x,y,'sk-')
hold on
plot(x2,y2linear,'g--')
plot(x2,y2nearest,'b--')
plot(x2,y2spline,'r--')
plot(x2,y2pchip,'m--')
legend('Daten','Linear','Nearest','Spline','PCHIP','Location','West')
hold off

% Deskriptive Statistik verstehen
rng('shuffle','twister')
w = 100 * rand(1,100);
x = 100 * randn(1,100);
y = randi(100,1,100);
z = randperm(200,100);
AlleWerte = [w;x;y;z]';
hist(AlleWerte,50);
legend('rand','randn','randi','randperm')
set(gca, 'XLim',[0,200]);


corrcoef(AlleWerte)
cov(AlleWerte)
max(w)
mean(w)
median(w)
min(w)
mode(w)
std(w)
var(w)

% kleinste Quadrate
XDaten = 1:10;
YDaten = [1, 2, 3.5, 5.5, 4, 3.9, 3.7, 2, 1.9, 1.5];
plot(XDaten, YDaten)
fun = @(p) sum((YDaten-(p(1)*cos(p(2)*XDaten) + p(2) * sin(p(1) * XDaten))).^2);
Anfang = [2,2];
[p, fminres] = fminsearch(fun, Anfang)
Anfang = [1.6204, 1.8594];
[p, fminres] = fminsearch(fun, Anfang)

%% Kapitel 15

% Matrizen reduzieren
A=[1, 2, 3; 4, 5, 6; 7, 8, 9];
cond(A)
det(A)
ES = [0, 0, 0; 0, 0, 1; 0, 0, 0];
det(ES)
B = [2, 3, 2; 4, 2, 3; 9, 6, 7];
cond(B)
det(B)

A = magic(5)
rref(A)

y = [1;0;0;0;0];
A = magic(5);
B=rref([A,y])
x=B(:,6)
A*x

% Eigenwerte
A = gallery('riemann',4)
lambda = eig(A)

% Faktorzerlegung
factor(2)
factor(12)

syms x y
factor(x^2 + 2*x*y + y^2)

A = magic(4)
factor(A)

B = [16, 11,10, 8]
sym(B)

% Differentialrechnung
syms x
f(x) = sin(x^3)
Ableitung = diff(f)
plot(Ableitung(1:50))

% Integralrechnung
syms x
f(x) = 1 + 1/x
Integral(x) = int(f,x)
plot(Integral(1:50))

% Multivariate Analysis
syms x y
f(x,y) = x^2 * sin(y)
Ableitung_x(x,y) = diff(f,x)
Ableitung_y(x,y) = diff(f,y)
plot(Ableitung_x(1:50,1:50))
plot(Ableitung_x(1,(1:50)/50 * 2 * pi))

% Numerische Lösung von Differentialgleichungen
Funktion = @ (t,y) y
[T,Y] = ode23(Funktion, [0 1], 1);
plot(T,Y, 'b-')
hold on
plot(T, exp(T), 'r--')
hold off

% Geschlossene Lösung von Differentialgleichungen
Loesung = dsolve('Dy = y', 'y(0) = 1','t')
Werte = subs(Loesung, 't', 0 :.01:1);
plot(Werte)

%% Kapitel 16

grid('on')
grid('off')
grid()
grid('minor')

% Achsen mit der Funktion datetick() beschriften
datenum('15.09.2014', 'dd.mm.yyyy')
format longg
datenum('15.09.2014 08:00:00 AM', 'dd.mm.yyyy HH:MM:SS AM')
format short
XDaten = linspace(datenum('15.09.2014', 'dd.mm.yyyy'), ...
    datenum('19.09.2014', 'dd.mm.yyyy'), 5);
YDaten = [1,5,9,4,3];
Balken1 = bar(XDaten, YDaten)
datetick('x','dd mmm yy', 'keeplimits', 'keepticks')

% colorbar() verwenden

YDaten = [4, 2, 5, 6; 1, 2, 4, 3];
Balken1 = bar3(YDaten);
FB1 = colorbar('EastOutside')
for Element = 1:length(Balken1)
    ZData = get(Balken1(Element), 'ZData');
    set(Balken1(Element), 'CData', ZData, ...
        'FaceColor', 'interp')
end
set(FB1, 'YTickLabel', {'', 'Schlecht', 'OK', 'Besser', 'Durchschnitt','Super','Top'});

% Mit daspect arbeiten

YDaten = [1, 3, 5; 3, 7, 9; 5, 7, 11];
Balken1 = bar3(YDaten);
rotate(Balken1, [0, 0, 1], 270);
daspect()
daspect([.25, 1, 1.2])
daspect([.65, .5, 7])
daspect('auto')

% Mit pbaspect arbeiten

YDaten = [1, 3, 5; 3, 7, 9; 5, 7, 11];
Balken1 = bar3(YDaten);
rotate(Balken1, [0, 0, 1], 270);
pbaspect()
pbaspect([1.5, 1.5, 7]);
pbaspect([4, 5, 1]);
pbaspect('auto');

% Fehlerbalken erzeugen
YDaten = [1, 2, 4, 7, 5, 3];
FDaten = [.5, 1, 1, 1.5, 1, .5];
FBalken1 = errorbar(YDaten, FDaten);

% Ein Paretordiagramm erzeugen
YDaten = [1, 2, 4, 2, 6, 2, 3, 4, 1, 2];
Par1 = pareto(YDaten);

% Ein Treppendiagramm darstellen
YDaten = [1, 2, 4, 7, 5, 3];
XDaten = datenum('9/15/2014'):1:datenum('9/20/2014');
Treppe1 = stairs(XDaten, YDaten);
set(gca, 'XTick', XDaten);
datetick('x','dd.mm','keeplimits','keepticks')

% Ein Stammdiagramm erstellen
YDaten = [-10:1:10];
stem(YDaten)
set(gca, 'YLim',[-11,11]);

% Mit fill Bilder malen
XDaten = [1, 1, 5, 5];
YDaten = [1, 5, 5, 1];
fill(XDaten, YDaten, 'b');
set(gca, 'XLim', [0, 6]);
set(gca, 'YLim', [0, 6]);

% Mit quiver() Geschwindigkeitsfelder darstellen
XUrsprung = [1, 1, 1, 1, 1, 1];
YUrsprung = [1, 1, 1, 1, 1, 1];
URichtung = [1, 2, 3, 4, 5, 6];
VRichtung = [6, 5, 4, 3, 2, 1];
quiver(XUrsprung, YUrsprung, URichtung, VRichtung);

% Mit feather() Geschwindigkeitsfelder darstellen
URichtung = [-6:1:6];
VRichtung = [6:-1:-6];
feather(URichtung, VRichtung);

% Ein Kompassdiagramm erstellen
URichtung = [1, -4, 3, -7, 8, -9, 2, 4, -2, 3, -5, 8, 9];
VRichtung = [12:-2:-12]; 
compass(URichtung, VRichtung);

% Polarkoordinaten
theta = 0:0.01:2*pi;
r = 1 - theta;
polar(theta, r)

% Rosendiagramm
theta = 0:0.01:2*pi;
rose(theta, 36)

% Besetzung von Matrizen testen
spy(bucky())
gplot(bucky())

