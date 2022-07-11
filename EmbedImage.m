function [hidden] = EmbedImage(greyscale,colourImage)
% EmbedImage embeds a binary (i.e.black and white) image (stored as
% a grayscale image) inside another colour image (i.e. a 3D array of uint8
% values representing an RGB image)
% Inputs: Two inputs in the following order
%   1) A 2D array of uint8 values (i.e. a greyscale image) of the black
%   and white image to embed inside the
%   colour image.  Pixel values will either be 0 or 255.
%   2) A 3D array of uint8 values (i.e. an RGB colour image) that the black
%   and white image will be embedded into
% Output: A 3D array of uint8 values (i.e. an RGB colour image) that
% contains a hidden black and white image
% Author: Shiangbo Chang

% Sets new array as colourImage array
hidden = colourImage;

% Finds the size of greyscale input array
[row,col] = size(greyscale);

% For loop checks if every position in greyscale array
for i=1:row
    for j=1:col
        % If statement checks if sum of current position values are odd or
        % even, and if they need to be altered
        if mod(sum(colourImage(i,j,:)),2) ~= logical(greyscale(i,j))
            % Calls AlterByOne function to change 'red' array value by 1
            hidden(i,j,1) = AlterByOne(colourImage(i,j,1));
        end
    end
end
end

