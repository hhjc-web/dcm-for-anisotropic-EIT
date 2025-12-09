epochs = 0:40:800;

train_loss = [1.637066, 0.533370, 0.000670, 0.000493, 0.000421, 0.000364, 0.000277, 0.000207, 0.000144, 0.000102, 0.000088, 0.000070, 0.000056, 0.000047, 0.000037, 0.000029, 0.000023, 0.000019, 0.000016, 0.000013, 0.000011];

valid_loss = [1.521605, 0.141275, 0.000525, 0.000418, 0.000410, 0.000421, 0.000254, 0.000262, 0.000176, 0.000144, 0.000139, 0.000154, 0.000100, 0.000106, 0.000092, 0.000088, 0.000083, 0.000086, 0.000087, 0.000086, 0.000080];

figure
loglog(epochs,train_loss,'-r','DisplayName','train','LineWidth',2);
hold on
loglog(epochs,valid_loss,'-k','DisplayName','valid','LineWidth',2);
legend
xlabel('epoch', 'fontsize',18);  ylabel('loss', 'fontsize',18);
set(gca,'FontSize',18);
hold off
print('e3loss','-depsc')