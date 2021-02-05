function f=lorenz_ext(t,X)
%
%Lorenz_like equation
% a*(y(1)-y(2));
% -b*y(2)+y(1)*y(3);
% -c*y(3)+y(1)^2+d*y(2)^2
%
%        
%
%        See:
%    K. Ramasubramanian, M.S. Sriram, "A comparative study of computation 
%    of Lyapunov spectra with different algorithms", Physica D 139 (2000) 72-86.
%
% --------------------------------------------------------------------
% Copyright (C) 2004, Govorukhin V.N.


% Values of parameters


% 1
a = 1;a1 = 1; b = 3; b2 = -0.4; b3 = 1;
b4 = 0.1; c = 0.1; c1=1; k = 0.9; d = -0.05;


% 2

% a = 1;a1 = 1; b = 3; b2 = 0.25; b3 = 1;
% b4 = 0.1; c = 0.1; c1=1; k = 0.9; d = 0.01;


x=X(1); y=X(2); z=X(3); w=X(4);


Y= [X(5), X(9), X(13), X(17);
    X(6), X(10), X(14), X(18);
    X(7), X(11), X(15), X(19);
    X(8), X(12), X(16), X(20)];



f=zeros(20,1);

f(1)=a*y-a1*x;
f(2)=b*x-b2*y-b3*x*z+b4*w;
f(3)=-c*z+c1*x*y;
f(4)=-k*x-d*w;

%Linearized system

 Jac=[-a1,        a,     0,    0;
      b-b3*z,    -b2,  -b3*x,   b4;
      c1*y,      c1*x,   -c,      0;
      -k,          0,    0,   -d];
  
%Variational equation   
f(5:20)=Jac*Y;

%Output data must be a column vector


