// Gmsh project created on Tue Jun 01 21:30:35 2021
SetFactory("OpenCASCADE");
//+
Point(1) = {-2, 0, 0, 1.0};
//+
Point(2) = {-1, 0, 0, 1.0};
//+
Point(3) = {1, 0, 0, 1.0};
//+
Point(4) = {2, 0, 0, 1.0};
//+
Point(5) = {0, 0, 0, 1.0};
//+
Point(6) = {0, -1, 0, 1.0};
//+
Point(7) = {0, -2, 0, 1.0};
//+
Line(1) = {2, 1};
//+
Line(2) = {6, 7};
//+
Line(3) = {3, 4};
//+
Circle(4) = {2, 5, 6};
//+
Circle(5) = {6, 5, 3};
//+
Circle(6) = {1, 5, 7};
//+
Circle(7) = {7, 5, 4};
//+
Curve Loop(1) = {4, 5, 3, -7, -6, -1};
//+
Curve Loop(2) = {4, 2, -6, -1};
//+
Plane Surface(1) = {2};
//+
Curve Loop(3) = {5, 3, -7, -2};
//+
Plane Surface(2) = {3};
//+
Physical Curve("fixed", 8) = {6, 7};
//+
Physical Curve("symmetry", 9) = {1, 3};
//+
Physical Curve("loaded", 10) = {4, 5};
//+
Physical Curve("record", 11) = {2};
//+
Transfinite Surface {1} = {2, 1, 7, 6};
//+
Transfinite Surface {2} = {6, 7, 4, 3};
//+
Transfinite Curve {1, 2, 3} = 26 Using Progression 1;
//+
Transfinite Curve {4, 6, 7, 5} = 51 Using Progression 1;
