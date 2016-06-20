function [ ] = EigeneFehlermeldungTest( )
%EigeneFehlermeldungTest Testet die Funktion EigeneFehlermeldung()
%   Führt einen detaillierten Test der Funktion EigeneFehlermeldung()
%   durch, indem es auf Typ des Eingangsarguments und Bereiche testet.

% Auf fehlende Eingabe testen
try
    disp('Test auf fehlende Eingabe.')
    EigeneFehlermeldung();
catch Ausnahme
    disp(Ausnahme.getReport());
end

% Auf logische Eingabe testen
try
    disp('Test auf logische Eingabe.')
    EigeneFehlermeldung(true);
catch Ausnahme
    disp(Ausnahme.getReport());
end

% Auf Zeichenkette als Eingabe testen
try
    disp('Test auf Zeichenkette als Eingabe.')
    EigeneFehlermeldung('Hallo');
catch Ausnahme
    disp(Ausnahme.getReport());
end

% Auf zu kleine Zahl testen
try
    disp('Test auf zu kleine Zahl.')
    EigeneFehlermeldung(-1);
catch Ausnahme
    disp(Ausnahme.getReport());
end

% Auf zu große Zahl testen
try
    disp('Test auf zu große Zahl.')
    EigeneFehlermeldung(12);
catch Ausnahme
    disp(Ausnahme.getReport());
end

% Auf korrekte Eingabe testen
try
    disp('Test auf korrekte Eingabe.')
    EigeneFehlermeldung(5);
catch Ausnahme
    disp(Ausnahme.getReport());
end

end

