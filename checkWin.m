function [winLoseDraw] =  checkWin(dealerValue,userValue)

value = 0;
% 1 win 2 lost 3 draw
if (dealerValue==userValue)
    value = 3;
else if (dealerValue>userValue)
    value = 2;
else
    value = 1;
end
end


winLoseDraw = value;
