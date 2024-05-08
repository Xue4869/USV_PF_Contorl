close all
global f;
X = logsout{1}.Values.Data;
Y = logsout{2}.Values.Data;
WaypointsPlot = [P0;Waypoints];
f = figure;
set(f,'Position',[100 100 400 350]);
hold on;grid on;box on;
plot(WaypointsPlot(:,2),WaypointsPlot(:,1),'--','Color','#867369','LineWidth',2);
plot(Y,X,'-','Color','#402E32','LineWidth',3);
scatter(Y(1),X(1),40,'p','filled','MarkerFaceColor','red');
scatter(Y(end),X(end),40,'h','filled','MarkerFaceColor','b');
scatter(WaypointsPlot(2:end,2),WaypointsPlot(2:end,1),40,'o','MarkerEdgeColor','red');
axis equal;
legend({'DesiredPath','Track','Start','End','WayPoints'},'Location','best');legend('boxoff');
xlabel('Y[m]');ylabel('X[m]');


f2=figure(2)
set(f2,'Position',[500 100 400 350]);
hold on;grid on;box on;
t=0:size(Y,1);
t=t/100;
plot(t,[-30;Y],'-','Color','#855796','LineWidth',3);
yline(0,'--','LineWidth',2,'Color','#465581')
xlabel('t/s');ylabel('Ye/m');
hold off

% f3=figure(3)
% set(f3,'Position',[900 100 400 350]);
% hold on;grid on;box on;
% subplot(2,1,1)
% plot(t,[0;u],'-','Color','#876E7D','LineWidth',2);hold on
% subplot(2,1,2)
% plot(t,[0;v],'-','Color','#677987','LineWidth',2);
% yline(0,'--','LineWidth',1,'Color','#465581')
% xlabel('t/s');ylabel('U/(m/s)');
% legend({'u','v'})
% hold off

f3=figure(3)
set(f3,'Position',[900 100 400 350]);
t1=0.01:0.01:size(tC.signals(1).values,1)/100;
hold on;grid on;box on;
subplot(3,1,1)
plot(twind.signals(1).values,'-','Color','#C47079','LineWidth',2.5);hold on
ylabel('X_{wind}/N');
subplot(3,1,2)
plot(twind.signals(2).values,'-','Color','#856086','LineWidth',2.5);hold on
ylabel('Y_{wind}/N');
subplot(3,1,3)
plot(twind.signals(3).values,'-','Color','#43526E','LineWidth',2.5);
yline(0,'--','LineWidth',1,'Color','#465581')
xlabel('t/s');ylabel('N_{wind}/N');
hold off

f6=figure(6)
set(f6,'Position',[500 500 1000 350]);
tm=2000;
t1=0.01:0.01:size(tC.signals(1).values(1:tm),1)/100;
hold on;grid on;box on;
subplot(3,1,1)
plot(t1,tC.signals(1).values(1:tm),'-','Color','#007670','LineWidth',2);hold on
ylabel('X_C/N');
subplot(3,1,2)
plot(t1,tC.signals(2).values(1:tm),'-','Color','#90538F','LineWidth',2);hold on
ylabel('Y_C/N');
subplot(3,1,3)
plot(t1,tC.signals(3).values(1:tm),'-','Color','#6C6D1A','LineWidth',2);
yline(0,'--','LineWidth',1,'Color','#465581')
xlabel('t/s');ylabel('N_C/N');

hold off

f5=figure(5)
set(f5,'Position',[100 500 400 350]);
hold on;grid on;box on;
subplot(3,1,1)
plot(twave.signals(1).values,'-','Color','#5FA6AE','LineWidth',1.5);hold on
ylabel('X_{wave}/N');
subplot(3,1,2)
plot(twave.signals(2).values,'-','Color','#5C85B4','LineWidth',1.5);hold on
ylabel('Y_{wave}/N');
subplot(3,1,3)
plot(twave.signals(3).values,'-','Color','#8C588A','LineWidth',1.5);
yline(0,'--','LineWidth',1,'Color','#465581')
xlabel('t/s');ylabel('N_{wave}/N');
hold off

f4=figure(4)
set(f4,'Position',[1300 100 400 350]);
hold on;grid on;box on;
subplot(3,1,1)
plot(tcur.signals(1).values(:,:,:),'-','Color','#5FA6AE','LineWidth',2.5);hold on
ylabel('X_{cur}/N');
subplot(3,1,2)
plot(tcur.signals(2).values,'-','Color','#5C85B4','LineWidth',2.5);hold on
ylabel('Y_{cur}/N');
subplot(3,1,3)
plot(tcur.signals(3).values,'-','Color','#8C588A','LineWidth',2.5);
yline(0,'--','LineWidth',1,'Color','#465581')
xlabel('t/s');ylabel('N_{cur}/N');
hold off


