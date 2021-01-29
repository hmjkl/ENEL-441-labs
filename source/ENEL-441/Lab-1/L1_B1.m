clear;

sim_out = sim('L1_B.slx');

tout = sim_out.tout;
out = sim_out.gen_out;
plot(tout, out);
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of amplitude versus time for sine wave')
