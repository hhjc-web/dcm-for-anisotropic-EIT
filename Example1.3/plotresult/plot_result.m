load('..\dcmsolution.mat')

lengthx = 1;
numx = 32;
num_electrodes = 32;
theta = linspace(0, 2*pi, num_electrodes+1);
theta = theta(1:num_electrodes);
x1 = linspace(-lengthx, lengthx, numx);
x2 = linspace(-lengthx, lengthx, numx);
[X1,X2] = meshgrid(x1,x2);
X = [X1(:),X2(:)];

electrode_pos = [cos(theta);sin(theta)];
[IN, ON] = inpolygon(X1(:),X2(:), electrode_pos(1,:), electrode_pos(2,:)); % Find indices of x-vals in domain
x_idx = find(IN + ON); %Indices of x-vals in domain
% figure(5)
% plot(electrode_pos(1,:),electrode_pos(2,:)) % polygon
% axis equal
% hold on
% plot(X1(x_idx),X2(x_idx),'r+') % points inside
% hold off

% sigma_mat= reshape(sigma_aniso,numx,numx);
% figure
% imagesc(X1(:),X2(:),sigma_mat)
% colorbar

% select display mode
% trueim = true*NaN;
% trueim(x_idx) = true(x_idx);
trueim = true;
% inputim = input*NaN;
% inputim(x_idx) = input(x_idx);
inputim = input;
% predim = pred*NaN;
% predim(x_idx) = pred(x_idx);

figure(1)
% [Zint1, Zint2] = meshgrid(linspace(-lengthx, lengthx, numx));
% trueim = interp2(X1,X2, trueim, Zint1, Zint2);
% x1 = Zint1(:);x2 = Zint2(:);
g = imagesc(x1,x2,trueim);
% g = mesh(X1,X2,trueim);
set(g,'alphadata',~isnan(trueim));
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])
% caxis([0.95 1.05]);
ax = gca;
ax.YDir = 'normal';
ax.FontSize=15;
axis square
colorbar
print('ex25true2','-depsc')

figure(2)
% inputim = interp2(X1,X2, inputim, Zint1, Zint2);
g = imagesc(x1,x2,inputim);
% g = mesh(X1,X2,inputim);
set(g,'alphadata',~isnan(inputim));
set(g,'alphadata',~isnan(trueim));
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])
% caxis([0.95 1.05]);
ax = gca;
ax.YDir = 'normal';
ax.FontSize=15;
axis square
colorbar
print('ex25input2','-depsc')

figure(3)
% predim = interp2(X1,X2, predim, Zint1, Zint2);
g = imagesc(x1,x2,pred);
% g = mesh(X1,X2, predim);
set(g,'alphadata',~isnan(pred));
set(g,'alphadata',~isnan(trueim));
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])
% caxis([0.95 1.05]);
ax = gca;
ax.YDir = 'normal';
ax.FontSize=15;
axis square
colorbar
print('ex25pred2','-depsc')

figure(4)
% p=plot(x2,trueim(16,:),'r','LineWidth',2.5);
% hold on
% q=plot(x2,inputim(16,:),':m','LineWidth',2.5);
% r=plot(x2,pred(16,:),'k','LineWidth',1.5);
% legend([p q r],{'True','Calderon','Deep Calderon'},'Location','northwest')
% ax = gca;
% ax.FontSize=15;
% set(g,'alphadata',~isnan(trueim));
% set(gca,'xtick',[],'xticklabel',[])
% hold off
% print('ex25cutoff1','-depsc')

% figure(4)
p=plot(x2,trueim(22,:),'r','LineWidth',2.5);
hold on
q=plot(x2,inputim(22,:),':m','LineWidth',2.5);
r=plot(x2,pred(22,:),'k','LineWidth',1.5);
legend([p q r],{'True','Calderon','Deep Calderon'},'Location','northeast')
ax = gca;
ax.FontSize=15;
set(g,'alphadata',~isnan(trueim));
set(gca,'xtick',[],'xticklabel',[])
hold off
print('ex25cutoff2','-depsc')