function [ Ergebnis ] = Fakultaet1( Wert, Ebene )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if nargin < 2
    Ebene = 1;
end

if Wert > 1
    fprintf('Wert = %d Ebene = %d\n', Wert, Ebene);
    Ergebnis = Fakultaet1(Wert - 1, Ebene + 1) * Wert;
    disp(['Ergebnis = ', num2str(Ergebnis)]);
else
    fprintf('Wert = %d Ebene = %d\n', Wert, Ebene);
    Ergebnis = 1;
    disp(['Ergebnis = ', num2str(Ergebnis)]);
end
end

