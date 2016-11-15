% A black and white image has been filtered in this code, change image
%   files and filter required to view various results.
% The code for convolution has been separately written as a function named
% 'convolution_2d.m' and has been used in the code for filtering.
a=imread('bw.jpg');               % reading the image
r=a(:,:,1);                         % splitting the RGB array into 3 separate 2D arrays 
g=a(:,:,2);
b=a(:,:,3);
h=ones(3)*(1/9);                    % defining the filters
% h=[0 -1 0;-1 4 -1;0 -1 0]*(1/4);
r1=convolution_2d(r,h);             % passing the R,G,B arrays through the filter
g1=convolution_2d(g,h);
b1=convolution_2d(b,h);
res1=cat(3,r1,g1,b1);               % Reforming the image by assembling the filtered 2D arrays
r2=convolution_2d(r1,h);            % Repeated filtering
g2=convolution_2d(g1,h);
b2=convolution_2d(b1,h);
res2=cat(3,r2,g2,b2);
r3=convolution_2d(r2,h);
g3=convolution_2d(g2,h);
b3=convolution_2d(b2,h);
res3=cat(3,r3,g3,b3);
figure(1);          
image(a);                           % Original image
figure(2);              
image(res1);                        % Image after filtering once
figure(3);  
image(res2);                        % Image after filtering twice
figure(4);
image(res3);                        % Image after filtering thrice
