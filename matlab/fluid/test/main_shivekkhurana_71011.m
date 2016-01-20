%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shivek Khurana
% 71011
% 1st Practical Exam
% Submitted on January 15, 2015

% usage : 
% >> main_shivekkhurana_71011();
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = main()
    

    %% User constraints

    num_elements = input('Number of elemements : ');
    order = input('Order of each element : ');

    boundary_u0 = input('Boundary value u0 : ');
    boundary_uL = input('Boundary value uL : ');
    
    run(num_elements, order, boundary_u0, boundary_uL);

end

function [] = run(num_elements, order, boundary_u0, boundary_uL)
    %% Constants

    kappa = 385;
    beta = 25;
    T0 = 100;
    Tinf = 20; %Temp. at infinity
    P = .012; %Pressure constant
    A = 0.000005; %Area of cross section
    start = 0;
    L = 0.1;
    
    %% Computation of Kij

    % Zaye using lagrange
    zaye = lagrange(order, start, L);
    disp('The computed zaye function is : ');
    disp(zaye);
    syms T;
    for i=1:order+1
        for j=1:order+1
            K(i, j) = int(kappa*A*diff(zaye(1, i))*diff(zaye(1, j)) + beta*A*(T-T0), start, L/num_elements);
        end
    end
    disp('The Kij matrix is : ');
    disp(K);
    
    %% Now let's assemble Kij
    assembeledMatrix = zeros(num_elements+1);
    for i=1:num_elements
        assembeledMatrix(i, i) = assembeledMatrix(i, i) + K(1, 1);
        assembeledMatrix(i, i+1) = assembeledMatrix(i, i+1) + K(1, 2);
        assembeledMatrix(i+1, i) = assembeledMatrix(i+1, i) + K(2, 1);
        assembeledMatrix(i+1, i+1) = assembeledMatrix(i+1, i+1) + K(2, 2);
    end
    disp('The assembeled matrix is : ');
    disp(assembeledMatrix);

    %% Getting the RHS Temperature Matrix
    RHSFunction=@(x,k)(beta*P*(x - T0));
    F = zeros(num_elements+1, 1);
    
    for i=1:num_elements
        F(i, 1) = RHSFunction(i, order); %TODO : Something here
    end
    
    %% Assembling the RHS
    
    assembeledF = zeros(num_elements+1, 1);
    for i=1:num_elements
        assembeledF(i, 1) = assembeledF(i, 1) + F(i, 1);
        assembeledF(i+1, 1) = assembeledF(i+1, 1) + F(i+1, 1);
    end
    
    disp('The assembeled F is : ');
    disp(assembeledF);
    
    disp('The inverse of assembeled matrix is : ');
    disp(inv(assembeledMatrix));
    
    % Imposing boundary conditions
    
    disp('The U matrix is');
    U = inv(assembeledMatrix)*F;
    disp(U);
    
end %end main

%% Helper Functions

% Gauss Quadrature
function [ S ] = gaussQuadrature(Integ,start,last,order)

    syms t x

    c1=(start+last)/2;
    c2=(last-start)/2;

    S=0;
    if order==1
         w(1)=0;
         W(1)=2;
         s=matlabFunction(c2*subs(Integ,x,c1+c2*t));
    elseif order==2
         w(1)= -1/sqrt(3);w(2)= 1/sqrt(3);
         W(1)=1;W(2)=1;
         subs(Integ,x,c1+c2*t);
         s=matlabFunction(c2*subs(Integ,x,c1+c2*t));
    elseif order==3
         w(1)=5/9; w(2)=8/9; w(3)=5/9;
         W(1)=-sqrt(3/5);W(2)=0;W(3)=sqrt(3/5);
    end

    for i=1:order 
        S=S+W(i)*s(w(i));
    end
end


% Lagrange
function [ sig ] = lagrange(n,start,he)
    P=1;    
    syms x;
    for i=start+1:n+1
        for j=start+1:n+1
            if (j-1)~=(i-1)
            P=P*(x-(j-1)*he/n)/((i-1)*he/n -(j-1)*he/n);
            end
        end
        sig(i)=P;
        P=1;
    end 
end







