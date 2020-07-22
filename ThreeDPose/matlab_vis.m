%test
clear;clc;close all
% a=dlmread("D:\code\python\ThreeDPose\unity_data\kps100.txt");
a=[0.292807,14.994286,6.560671;
-0.123055,15.480020,8.367174;
-2.666008,19.526012,9.689341;
-3.994198,19.631011,9.902868;
-3.537779,20.058028,9.978683;
1.467720,11.799177,6.442903;
-1.372830,10.170244,5.793396;
-2.116019,9.653587,3.315798;
-1.332626,9.906492,1.420080;
-2.152191,9.461523,2.985400;
0.378545,12.237494,4.861950;
-0.739344,12.452946,4.971550;
-0.678598,14.203241,5.388392;
-0.671332,13.130285,4.690326;
-1.256000,12.918788,5.623796;
0.216525,13.818989,12.736559;
0.793380,13.383041,17.217848;
-0.301103,13.578390,22.771406;
-0.406112,13.623824,23.280164;
0.380849,11.442492,12.643937;
-2.110893,11.706800,18.199155;
-1.205901,12.321800,22.871755;
-2.116101,12.384523,24.476315;
-0.500211,12.706436,11.490892];

parent =[15,1,2,3,3,  15,6,7,8,8,   12,15,14,15,24,  24,16,17,18,  24,20,21,22, 0];
plot3(a(:,1),-a(:,2),-a(:,3),'ro','MarkerSize',2,'MarkerFaceColor','r')
for i=1:24
    if(parent(i)~=0)
        line([a(i,1) a(parent(i),1)],[-a(i,2) -a(parent(i),2)],[-a(i,3) -a(parent(i),3)])
    end
end
axis equal
axis off