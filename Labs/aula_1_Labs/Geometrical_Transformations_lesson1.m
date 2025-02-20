
clear all, close all

img = ones(-300,300);
figure;
imshow(img);  axis on; hold on;
% ------ letra T ------ %
top = [ 50  55  60  65  70  75  80
       100 100 100 100 100 100 100];
L_side = [ 50  50
          105 110];      
R_side = [ 80  80
          105 110];      
troncoL =  [60   60  60  60  60  60
           110 115 120 125 130 135];     
troncoR =  [70   70  70  70  70  70
           110 115 120 125 130 135];     
      
SHAPE = 50+[top R_side troncoR troncoL L_side ];
       
plot(SHAPE(1,:),SHAPE(2,:),'r.','markersize',18)

T = [1 0 0; 0 1 0; 30 30 1];
Translacao = [SHAPE' ones(length(SHAPE),1)] * T;
plot(Translacao(:,1),Translacao(:,2),'g.','markersize',18);

teta = (11*pi/180);
R  = [ cos(teta) sin(teta)  0 
       -sin(teta) cos(teta) 0
              0         0   1];
        
K = 2;
teta1 = (0*pi/180);
         
Rotacao = [SHAPE' ones(length(SHAPE),1)] * R;
plot(Rotacao(:,1),Rotacao(:,2),'b.','markersize',18);

cx =1.5;
cy = 1;
S = [cx 0 0; 0 cy 0; 0 0 1];
Scaling = [SHAPE' ones(length(SHAPE),1)] * S;
plot(Scaling(:,1),Scaling(:,2),'m.','markersize',18);

sv = 0.6;
sh = 0.8;
SCH_V = [ 1 0 0; sv 1 0; 0 0 1]
SCH_H = [ 1 sh 0; 0 1 0; 0 0 1]

Shear_h = [SHAPE' ones(length(SHAPE),1)] * SCH_H;
Shear_v = [SHAPE' ones(length(SHAPE),1)] * SCH_V;


plot(Shear_h(:,1),Shear_h(:,2),'k.','markersize',18);
plot(Shear_v(:,1),Shear_v(:,2),'c.','markersize',18);


   