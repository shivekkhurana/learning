close all;
H = tf([5], [2 3 1]);
bode(H);

%constant gain -> gives 
% - 20log(K) line 
% - no change in phase
H = tf([5]);
figure; bode(H);

%differntiator -> S or w in tf; G(S) = S
H = tf([1 0], [1]);
figure; bode(H);

%integrator
H = tf(1, [1 0]);
figure; bode(H);