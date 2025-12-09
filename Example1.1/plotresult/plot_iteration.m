epochs = 1:40:401;
train_loss = [0.012539, 0.000173, 0.000042, 0.000026, 0.000020, 0.000019, 0.000027, 0.000012, 0.000012, 0.000010, 0.000010];
valid_loss = [0.001777, 0.000211, 0.000065, 0.000099, 0.000071, 0.000618, 0.000119, 0.000148, 0.000624, 0.001051, 0.000142];

figure
loglog(epochs,train_loss,'-r','DisplayName','train','LineWidth',2);
hold on
loglog(epochs,valid_loss,'-k','DisplayName','valid','LineWidth',2);
legend
xlabel('epoch', 'fontsize',18);  ylabel('loss', 'fontsize',18);
set(gca,'FontSize',18);
ylim([10^-5,2*10^-2])
yticks([1e-5, 1e-4, 1e-3, 1e-2])
hold off
print('e1loss','-depsc')