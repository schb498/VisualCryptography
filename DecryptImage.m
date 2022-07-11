function [decrypt] = DecryptImage(cipher,key)
% DecryptImage Decrypts a cipher image using the key image
% Inputs: Two inputs in the following order
%   1) A 2D array of uint8 values (i.e. a grayscale image) containing the
%   black and white cipher image (each pixel will have a value of 0 or 255)
%   2) A 2D array of uint8 values (i.e. a grayscale image) containing the
%   black and white key image (each pixel will have a value of 0 or 255)
% Output: A 2D array of uint8 values (i.e. a grayscale image) containing
% the decrypted image, this will be the same size as the key.
% Author: Shiangbo Chang

% Finds size of key image array
[row,col] = size(key);

% Creates new array with same size as the key array, containing all zeros 
decrypt = uint8(zeros(row,col));

% For loop goes through every value of the key array
for i=1:row
    for j=1:col
        % Compares value of current position with the value in the same
        % position in cipher array
        if (key(i,j)) == (cipher(i,j))
            % Sets value in the current position for decrypt array as 255
            decrypt(i,j) = 255;
        end
    end
end
end

