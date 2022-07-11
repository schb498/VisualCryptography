function [imageCell] = ImageToPatterns(imageArray)
% ImageToPatterns converts an image back into a cell array of 2x2 uint8
% patterns so that we can more easily work with the patterns
% Input: A 2D array of uint8 values (i.e. a grayscale image) containing an
% image made up of lots of black and white pixels
% Output: A 2D cell array of 2x2 patterns extracted from the image.  Each
% element of the array will be a pattern stored as a 2x2 array of uint8
% values (i.e. a grayscale image)
% Author: Shiangbo Chang

% Finds the size of the greyscale array inputted
[row,col] = size(imageArray);

% Uses mat2cell function to convert cell into uint8 matrix
imageCell = mat2cell(G,2.* ones(row/2,1),2.* ones(col/2,1));