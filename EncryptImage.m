function [cipher] = EncryptImage(greyscale,key)
% EncryptImage encrypts a plain image using a key array of patterns (a cell
% array containing 2x2 patterns), to obtain an encrypted cipher array of
% patterns (a cell array containing 2x2 patterns)
% Inputs: Two inputs in the following order
%   1) A 2D array of uint8 values (i.e. a grayscale image) containing the
%   black and white plain image to encrypt.
%   2) A 2D cell array of 2x2 patterns to act as a key array of patterns.
%   Each element of the cell array will be a pattern stored as a 2x2 array
%   of uint8 values (i.e. a grayscale image)
% Output: A 2D cell array of 2x2 patterns which is our cipher array of
% patterns (i.e. it was created by encrypting our plain image). Each
% element of the array will be a pattern stored as a 2x2 array of uint8
% values (i.e. a grayscale image)
% Author: Shiangbo Chang

% Creates new array being identical to key array
cipher = key;

% Finds size of greyscale array
[row,col] = size(greyscale);

% For loop checks every position in the greyscale array
for i=1:row
    for j=1:col
        % If statement checks if current position is black (less than 128)
        if greyscale(i,j) < 128
            % Changes current position in cipher array into its complement
            % by calling ImageComplement function
            cipher{i,j} = ImageComplement(key{i,j});
        end
    end
end
end

