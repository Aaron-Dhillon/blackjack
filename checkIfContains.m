function [same] = checkIfContains(card,dHand,uHand)
        
        l = length(dHand);
        temp = false;

        for i = 1: l
            if dHand(i) == card
                temp= true;
                break;
            end
        end
        
        l =length(uHand);
        for i = 1: l
            if uHand(i) == card
                temp= true;
                break;
            end
        end

        same = temp;
