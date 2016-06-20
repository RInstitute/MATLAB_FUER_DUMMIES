function [ ] = Fehler3(  )
%Fehler2 Ein fehlerhaftes Stück Code.
%   Dieses Beispiel soll einen Fehler produzieren und
%   per mail an den Empfänger schicken.
try
    Zeiger = fopen('');
    Daten = fread(Zeiger);
    disp(Daten);
catch exc
    disp('Mail wird versendet!');
    sendmail('meineadresse@meinefirma.com', ...
        'Fehler3',...
        ['Identifier: ', exc.identifier, 10, ...
        'Meldung: ', exc.message]);
end
end

