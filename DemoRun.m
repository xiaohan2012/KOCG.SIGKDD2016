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

NG = 10;
alpha = 0.9;
beta = 50;

graph_names = ["slashdot", "epinions", "wikiconflict", "bitcoin", "word"]

for i = 1:length(graph_names)
  graph_name = graph_names(i);
  input_path = strcat('./DATA/', graph_name,'.mat');
  load(input_path);

  cd KOCG
  [X_enumKOCG_cell, time] = enumKOCG(A, B, NG, alpha, beta)
  cd ..
  save(strcat('./output/', graph_name, '.mat'), 'X_enumKOCG_cell', 'time')  
end


