clc
clear
close all

addpath('functions')
addpath('database')


ChessOpeningsObject = ChessOpenings;
ChessOpeningsObject = loadChessOpenings(ChessOpeningsObject,'database');

ChessOpeningsObject = addChessOpenings(ChessOpeningsObject,'white',{'salam'},{'salam2'},{'salam3'});

saveChessOpenings(ChessOpeningsObject,'database');


% '1.e4 e5 2.f4 d5 3.exd5 e4 4.Nc3 Nf6 5.Qe2 Bf5 6.Qb5+ Nbd7';
%     