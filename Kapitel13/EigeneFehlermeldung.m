function [ ] = EigeneFehlermeldung( Wert )
%EigeneFehlermeldung Stellt eigene Fehlermeldungen vor
%   Dieses Beispiel zeigt, wie Sie eine 
%   eigene Fehlermeldung erstellen

if nargin < 1
    KeineEingabe = MException('MeineFirma:KeineEingabe',...
        'Nicht genuegend Eingabeargumente!');
    KeineEingabe.throw();
end

if not(isnumeric(Wert))
    NichtNumerisch = MException('MeineFirma:NichtNumerisch',...
        'Eingabeargument ist vom Typ %s - Zahl erforderlich!',...
        class(Wert));
    NichtNumerisch.throw();
end

if (Wert < 1) || (Wert > 10)
    AusserhalbBereich = MException('MeineFirma:AusserhalbBereich',...
        'Eingangsargument nicht zwischen %d und %d!',...
        1, 10);
    AusserhalbBereich.throw();
end

fprintf('Erfolgreich eingegeben: %d.\r', Wert)

end

