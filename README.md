# fluid-flow

## Numerical Methods Final Project
This program models the flow of a fluid with a constant horizontal velocity around a
symmetrical airfoil using MATLAB. The script takes a streamline matrix defined in Microsoft Excel and
calculates the horizontal velocity, vertical velocity, and total velocity of the fluid using discrete
and regression methods. It also uses plots to display streamlines visually.

### Inputs
There is only one input for the program:
- An excel file containing a matrix whose entries are the values of streamlines around an object

### Outputs
The program outputs the following:
- Contour plot of the streamline data
- Horizontal, vertical, and total fluid velocity plots
- Surface regression for streamline data
- Horizontal, vertical and total fluid velocity plots derived from the surface regression
- Quiver plot of streamline data
- Streamline plot with animated particles moving with the fluid flow

### Numerical Methods
The following numerical methods were used in this program:
- Numerical solution to Laplace’s equation in Excel
- Numerical differentiation (gradient)
- Polynomial Surface Regression (cftool)
- Goodness of fit statistics: Root mean squared error (standard error), coefficient of
determination
- Solving first order partial differential equations generated in the surface regression
(differentiate)
</br></br>
Additional methods:</br>
- User interface – choice between analyzing airfoil or circle
- Animation (streamparticles)

### Results
This program is a good representation of idealized fluid flow around a smooth object.
Objects with sharp corners or with a rough surface could not be represented by this model. Some
corners are noticeable in the objects, but that error could be minimized by using a larger matrix. 

