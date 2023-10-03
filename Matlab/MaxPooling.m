poolSize = [2, 2];
image = conv_2;
% Determine the size of the output image
outputSize = floor(size(image) ./ poolSize);

% Preallocate the output image
maxPooledImage = zeros(outputSize);

% Perform max pooling on the image
for i = 1:outputSize(1)
    for j = 1:outputSize(2)
        subImage = image((i-1)*poolSize(1)+1:i*poolSize(1), ...
                         (j-1)*poolSize(2)+1:j*poolSize(2));
        maxPooledImage(i,j) = max(subImage(:));
    end
end
% Display the original and pooled images side by side
subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(maxPooledImage);
title('Max Pooled Image');