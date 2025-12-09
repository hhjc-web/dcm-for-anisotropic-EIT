epochs = 1:20:201;
train_loss = [0.006681, 0.000040, 0.000013, 0.000013, 0.000011, 0.000008, 0.000007, 0.000006, 0.000005, 0.000003, 0.000003];
valid_loss = [0.000133, 0.000105, 0.000011, 0.000026, 0.000011, 0.000015, 0.000009, 0.000007, 0.000004, 0.000007, 0.000005];


figure
loglog(epochs,train_loss,'-r','DisplayName','train','LineWidth',2);
hold on
loglog(epochs,valid_loss,'-k','DisplayName','valid','LineWidth',2);
legend
xlabel('epoch', 'fontsize',18);  ylabel('loss', 'fontsize',18);
set(gca,'FontSize',18);
xlim([20,200])
ylim([2*10^-6,2*10^-4])
hold off
print('e2loss','-depsc')