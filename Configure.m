%% Reset & Specify MATLAB Path:
restoredefaultpath;    clear;    close all;    clc;    addpath(genpath(fileparts(mfilename('fullpath'))))
%% Set Plotting Preferences:
set(groot, "DefaultAxesTickLabelInterpreter",'LaTeX', "DefaultTextInterpreter",'LaTeX', "DefaultLegendInterpreter",'LaTeX');
set(groot, "DefaultFigureColor",'w',                  "DefaultAxesColor",'w')
set(groot, "DefaultAxesXTickLabelRotationMode",'Manual')
set(groot, "DefaultAxesYTickLabelRotationMode",'Manual')
%% Fix Pseudorandom Number Generator:
Pseudorandom.Seed = 0;    Pseudorandom.Generator = "Twister";    rng(Pseudorandom.Seed, Pseudorandom.Generator)