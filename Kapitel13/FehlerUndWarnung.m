function [  ] = FehlerUndWarnung( )
%FehlerUndWarnung Erzeuge Fehler- und Warnmeldung
%   Dieses Beispiel zeigt, wie man eine Fehler und Warnmeldung 
%   erzeugt

NichtEnde = true;

while NichtEnde
    try
        Wert = input('Tippen Sie etwas ein (ende zum beenden): ', 's');
        
        switch Wert
            case 'fehler'
                error('Fehlermeldung');
            case 'warnung'
                warning('Warnmeldung');
            case 'ende'
                NichtEnde = false;
            otherwise
                disp(['Ihre Eingabe: ', Wert]);
        end
    catch Ausnahme
    disp('Eine Ausnahme ist aufgetreten');
    disp(Ausnahme.getReport());
    end
end

