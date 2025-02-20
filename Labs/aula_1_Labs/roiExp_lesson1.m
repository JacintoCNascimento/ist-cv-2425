 
clear all,

img = imread('veiculoGray.jpg');

imshow(img);hold on;
N=0; but=1;

%while (but ==1 | but == 32)
while (but ==1)
    
    [ci,li,but]=ginput(1);
    but
    if but == 1 %add point
        N     = N+1;
        cp(N) =  ci;
        lp(N) =  li;
        plot(ci,li,'r.','MarkerSize',8); drawnow;
        if N > 1
            plot(cp(:),lp(:),'r.-','MarkerSize',8); drawnow;
        end
    end
    if but == 32 %remove point
        N=N-1;
        cp =  cp(1:N);
        lp =  lp(1:N);
        imshow(img);hold on;
        if N > 1
            plot(cp(:),lp(:),'r.-','MarkerSize',8); drawnow;
        end
    end
end
cp=cp'; lp=lp';

BW = roipoly(img,cp,lp);
ImCrp = img.*uint8(BW);
imagesc(ImCrp); colormap gray

% ------------ Another example ---------- %

I = imread('eight.tif');
figure, imshow(I); hold on,
c = [222 272 300 270 221 194];
r = [21 21 75 121 121 75];

c = [ c c(1)]
r = [ r r(1)]

plot(c,r,'*b-');

BW = roipoly(I,c,r);
figure;imshow(BW);

imgFinal = BW.*double(I);
figure;imagesc(imgFinal); colormap gray

