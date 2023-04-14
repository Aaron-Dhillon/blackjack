%% Black Jack Game
%%Authors: Aaron Dhillon




    dealerHand(1) = dealcard();
    dealerHand(2) = dealcard();
    dealerValue = findHandValue(dealerHand);
    fprintf('Dealer Hand: %i\n',dealerValue);

    UserHand(1) = dealcard();
    UserHand(2) = dealcard();


    userValue= findHandValue(UserHand);
    
    
    
    lose = false;
    fprintf('Current Hand: %i\n',userValue);
    
    hitOrStay = input('h or s?\n','s');
    while(hitOrStay == 'h' && lose ~=true)
        newCard = dealcard();
        newCardValue = findHandValue(newCard);
        userValue= userValue + newCardValue;
        fprintf('Hand total: %i\n',userValue);
        if(userValue>21)
            lose = true;
            break
        end
        hitOrStay = input('h or s?\n','s');
    end

    if lose ==true
        disp('over 21');
    else
        disp('21 or under');
    end


        






