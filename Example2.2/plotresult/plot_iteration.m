epochs = 1:40:401;

train_loss = [0.588408, 0.034300, 0.015626, 0.002906, 0.001710, 0.001425, 0.001024, 0.000906, 0.000783, 0.000709, 0.000610, 0.000511, 0.000472, 0.000406, 0.000363, 0.000326, 0.000288, 0.000268, 0.000233, 0.000190, 0.000175];

valid_loss = [0.332507, 0.035129, 0.015851, 0.002952, 0.001658, 0.003505, 0.002070, 0.001207, 0.003646, 0.000841, 0.001295, 0.000885, 0.001153, 0.000898, 0.000953, 0.000969, 0.001134, 0.001004, 0.001050, 0.001156, 0.001078];

figure
loglog(epochs,train_loss(1:2:end),'-r','DisplayName','train','LineWidth',2);
hold on
loglog(epochs,valid_loss(1:2:end),'-k','DisplayName','valid','LineWidth',2);
legend
xlabel('epoch', 'fontsize',18);  ylabel('loss', 'fontsize',18);
set(gca,'FontSize',18);
hold off
print('e4loss','-depsc')