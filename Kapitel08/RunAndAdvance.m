%% Die Eingabeaufforderung erstellen 
% MATLAB sagen, was angezeigt werden soll.
Text = ['Geben Sie ihren Namen ein, aber nur,\nwenn ', ...
        'gerade nicht Mittwoch ist.\nMittwochs ', ...
        'geben Sie den Namen Ihres\nNachbarn ', ...
        'zur Rechten ein. Wenn jedoch\nam Mittwoch ', ...
        'Vollmond ist, geben Sie\nden Namen des ', ...
        'Nachbarn zur Linken ein: '];

%% Die Nutzereingabe abfragen
% Den Namen des Nutzers erfragen
% zum Anzeigen auf dem Bildschirm.
Name = input(Text, 's');

%% Die Eingabe auf dem Bildschirm anzeigen
% Eine Begrüßung ausgeben, damit 
% sich der Nutzer willkommen fühlt.
disp(['Hallo ', Name])