epochs = 0:40:800;

train_loss = [0.219887, 0.003928, 0.001119, 0.000952, 0.000808, 0.000671, 0.000556, 0.000450, 0.000359, 0.000305, 0.000244, 0.000189, 0.000146, 0.000116, 0.000100, 0.000086, 0.000068, 0.000051, 0.000040, 0.000031, 0.000026];

valid_loss = [0.120246, 0.003654, 0.001587, 0.001193, 0.000947, 0.000879, 0.000894, 0.000697, 0.000824, 0.001072, 0.000589, 0.000570, 0.000687, 0.000644, 0.000949, 0.000559, 0.000777, 0.000564, 0.000648, 0.000642, 0.000707];
figure
loglog(epochs,train_loss,'-r','DisplayName','train','LineWidth',2);
hold on
loglog(epochs,valid_loss,'-k','DisplayName','valid','LineWidth',2);
legend
xlabel('epoch', 'fontsize',18);  ylabel('loss', 'fontsize',18);
set(gca,'FontSize',18);
hold off
print('e4gloss','-depsc')