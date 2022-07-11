function [greyscale] = ExtractImage(hidden)
% ExtractImage extracts a black and white image that has been embedded within a colour image
% Input: A 3D array of uint8 values (i.e.an RGB colour image) that contains
% a hidden black and white image
% Output: A 2D array of uint8values(i.e. a greyscale image) of the black
% and white image that was hidden inside the colour image(each pixel will
% have a value of 0 or 255)
% Author: Shiangbo Chang

% Find size of the 3D array inputted
[row,col,~] = size(hidden);

% Creates greyscale array with the same side as 'hidden' array, containing
% uint8 zeros
greyscale = uint8(zeros(row,col));

% For loop checks every position in 'hidden' array
for i=1:row
    for j=1:col
        % If statement checks if sum of the layer values in current
        % position is odd
        if mod(sum(hidden(i,j,:)),2)
            % Changes value of current position in 'greyscale' to 255
            greyscale(i,j) = 255;
        end
    end          
end

