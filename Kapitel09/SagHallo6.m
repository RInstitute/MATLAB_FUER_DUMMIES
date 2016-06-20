function [ HalloText ] = SagHallo6( Name )
%SagHallo()
%   Diese Funktion sagt jedem Hallo!
HalloText = [GetGruss(), Name, '!'];
disp(HalloText);
end

function [ Gruss ] = GetGruss ()
Gruss = 'Hallo da draussen ';
end