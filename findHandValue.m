function [value] = findHandValue(cards)

t = length(cards);
for i = 1:t
    draw(i) = cards(i);
end


for j = 1:length(draw)
    while(draw(j)>13)
        draw(j) = draw(j)-13;
    end
    if(draw(j)>10)
        draw(j) = 10;
    end
    if(draw(j) ==1)
        draw(j) = 11;
    end
end

value = sum(draw);
end

