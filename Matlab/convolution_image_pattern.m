conv_2 = cnn2dConvolution(conv_image_1,conv_ptn_1,b);

subplot(1, 3, 1);
imshow(conv_image_1);
title('Filtered Image');

subplot(1, 3, 2);
imshow(conv_ptn_1);
title('Filtered Pattern');

subplot(1, 3, 3);
imshow(conv_2);
title('Convuled output');