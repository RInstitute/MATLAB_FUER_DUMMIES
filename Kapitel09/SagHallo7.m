function [ HalloText ] = SagHallo7( Name )
%SagHallo()
%   Diese Funktion sagt jedem Hallo!
HalloText = [GetGruss(), Name, '!'];
disp(HalloText);

    function [ Gruss ] = GetGruss ()
    Gruss = 'Hallo da draussen ';
    end

end
