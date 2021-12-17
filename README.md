# Furata Pendulum
California State University, Chico, Fall 2021 <br/>
<br/>
Members: <br/>
Riczi Cano, Greta Fischer, Flor Contreras, and Timonthy Grice <br/>
# Table of Contents <br/>
1. Introduction
2. Modeling
3. Sensor Calibration
4. Controller Design and Simulations
5. Simulation Code
6. Reference
# 1. Introduction:
Deliverables: <br/>
- Build a webpage using GitHub <br/>
- Mathematical model of the system using MATLAB <br/>
- Control system should be provided using a high-level programming language. Must show that the control algorithm will give the requirements for the system. <br/>
- Have a simulation with the control system and mathematical model by connecting CoppeliaSim to MATLAB <br/>
- The design hardware should have explanations such as hardware and software relationships. <br/>
<br/>


Here is the link to this project's presentation: <br/>
<br/>
The Furata Pendulum was studied, modeled and simulated. The Furata Pendulum is a driven arm that rotates on the horizontal plane, which is connected to another arm which rotates on the vertical plane. This project's objective have the arm in the horizontal plane balance vertically by controlling motors and the required force to do so. This project will be done virtually, utilizing MATLAB and SIMULNK and CoppeliaSim. <br/>
<br/>
The following figures are the logical viewpoints of this project. <br/>
![image](https://user-images.githubusercontent.com/96210360/146433259-ce6de2ae-dac9-475f-a05e-018e5b36d41f.png) <br/>


# 2. Modeling
The dynamics of the Furuta Pendulum will utilize CoppeliaSim. This program will allow the computation of dynamic properties as well as a visual representation of the working system. The code used to connect the Coppelia will be from Matlab. An important aspect to the Furuta Pendulum will be the torque applied to the pendulum via a DC motor <br/>
<br/>
Nomenclature <br/>
x = position of arm <br/>
θ = angle of pendulum <br/>
F = applied force <br/>
m = mass of pendulum <br/>
l = length pendulum <br/>
g = gravity <br/>
fo = friction coefficient <br/>
<br/>
![download](https://user-images.githubusercontent.com/75288242/146471234-ebe9ad8e-3f50-4094-823a-be010ce2468f.png) <br/>
In the figure above the two angles show the degreesof freedom for the pendulum. The motor helps to guide the angles to be positive. <br/>
<br/> The figure below is the control theory model of the Furuta Pendulum
![image](https://user-images.githubusercontent.com/96210360/146433742-57a6b72a-248c-456a-8f77-55d91c1dfecb.png) <br/>

The equations below are the basic tranfer functions. These functions would help to determine the system poles and zeros and defines the system. <br/>
![image](https://user-images.githubusercontent.com/96210360/146451362-ff986c34-5e93-48be-84ed-b6557293b0af.png) <br/>

![image](https://user-images.githubusercontent.com/96210360/146451553-38dd1b42-2811-4f19-98ff-e50f190c1940.png)<br/>
Using the linear motion functions we can represent them in state-space form. They can be put into the matrices that are shown below. The g in the matricesis for gravity and the R and km are the resistance and torwue constants. <br/>

![image](https://user-images.githubusercontent.com/96210360/146450775-12af64f5-8f56-4aed-a4f2-d7bdfeb0e0fa.png)

![image](https://user-images.githubusercontent.com/96210360/146450918-2cbee6b6-fec3-4945-9bdd-71c7976bb98a.png)


![image](https://user-images.githubusercontent.com/96210360/146451181-52138e81-081d-4370-93d0-49cbace54d70.png)

# 3. Sensor Calibration <br/>
No sensor calibration is needed due to this project being completely virtual. 

# 4. Controller Design and Simulation 




# 5. Simulation Code <br/>
% Initial Conditions:
Jp=.5;Mp=6;Lr=12;Jr=.6;Lp=15;g=9.81;Br=10;Bp=15;Kg=16;kt=2;km=3;Rm=.3;
Jt=Jp*Mp*Lr^2+Jr*Jp+(1/4)*Jr*Mp*Lp^2;
% State Space Representation

A = [0 0 1 0;0 0 0 1;0 (1/(4*Jt))*Mp^2*Lp^2*Lr*g (-1/Jt)*Br*(Jp+1/4*Mp*Lp^2) (-1/(2*Jt))*Bp*Mp*Lp*Lr;0 .5*Mp*Lp*g*(Jr+Mp*Lr^2)/Jt (1/(2*Jt))*Mp*Lp*Lr*Br (-1/Jt)*Bp*(Jr+Mp*Lp^2)]; <br/>
% Add here linearized system model instead of zero <br/>
B = [0;0;(1/Jt)*(Jp+.25*Mp*Lp^2);(1/(2*Jt))*Mp*Lp*Lr]; % Add here input vector instead of zero <br/>
C = eye(2, 4);   % Shows we have two outputs <br/>
D = zeros(2,1);<r/>

% Add actuator dynamics (if you would consider to add) <br/> 
A(3,3) = A(3,3)-Kg^2*kt*km/Rm*B(3); % Add here actuator dynamics instead of zero <br/>
A(4,3) = A(4,4)-Kg^2*kt*km/Rm*B(4); % Add here actuator dynamics instead of zero <br/> 
B = Kg * kt * B / Rm; <br/> 

poles = eig(A); <br/>
% Load into state-space system <br/>
sys_FURPEN_ol = ss(A,B,C,D) % Open loop system model

function K = control_FURPEN(A,B,zeta,wn,d_p3,d_p4)

    % Location of dominant poles along real-axis
    sigma = zeta * wn;
    % Location of dominant poles along img axis (damped natural freq wn*(1-zeta)^0.5)
    wd = wn*(1-zeta)^0.5
    % Desired poles (-30 and -40 are given)
    poles = [-sigma+j*wd, -sigma-j*wd, d_p3, d_p4];
    % Find control gain using MATLAB pole-placement command (acker or place)
    K = acker(A, B, poles)

end



# 6. References <br/> 
1. Quanser, Rotary Inverted Pendulum,  https://www.quanser.com/products/rotary-inverted-pendulum/ <br/>
2.  M. W. Spong, P. Corke, and R. Lozano, Nonlinear control of the reaction wheel pendulum,Automatica, vol. 37, no. 11, pp. 1845–1851, 2001 <br/>
4. https://ctms.engin.umich.edu/CTMS/index.php?example=InvertedPendulum&section=SystemModeling <br/>



