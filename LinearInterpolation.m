%This script interpolates the i-v curve at a given voltage

I = LinearSim02(:,6)% Select Current Column
V = VGS;
dI = gradient(I);
dV = gradient(V);
Vi = 0.77 % Select Tangent Point
Ii = interp1(V, I, Vi);
dVi = interp1(V, dV, Vi);
dIi = interp1(V, dI, Vi);

Slope = dIi/dVi;
YIntercept = Ii - Slope * Vi;
XIntercept = -YIntercept / Slope;

clear dI dV dVi dIi I Ii V Vi