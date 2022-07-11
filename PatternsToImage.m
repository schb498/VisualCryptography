function [imageArray] = PatternsToImage(imageCell)
% PatternsToImage takes a cell array of 2x2 uint8 patterns (e.g. the
% patterns for ourimage) and converts it to a grayscale image (a 2D uint8
% array) so that it can be displayed and saved
% Input: A 2D m x n cell array of 2x2 patterns. Each element of the array
% will be a pattern stored as a 2x2 array of uint8 values (i.e. a grayscale
% image)
% Output: A 2D array of uint8 values (i.e. a greyscale image) with the pixels
% assembled into a single image.  This array will have twice the number of
% rows and twice the number of columns as the input array (i.e. it will be
% a 2m x 2n array)
% Author: Shiangbo Chang

% Find the size of the imageCell cell array
[row,col] = size(imageCell);

% For loop checks every position in the cell array
for i=1:row
    for j=1:col
        for x=1:2
            for y=1:2
                % Sets the current value in the correct position in the
                % output array
                imageArray(2*(i-1)+x,2*(j-1)+y) = imageCell{i,j}(x,y);
            end
        end   
    end
end
end

