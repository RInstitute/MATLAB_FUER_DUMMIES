function [  ] = EinfachesFor( Anzahl )
%EinfachesFor Demonstriert die for-Schleife
%   Sagen Sie der Funktion, wie oft sie Hallo sagen soll.
if nargin < 1
    Anzahl = 3;
end

for SagEs = 1:Anzahl
    disp('Hallo!')
end

end

