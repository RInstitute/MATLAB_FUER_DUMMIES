Beenden = false;

while not(Beenden)
    clc
    disp('Wählen Sie eine Frucht');
    disp('1. Orange');
    disp('2. Apfel');
    disp('3. Kirsche');
    disp('4. Mir ist langweilig, lass uns aufhören.');
    
    Auswahl = input('Ihre Auswahl: ');
    
    if Auswahl == 4
        disp('Schade.')
        Beenden = true;
    else
        switch Auswahl
            case 1
                disp('Sie haben eine Orange gewählt!');
             case 2
                disp('Sie haben einen Apfel gewählt!');
             case 3
                disp('Sie haben eine Kirsche gewählt!');
            otherwise
                disp('Sie sind verwirrt, brechen wir ab!');
                break;
        end
        pause(2)
    end
end
