

clear all, close all

img = imread('veiculoGray.jpg');
figure;
imagesc(img); colormap gray

imageN = imnoise(img,'gaussian',0,0.12);
figure;
imshow(imageN);

% ----------- mean experience ---- 
h = fspecial('average');
imageF = imfilter(imageN,h);
figure;
imshow(imageF);
% -----------------

N = 20;
h = fspecial('average',N);
imageF_original = imfilter(img,h);
figure;
imshow(imageF_original);

% ---------- median experience 

imgNoise =imnoise(img,'salt & pepper',0.15);
imgMed = median(imgNoise,2);
figure;  
subplot(1,2,1); imagesc(imgNoise);colormap gray
subplot(1,2,2); imagesc(imgMed);colormap gray








