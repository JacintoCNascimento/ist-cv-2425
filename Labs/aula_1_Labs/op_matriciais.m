
close all, clear all


%exemplo1  
A = zeros(9);
A(1:3,1:3) = 1
B = zeros(9);
B(7:9,7:9) = 1

%exemplo2  
A = zeros(9);
A(1:6,1:6) = 1;
B = zeros(9);
B(6:9,6:9) = 1


figure; 
subplot(1,2,1);imagesc(A); 
subplot(1,2,2);imagesc(B); colormap gray

% op. NOT
figure; 
subplot(1,2,1); imagesc(~A); 
subplot(1,2,2); imagesc(~B); colormap gray

% op. AND
C1 = A & B;
figure; imagesc(C1); colormap gray
C2 = A .* B;
figure; imagesc(C2); colormap gray

% op. OR
C3 = A | B;
figure; imagesc(C3); colormap gray

% op. XOR
C4 = xor(A,B);
figure; imagesc(C4); colormap gray

% op. AND and NOT
C5 = A & (~B);
figure; imagesc(C5); colormap gray