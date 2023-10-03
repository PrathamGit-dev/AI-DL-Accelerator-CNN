
image = imread('image.png');
gray_image = rgb2gray(image);
%Convolution Operation
conv_image_1 = cnn2dConvolution(gray_image,W,b);

subplot(1, 2, 1);
imshow(gray_image);
title('Gray Image');

subplot(1, 2, 2);
imshow(conv_image_1);
title('Image @ Laplace');