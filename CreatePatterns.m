function [Array] = CreatePatterns()
% CreatePatterns Creates a 1D cellarray containing six special 2x2 patterns
% of uint8values, these patterns will be used for key generation
% Inputs: None
% Output: A single 1 x6 cellarray of patterns.  It will contain the
% following six2x2 patterns (in this order): bottom 2 black, top 2 black,
% left 2 black, right 2 black, leading diagonal black, off diagonal
% blackEach pattern will be stored as a 2x2 uint8 value array (i.e. a
% greyscale image)
% Author: Shiangbo Chang

% Creates six different patterns containing 4 uint8 values
% Every even pattern is the complement of its previous, which calls the
% ImageComplement function
patt1 = uint8([255,255;0,0]);
patt2 = ImageComplement(patt1);
patt3 = uint8([0,255;0,255]);
patt4 = ImageComplement(patt3);
patt5 = uint8([0,255;255,0]);
patt6 = ImageComplement(patt5);

% Creates output as cell containing all six patterns in order
Array = {patt1,patt2,patt3,patt4,patt5,patt6};
end

