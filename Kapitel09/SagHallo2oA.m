function [] = SagHallo2oA( Name )
%SagHallo()
%   Diese Funktion sagt jedem Hallo!
if nargin < 1
    Name = 'Sonnenschein';
end

disp(['Hallo da draussen ', Name, '!'])

end
