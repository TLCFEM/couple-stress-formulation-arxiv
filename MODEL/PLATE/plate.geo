// Gmsh project created on Thu Jun 10 16:15:48 2021
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {1, 0, 0, 1.0};
//+
Point(3) = {5, 0, 0, 1.0};
//+
Point(4) = {5, 5, 0, 1.0};
//+
Point(5) = {0, 5, 0, 1.0};
//+
Point(6) = {0, 1, 0, 1.0};
//+
Point(7) = {0.7071067811865475244008443621048490392848359376884740365883398689, 0.7071067811865475244008443621048490392848359376884740365883398689, 0, 1.0};
//+
Circle(1) = {2, 1, 7};
//+
Circle(2) = {7, 1, 6};
//+
Line(3) = {6, 5};
//+
Line(4) = {5, 4};
//+
Line(5) = {4, 3};
//+
Line(6) = {3, 2};
//+
Line(7) = {7, 4};
//+
Curve Loop(1) = {4, -7, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 1, 7};
//+
Plane Surface(2) = {2};
//+
Physical Curve("left", 8) = {3};
//+
Physical Curve("right", 9) = {5};
//+
Physical Curve("bottom", 10) = {6};
//+
Transfinite Surface {1} = {7, 6, 5, 4};
//+
Transfinite Surface {2} = {7, 2, 3, 4};
//+
Transfinite Curve {3, 7, 6} = 5 Using Progression 1;
//+
Transfinite Curve {2, 4, 1, 5} = 3 Using Progression 1;
