function [ ] = SagHallo4( Name )
%SagHallo4()
%   Diese Funktion sagt jedem Hallo!
global HalloText;
HalloText = ['Hallo da draussen ', Name, '!'];
disp(HalloText);
end
