function [  ] = EinfachesSwitch( Wert )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
switch Wert
    case 1
        disp('Sie haben eine 1 eingegeben');
    case 2
        disp('Sie haben eine 2 eingegeben');  
    case 3
        disp('Sie haben eine 3 eingegeben');
    otherwise
        disp('Sie haben keine 1, 2 oder 3 eingegeben');
end

