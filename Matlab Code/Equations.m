% Initial Conditions:
Jp=.5;Mp=6;Lr=12;Jr=.6;Lp=15;g=9.81;Br=10;Bp=15;Kg=16;kt=2;km=3;Rm=.3;
Jt=Jp*Mp*Lr^2+Jr*Jp+(1/4)*Jr*Mp*Lp^2;

% State Space Representation
A = [0 0 1 0;0 0 0 1;0 (1/(4*Jt))*Mp^2*Lp^2*Lr*g (-1/Jt)*Br*(Jp+1/4*Mp*Lp^2) (-1/(2*Jt))*Bp*Mp*Lp*Lr;0 .5*Mp*Lp*g*(Jr+Mp*Lr^2)/Jt (1/(2*Jt))*Mp*Lp*Lr*Br (-1/Jt)*Bp*(Jr+Mp*Lp^2)]; % Add here linearized system model instead of zero
B = [0;0;(1/Jt)*(Jp+.25*Mp*Lp^2);(1/(2*Jt))*Mp*Lp*Lr]; % Add here input vector instead of zero
C = eye(2, 4);   % Shows we have two outputs
D = zeros(2,1);

% Add actuator dynamics (if you would consider to add)
A(3,3) = A(3,3)-Kg^2*kt*km/Rm*B(3); % Add here actuator dynamics instead of zero
A(4,3) = A(4,4)-Kg^2*kt*km/Rm*B(4); % Add here actuator dynamics instead of zero
B = Kg * kt * B / Rm;

poles = eig(A);
% Load into state-space system
sys_FURPEN_ol = ss(A,B,C,D) % Open loop system model
