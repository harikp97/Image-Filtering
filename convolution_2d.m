function z=convolution_2d(x,h)          % Receiving the image and filter as input
        z=zeros(size(x));               % Defining an empty matrix for output
        x=[zeros(size(x,1),1) x];       % Input array padded with column of zeros on left
        x=[x zeros(size(x,1),1)];       % Input array padded with column of zeros on right
        x=[zeros(1,size(x,2)); x];      % Input array padded with row of zeros on top
        x=[x;zeros(1,size(x,2))];       % Input array padded with row of zeros on bottom
        r=size(z,1);                    % Number of rows in output matrix
        c=size(z,2);                    % Number of columns in output matrix
        for m=1:r                       % For loop covering every row
            for n=1:c                   % For loop covering every column
                % Convolution
                    z(m,n)=x(m+1-1,n+1-1)*h(3,3)+x(m+1-1,n+1)*h(3,2)+x(m+1-1,n+1+1)*h(3,1)+x(m+1,n+1-1)*h(2,3)+x(m+1,n+1)*h(2,2)+x(m+1,n+1+1)*h(2,1)+x(m+1+1,n+1-1)*h(1,3)+x(m+1+1,n+1)*h(1,2)+x(m+1+1,n+1+1)*h(1,1);
            end
        end