function [ Ergebnis ] = ReturnVerwenden( Anzahl )
%ReturnVerwenden Demonstriert die while-Schleife mit return
%   Sagen Sie der Funktion, wie oft sie Hallo sagen soll.
%   Nach f�nf Runden wird die Ausf�hrung beendet.
if nargin < 1
    Anzahl = 3;
end

Ergebnis = 'Erfolg!';
SagEs= 1;
while SagEs <= Anzahl
    disp('Hallo!')
    SagEs = SagEs + 1;
    if SagEs > 5
        disp('Entschuldigung, zu viele Hallos')
        Ergebnis = 'Fehlschlag!';
        return;
    end
end

end

