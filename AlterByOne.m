function [newInteger] = AlterByOne(integer)
% AlterByOne Adds 1 to an uint8 value in the range 0 to 255 inclusive
% (unless the value is 255 in which case it subtracts 1)
% Inputs: An integer value somewhere between 0and 255 inclusive
% Output: A uint8 value that is one more (unless the original value was 255,
% in which case it is one less)
% Author: Shiangbo Chang

% if statement checks input value
if integer == 255
    % Sets output as 254 (uint8)
    newInteger = uint8(254);
else
    % Sets output as one more than the input value (uint8)
    newInteger = uint8(integer+1);
end
end