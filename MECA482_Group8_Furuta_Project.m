%% Group 8
% Riczi Cano
% Greta Fischer
% Flor Contreras
% Timothy Grice
% Marcus Parsons
%% Modeling
% Terms
% L_r = Rotary Arm Length 
% J_r = Rotary Arm Moment of Inertia
% Theta = Increases Positively when it rotates CCW
% L_p = Pendulum Link Length
% CoM = (L_p)/2
% Moment of Inertia is J_p at CoM
% q_i = generalized coordinates
% qT = [theta alpha] functions of time
% theta = rotary arm angle
% alpha = inverted pendulum angle
% T = Kinetic Energy =.5*m*V^2
% V = Potential Energy =m*g*h
% L = T - V = Lagrangian of the system
%% Units
M = .5; % kg, mass of the cart, from umich.edu source that was provided
m = .2; % kg, mass of the pendulum
b = 0.1; % N/m/s
L_r = 0.6; % m
J_r = 0.006; % kg*m^2
% Pre-Lab
% Linearize the first and second nonlinear inverted rotary pendulum
% equations
% Initial Conditions
Theta_naught = 0;
alpha_naught = 0;
thetadot_naught = 0;
alphadot_naught = 0;

