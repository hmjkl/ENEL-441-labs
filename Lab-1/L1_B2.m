clear;
hold off;

clear;

sim_out = sim('L1_B.slx');

tout = sim_out.tout;
out = sim_out.gen_out;
plot(tout, out);
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of amplitude versus time for sine wave')

hold on;

tout_highres = linspace(min(tout), max(tout), 1000);
f = @(t) 1 - exp(-5*t);
plot(tout_highres, f(tout_highres));

legend('Simulink output', 'Theoretical output');
