clc
clear all
close all
I = imread ('ab.jpg');
figure;
imshow (I);
title ( 'First Image' );
g = size(I);
J = imread ( 'Capture.JPG' );
J = imresize (J,[g(1),g(2)]);
figure;
imshow(J);
title('Second Image');
for i = 1:1:g(1)
    for j = 1:g(2)
        for k = 1:3
            output (i,j,k)= (I(i,j,k)+J(i,j,k));
        end
    end
end
figure;
imshow(output);
title('Thired Image');

