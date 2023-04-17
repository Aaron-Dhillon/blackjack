function [spriteValue] = findCardVal(x)

for i = 1:52
    if x == i
        spriteValue = i+20;
    end
end