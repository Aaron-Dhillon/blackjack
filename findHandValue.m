function [value] = findHandValue(cards)
t = length(cards);

totalValue=0;
i =1;

while i<=t
    tempValue = cards(i);
    while tempValue>13
        tempValue = tempValue-13;
    end
    if tempValue>10
        tempValue = 10;
    end
    if tempValue ==1
        if (totalValue+11) <=21
            tempValue = 11;
        end
    end

    totalValue = totalValue+tempValue;
    i=i+1;
end

value = totalValue;

