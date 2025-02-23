# Modelling-Flows-with-MATLAB
The repository contains MATLAB scripts for modeling ideal fluid flows using potential flow theory. It includes functions for source, sink, vortex, doublet, and uniform flow. These are combined to simulate complex flows, such as lifting flow over a cylinder, enabling visualization and analysis of fundamental aerodynamic phenomena.

# MATLAB Flow Modeling Repository

## Introduction

This repository contains MATLAB scripts for modeling ideal fluid flows using potential flow theory. It includes functions for fundamental flow elements like sources, sinks, vortices, doublets, and uniform flow. By combining these elements, more complex flows such as lifting flow over a cylinder can be simulated. The repository is structured with modular functions to allow easy modification and integration for further analysis.

## Getting Started

### Setting Up the Repository

To use the scripts, you need to download or clone this repository. If you have a ZIP file, extract it to a location on your computer. If using Git, open MATLAB, navigate to the appropriate folder, and run:

```matlab
!git clone <repository-link>
```

Once downloaded, open MATLAB and set the folder containing the scripts as your working directory. You can do this manually in the **Current Folder** section or by running:

```matlab
cd('C:\Users\YourName\Documents\MATLAB\FlowModeling')
```

## Understanding the Functions

This repository includes several MATLAB functions:

- `Source.m`: Computes the potential (`phi`) and stream (`psi`) functions for a source flow.
- `Sink.m`: Computes flow characteristics for a sink.
- `Vortex.m`: Models a vortex flow.
- `Doublet.m`: Represents a doublet flow, useful for cylinder simulations.
- `UniformFlow.m`: Defines a uniform flow.
- `LiftingFlow.m`: Combines uniform flow, a doublet, and a vortex to simulate lifting flow over a cylinder.

Each function is stored separately and can be called from other scripts.

## Running a Simple Flow Function

To visualize a basic source flow, run:

```matlab
[x, y] = meshgrid(linspace(-5, 5, 100));  
[phi, psi] = Source(x, y, 10, 0, 0);  
contour(x, y, psi, 50);  
axis equal;  
title('Source Flow Streamlines');  
xlabel('X'); ylabel('Y');
```

For a vortex flow:

```matlab
[x, y] = meshgrid(linspace(-5, 5, 100));  
[phi, psi] = Vortex(x, y, 50, 0, 0);  
contour(x, y, psi, 50);  
axis equal;  
title('Vortex Flow Streamlines');  
xlabel('X'); ylabel('Y');
```

## Combining Multiple Flows

To model flow past a cylinder using uniform flow and a doublet:

```matlab
[x, y] = meshgrid(linspace(-5, 5, 100));  
U = 5; alpha = 0;  
K = 100;  
[phi_uniform, psi_uniform] = UniformFlow(x, y, U, alpha);  
[phi_doublet, psi_doublet] = Doublet(x, y, K, 0, 0);  

phi_total = phi_uniform + phi_doublet;  
psi_total = psi_uniform + psi_doublet;  

figure;
hold on;
contour(x, y, psi_total, 50, 'b');  
contour(x, y, phi_total, 50, 'r');  
plot(0, 0, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8);  
axis equal;
xlabel('X'); ylabel('Y');
title('Flow Over a Cylinder');
hold off;
```

## Adding Circulation for Lift Generation

To simulate lifting flow over a cylinder, add a vortex:

```matlab
Gamma = 50;  
[phi_vortex, psi_vortex] = Vortex(x, y, Gamma, 0, 0);  

phi_total = phi_uniform + phi_doublet + phi_vortex;  
psi_total = psi_uniform + psi_doublet + psi_vortex;  

figure;
hold on;
contour(x, y, psi_total, 50, 'b');  
contour(x, y, phi_total, 50, 'r');  
plot(0, 0, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8);  
axis equal;
xlabel('X'); ylabel('Y');
title('Lifting Flow Over a Cylinder');
hold off;
```

## Experimenting with Parameters

Modify parameters like:

- **Source strength (Q) in `Source.m`**
- **Vortex strength (Gamma) in `Vortex.m`**
- **Doublet strength (K) in `Doublet.m`**
- **Angle (alpha) in `UniformFlow.m`**

Changing these values in the function calls will alter the flow patterns.

## Conclusion

This repository provides a structured approach to modeling potential flows in MATLAB. By combining fundamental flow elements, complex aerodynamic flows can be visualized and analyzed. The modular design allows easy modifications for further study and simulations.

