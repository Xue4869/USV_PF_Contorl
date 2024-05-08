%%%%%%%%%%Created by XUE,2024/04/29%%%%%%%%%%
clc;clear;close all
%% 不同螺旋桨推力下船舶在环境干扰下的路径跟踪效果以及能量消耗
% for i=1.5:0.5:5
    U_d=i;%船舶指定航行速度
    V_w=1;%风速
    u_c=0.1;v_c=0.1;%流速
    w_0=0.8;lamda=0.2573;w_e1=0.8;w_e2=0.8;w_e6=0.8;%浪参数
    filename=['U_d=',num2str(U_d)];
    filename=replace(filename,'.','_');
    sim('PathFollowing_4_29');


    % saveas(f,['f1-',filename,'d'],'png')
    % saveas(f2,['f2-',filename,'d'],'png')
    % saveas(f3,['f3-',filename,'d'],'png')
    % saveas(f4,['f4-',filename,'d'],'png')
    % saveas(f5,['f5-',filename,'d'],'png')
    % saveas(f6,['f6-',filename,'d'],'png')
    % saveas(f,['f1-',filename],'png')
    % saveas(f2,['f2-',filename],'png')
    % saveas(f3,['f3-',filename],'png')
    % saveas(f4,['f4-',filename],'png')
    % saveas(f5,['f5-',filename],'png')
    % saveas(f6,['f6-',filename],'png')
    % clear all;
    % pause(0.1);
% end