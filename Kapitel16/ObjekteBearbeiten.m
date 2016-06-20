% Mit Objekten arbeiten

YDaten = [1, 2, 5; 2, 4, 8; 7, 9, 10]; 
Balken1 = bar3(YDaten);
rotate(Balken1, [0, 0, 1], 270)
Farben = get(Balken1(1), 'CData');
for i = 1:6:18
Farben(i,:) =[1, 2, 1, 1]; 
Farben(i+1,:) =[2, 2, 1, 1];
set(Balken1(1), 'CData', Farben); 
pause(2);
Farben(i,:) =[1, 1, 1, 1]; 
Farben(i+1,:) =[1, 1, 1, 1];  
set(Balken1(1), 'CData', Farben); 
pause(2);
end