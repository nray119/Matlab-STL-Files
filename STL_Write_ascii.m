%% The primary purpose of this file is to create Example 2 (below) for large X,Y,Z data 
%
%   Example 2:
%     % Write ascii STL from gridded data
%     [X,Y] = deal(1:40);             % Create grid reference
%     Z = peaks(40);                  % Create grid height
%     stlwrite('test.stl',X,Y,Z,'mode','ascii')
%% commands taken from stlwrite.m
%   STLWRITE(FILE, X, Y, Z) creates an STL file from surface data in X, Y,
%   and Z. STLWRITE triangulates this gridded data into a triangulated
%   surface using triangulation options specified below. X, Y and Z can be
%   two-dimensional arrays with the same size. If X and Y are vectors with
%   length equal to SIZE(Z,2) and SIZE(Z,1), respectively, they are passed
%   through MESHGRID to create gridded data. If X or Y are scalar values,
%   they are used to specify the X and Y spacing between grid points.
%
%   STLWRITE(...,'PropertyName',VALUE,'PropertyName',VALUE,...) writes an
%   STL file using the following property values:
%
%   MODE          - File is written using 'binary' (default) or 'ascii'.
%
%   TITLE         - Header text (max 80 chars) written to the STL file.
%
%   TRIANGULATION - When used with gridded data, TRIANGULATION is either:
%                       'delaunay'  - (default) Delaunay triangulation of X, Y
%                       'f'         - Forward slash division of grid quads
%                       'b'         - Back slash division of quadrilaterals
%                       'x'         - Cross division of quadrilaterals
%                   Note that 'f', 'b', or 't' triangulations now use an
%                   inbuilt version of FEX entry 28327, "mesh2tri".
%% Import X, Y, Z
X=xlsread('tumor_mesh_XYZvals_9_9.xlsx','Sheet2','A2:A23');
Y=xlsread('tumor_mesh_XYZvals_9_9.xlsx','Sheet2','B2:B23');
Z=xlsread('tumor_mesh_XYZvals_9_9.xlsx','Sheet2','C2:C23');
    % Write ascii STL from gridded data
%     [X,Y] = deal(1:40);             % Create grid reference
%     Z = peaks(40);                  % Create grid height
    stlwrite('test.stl',X,Y,Z,'mode','ascii')
