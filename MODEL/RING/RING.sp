file MODELT3.sp
# file MODELQ4.sp
# file MODELQ8.sp

groupmultiplierbc 1 2 2
groupmultiplierbc 2 1 1
groupmultiplierbc 3 2 1
groupmultiplierbc 4 2 3

material Elastic2D 1 2.8 0.4 0 1

groupdisplacement 1 0 .1 1 3

hdf5recorder 1 Visualisation U1

step Static 1
set ini_step_size 1
set fixed_step_size 1
set symm_mat 0

analyse

peek nodegroup 4

exit