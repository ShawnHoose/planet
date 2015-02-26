# planet
Model of Hot Jupiter planet to be used in conjunction with Castro(Radiation) code (2-Dimensions)

Actual model parameters defined and calculated in the HotJupiter.cpp file. Planetary model based on paper: 
  Youdin, Mitchell 2010 (The Mechanical Greenhouse: Burial of Heat by Turbulence in Hot Jupiter Atmospheres)

Inputs to Castro are in inputs_2d files

more editable parameters (velocities and vortices) in probin file.

to run simulation after all parameters are specified:

./Castro2d.Linux.g++.gfortran.MPI.ex inputs_2d
