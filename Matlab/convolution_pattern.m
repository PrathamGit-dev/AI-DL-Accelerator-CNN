W = [0 -1 0; -1 4 -1; 0 -1 0];
b = 0;

ptn = imread('ptn.png');
gray_ptn = rgb2gray(ptn);
W = [0 -1 0; -1 4 -1; 0 -1 0];
b = 0;
%Convolution Operation
conv_ptn_1 = cnn2dConvolution(gray_ptn,W,b);

subplot(1, 2, 1);
imshow(gray_ptn);
title('Gray Pattern');

subplot(1, 2, 2);
imshow(conv_ptn_1);
title('Pattern @ Laplace filter');