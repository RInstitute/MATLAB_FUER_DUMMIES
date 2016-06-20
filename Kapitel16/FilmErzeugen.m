% Mit Filmen arbeiten

YDaten = [1, 2, 5; 2, 4, 8; 7, 9, 10]; 
Balken1 = bar3(YDaten);
rotate(Balken1, [0, 0, 1], 270)
DiagZeiger = gcf();
for Frame = 1:32
Frames(Frame) = getframe(DiagZeiger,...
[0, 0, 15 * Frame, 15 * Frame]);
end
clf
movie(DiagZeiger, Frames, 1, 5);
