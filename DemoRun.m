%**************************************************************************
%********  Finding Gangs in War from Signed Networks, KDD2016  ************
%********     Author: Lingyang Chu, Simon Fraser University    ************
%********            Email:  chulingyang@hotmail.com           ************
%********                 All Rights Preserved                 ************
%**************************************************************************
%% This is a simple demo to demonstrate how KOCG works.
%% code as follows.
% clear env
clear;

% load DemoData.mat
load('./DATA/slashdot.mat');

NG = 10;
alpha = 0.9;
beta = 50;
% Run enumKOCG.m
cd KOCG
[X_enumKOCG_cell, time] = enumKOCG(A, B, NG, alpha, beta)
cd ..

save('./output/slashdot.mat', 'X_enumKOCG_cell', 'time')
