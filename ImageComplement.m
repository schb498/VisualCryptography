function [complement] = ImageComplement(greyscale)
% ImageComplement takes an image and swaps black for white and white for black
% Input: A 2D array of uint8values (i.e. a greyscale image) containing
% black and white pixels
% Output: A 2D array of uint8values (i.e. a greyscale image) of the
% complement of the input image (i.e. black has been swapped for white and
% white for black)
% Author: Shiangbo Chang

% Creates output uint8 array containing complement values of the input array
complement = uint8(255 - greyscale);

% % Find the size of the input array (greyscale image)
% [row,col] = size(greyscale);
% 
% % Checks every position for 'greyscale' array
% for i=1:row
%     for j=1:col
%         % Sets current position in the new array 'complement' as the
%         % complement of value in the current position in 'greyscale'
%         complement(i,j) = 255 - greyscale(i,j);
%     end
% end
% end

