function [  ] = EinfachesWhile( Anzahl )
%EinfachesWhile Demonstriert die while-Schleife
%   Sagen Sie der Funktion, wie oft sie Hallo sagen soll.
if nargin < 1
    Anzahl = 3;
end

SagEs= 1;
while SagEs <= Anzahl
    disp('Hallo!')
    SagEs = SagEs + 1;
end

end

