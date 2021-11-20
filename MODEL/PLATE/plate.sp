terminal mkdir result32
set output_folder result32

# file mesh.4.sp
# file mesh.8.sp
# file mesh.16.sp
file mesh.32.sp
# file mesh.64.sp
# file mesh.128.sp

material Bilinear2D 1 100 .2 1 -.02

groupmultiplierbc 1 1 1
groupmultiplierbc 2 2 3

groupdisplacement 1 0 .2 1 2

# hdf5recorder 1 GroupSum RF1 2
hdf5recorder 2 Visualisation PEEQ scale 0

step Static 1
set fixed_step_size 1
set ini_step_size 2E-3

converger RelIncreDisp 1 1E-10 10 1

analyse

# save recorder 1

exit