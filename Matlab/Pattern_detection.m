% Apply thresholding
img_thresh = maxPooledImage > 0.5;
pattern = conv_ptn_1;


% Calculate the cross-correlation between the pattern and the thresholded image
corr = normxcorr2(pattern, img_thresh);
[row, col] = find(abs(corr) > 0.4);

% Display the thresholded image and the pattern with boxes around the matched regions
figure;
imshow(img_thresh);
hold on;
for i = 1:length(row)
    rectangle('Position', [col(i) - size(pattern, 2)/2, row(i) - size(pattern, 1)/2, size(pattern, 2), ...
        size(pattern, 1)], 'EdgeColor', 'r', 'LineWidth', 2);
end
title('Thresholded Image with Matched Regions Highlighted');

disp("Pattern detected") 
disp(length(row));