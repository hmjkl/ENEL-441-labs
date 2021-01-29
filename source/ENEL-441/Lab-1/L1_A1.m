clear;
sim_out = sim('L1_1.slx');

t_out = sim_out.tout;
d_out = sim_out.gen_out;

plot(t_out, d_out);
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of amplitude versus time for sine wave');

