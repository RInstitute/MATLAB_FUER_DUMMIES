function [ ] = Fehler(  )
%Fehler Ein fehlerhaftes Stück Code.
%   Dieses Beispiel soll einen Fehler produzieren
try
    Zeiger = fopen('ExisitiertNicht.txt');
    Daten = fread(Zeiger);
    disp(Daten);
catch exc
    disp('Hoppla, ein Fehler ist aufgetreten');
    disp(exc);
end
end

