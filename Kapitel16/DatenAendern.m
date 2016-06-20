% Veränderte Daten
YDaten = [2, 0, 1, 4, 5, 2, 3]; 
Balken1 = bar(YDaten);
set(Balken1, 'YDataSource', 'YDaten'); 
set(gca, 'YLim', [0, 8]);
 for i = 2:7
     YDaten(3) = i;
     pause(2);
     refreshdata;
 end