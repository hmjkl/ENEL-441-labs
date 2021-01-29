clear;

sim_out = sim('L1_C.slx');
tout = sim_out.tout;
gen_out_limit = sim_out.gen_out_bandlimited;
gen_out_inf = sim_out.gen_out_infinite;

plot(tout, gen_out_limit);
hold on;
plot([0 ; tout], [0 ; gen_out_inf]);

legend('Bandlimited signal', 'Infinite bandwidth signal');
title('Plot of step response for 3 dB filter with bandwith of 10 Hz');
xlim([-0.1 1]);
ylim([0 1.1]);
xlabel('Time (s)');
ylabel('x(t)');

hold off;