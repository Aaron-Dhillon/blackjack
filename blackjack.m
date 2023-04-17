%% Black Jack Game
%%Authors: Aaron Dhillon
clc
clear

endGame = false;
exitGame = false;



while exitGame ~= true
    close all;
    endGame =true;
    beginScene = simpleGameEngine('begin.png',826,1366,3);
    drawScene(beginScene, 1, 1)
    input = getKeyboardInput(beginScene);
    
    
    if input =='escape'
        close all;
        break;
    end
    if input == 'y'
        close all
        rulesScene = simpleGameEngine('rules.png',1132,1920);
        drawScene(rulesScene,1,1)
        input = getKeyboardInput(rulesScene);
        if input == 'p'
            endGame = false;
            close all;
        end
        if input =='escape'
            endGame =true;
            close all;
            break;
        end
    end
    if input =='n'
        endGame = false;
    end


    while endGame ~=true
    
    clear
    endGame = false;
    exitGame = false;
    dealerHand(1) = dealcard();
    dealerHand(2) = dealcard();
 
    userHand(1) = dealcard();
    userHand(2) = dealcard();

    scene = simpleGameEngine('retro_cards.png', 16,16,15,[0,200,0]);
    playScene = simpleGameEngine('playAgain.png',1128,1914);


    backGround = [2 2 11 11 11 11 11 11 11 11 11 ;1 1 1 1 1 1 1 1 1 1 1;2 2 11 11 11 11 11 11 11 11 11];

    table = [findCardVal(dealerHand(1)) 4 11 11 11 11 11 11 11 11 11 ;1 1 1 1 1 1 1 1 1 1 1;findCardVal(userHand(1)) findCardVal(userHand(2)) 11 11 11 11 11 11 11 11 11];



    drawScene(scene,backGround,table);


    title("Would you like to hit or stay? (h or s)");
    i = getKeyboardInput(scene);
    while true
        if isequal(i,'s') || isequal(i,'h')
            break;
        else
            i =getKeyboardInput(scene);
        end
    end

    
    
    currentValue = findHandValue(userHand);
    while(i=='h')
        index = length(userHand)+1;
        newCard=dealcard();
        while checkIfContains(newCard,dealerHand,userHand) == true
            newCard = dealcard();
        end
        userHand(index) = newCard;
        
      
        table(3,index) = findCardVal(userHand(index));
        backGround(3,index) = 2;
        drawScene(scene,backGround,table)
        currentValue = findHandValue(userHand);


        dealerValue =findHandValue(dealerHand);
        
        l = length(dealerHand);
        while dealerValue<17
            newDealerCard= dealcard();
            while checkIfContains(newDealerCard,dealerHand,userHand) == true
                newDealerCard = dealcard();
            end
            dealerHand(l+1) = newDealerCard;
            dealerValue = findHandValue(dealerHand);
            l=l+1;
        end
        dealerValue = findHandValue(dealerHand);
        
        if currentValue == 21 && checkWin(dealerValue,currentValue) == 1
            title("YOU WIN")
            for i=2: length(dealerHand)
                 table(1,i) = findCardVal(dealerHand(i));
                 backGround(1,i) = 2;
            end
            drawScene(scene,backGround,table)
            pause(8)
            close all;
            drawScene(playScene,1,1)
            n = getKeyboardInput(playScene);
            while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScenev);
                    end
            end
            if n == 'n'
                endGame = true;
                break;
            end
            if n =='y'
                
                break;
            end
                
        end
        
        currentValue = findHandValue(userHand);
        dealerValue = findHandValue(dealerHand);
        if currentValue>21 && dealerValue>21
                title("DRAW");
                for i=2: length(dealerHand)
                 table(1,i) = findCardVal(dealerHand(i));
                 backGround(1,i) = 2;
                end
                drawScene(scene,backGround,table)
                pause(8)
                close all;
                drawScene(playScene,1,1)
                n = getKeyboardInput(playScene);
                while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScene);
                    end
                end
                if n == 'n'
                    endGame = true;
                    break;
                end
                if n =='y'
                    break;
                end
                    
        end
        if currentValue>21 && dealerValue<21
                title ("YOU LOSEEEEE");
                for i=2: length(dealerHand)
                 table(1,i) = findCardVal(dealerHand(i));
                 backGround(1,i) = 2;
                end
                drawScene(scene,backGround,table)
                pause(8)
                close all;
                drawScene(playScene,1,1)
                n = getKeyboardInput(playScene);
                while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScene);
                    end
                end
                if n == 'n'
                    endGame = true;
                    break;
                end
                if n =='y'
                    break;
                end

        end

        title("Would you like to hit or stay? (h or s)");
        i = getKeyboardInput(scene);
    end
    while(i=='s')
        currentValue = findHandValue(userHand);
        dealerValue =findHandValue(dealerHand);
        
        l = length(dealerHand);
        while dealerValue<17
            newDealerCard= dealcard();
            while checkIfContains(newDealerCard,dealerHand,userHand) == true
                newDealerCard = dealcard();
            end
            dealerHand(l+1) = newDealerCard;
            dealerValue = findHandValue(dealerHand);
            l=l+1;
        end
        WLD = checkWin(dealerValue,currentValue);
        if WLD ==1
            title("YOU WIN")
            for i=2: length(dealerHand)
                 table(1,i) = findCardVal(dealerHand(i));
                 backGround(1,i) = 2;
            end
            drawScene(scene,backGround,table)
            pause(8)
            close all;
            drawScene(playScene,1,1)
            n = getKeyboardInput(playScene);
            while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScene);
                    end
            end
            if n == 'n'
                endGame = true;
                break;
            end
            if n =='y'
                break;
            end
        end
        if WLD ==2
            title ("YOU LOSEEEEE");
            for i=2: length(dealerHand)
                table(1,i) = findCardVal(dealerHand(i));
                backGround(1,i) = 2;
            end
            drawScene(scene,backGround,table)
            pause(8)
            close all;
            drawScene(playScene,1,1)
            n = getKeyboardInput(playScene);
            while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScene);
                    end
            end
            if n == 'n'
                endGame = true;
                break;
            end
            if n =='y'
                break;
            end   
        end

        if WLD == 3
            title("DRAW");
            for i=2: length(dealerHand)
                 table(1,i) = findCardVal(dealerHand(i));
                 backGround(1,i) = 2;
            end
            pause(8)
            close all;
            drawScene(playScene,1,1)
            n = getKeyboardInput(playScene);
            while true
                    if isequal(n,'y') || isequal(n,'n')
                        break;
                else
                    n =getKeyboardInput(playScene);
                    end
            end
            if n == 'n'
                endGame = true;
                break;
            end
            if n =='y'
                break;
            end
        end

        title("Would you like to hit or stay? (h or s)");
        i = getKeyboardInput(scene);
    end
        
        

    end

end
