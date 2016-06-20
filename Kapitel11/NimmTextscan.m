function [  ] = NimmTextscan(  )
%NimmTextscan Eine Demonstration der Funktion textscan()
%   Dieses Beispiel zeigt, wie man die Funktion textscan()
% anwendet, um die Datei NumerischeDaten_kom.csv einzulesen.

DateiID = fopen('NumerischeDaten_kom.csv');
TSAusgabe = textscan(DateiID, '%d,%d,%d/n');

while not(feof(DateiID))
    TempDaten = textscan(DateiID, '%d,%d,%d/n');
    
    if feof(DateiID)
        break;
    end
    
    TSAusgabe = [TSAusgabe; TempDaten];
end

disp(TSAusgabe);
fclose(DateiID);

end

