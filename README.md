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
- Mathematical model of teh system using MATLAB <br/>
- Control sysytem should be provided using a high-level programming language. Must show that the control algorithm will give the requirements for the system. <br/>
- Have a simulation with the control system and mathematical model by connecting Coppelia Sim to MATLAB <br/>
- The design hardware should have explanations such as hardware and software relationships. <br/>
<br/>


Here is the link to this project's presentation: <br/>
<br/>
The Furata Pendulum was studied, modeled and simulated. The Furata Pendulum is a driven arm that rotates on the horizontal plane, which is connected to another arm which rotates on the vertical plane. This project's objective have the arm in the horizontal plane balance vertically by controlling motors and the required force to do so. This project will be done virtually, utilizing MATLAB and SIMULNK and CoppeliaSim. <br/>
<br/>
The following figures are the logical viewpoints of this project. <br/>
![image](https://user-images.githubusercontent.com/96210360/146433259-ce6de2ae-dac9-475f-a05e-018e5b36d41f.png) <br/>

![image](https://user-images.githubusercontent.com/96210360/146433742-57a6b72a-248c-456a-8f77-55d91c1dfecb.png) <br/>







# 2. Modeling
The dynamics of the Furuta Pendulum will utilize CoppeliaSim. This program will allow the computation of dynamic properties as well as a visual representation of the working system. The code used to connect the Coppelia will be from Matlab. <br/>
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
![image](https://user-images.githubusercontent.com/96210360/146447646-c7720407-7977-4df0-98ba-56b007818ac8.png) <br/>
In the figure above the two angles show the degreesof freedom for the pendulum. The motor helps to guide the angles to be positive .




