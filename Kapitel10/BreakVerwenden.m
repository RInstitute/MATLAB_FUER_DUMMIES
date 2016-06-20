function [  ] = BreakVerwenden( Anzahl )
%BreakVerwenden Demonstriert die while-Schleife mit break
%   Sagen Sie der Funktion, wie oft sie Hallo sagen soll.
%   Nach fünf Runden wird die Ausführung beendet.
if nargin < 1
    Anzahl = 3;
end

SagEs= 1;
while SagEs <= Anzahl
    disp('Hallo!')
    SagEs = SagEs + 1;
    if SagEs > 5
        disp('Entschuldigung, zu viele Hallos')
        break;
    end
end

end

