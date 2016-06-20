function [ ] = Fehler2(  )
%Fehler2 Ein fehlerhaftes Stück Code.
%   Dieses Beispiel soll einen Fehler produzieren und
%   einen Fehlerreport erzeugen.
try
    Zeiger = fopen('ExisitiertNicht.txt');
    Daten = fread(Zeiger);
    disp(Daten);
catch exc
    disp('Hoppla, ein Fehler ist aufgetreten');
    disp(exc.getReport());
end
end

