fs = 44100;
ts = 1/fs;
t=0:ts:4;

ac_1 = 0.5; fc_1 = 1000; % carrier 1
am_1 = 0.6; fm_1 = 100; % modulator 1

ac_2 = 0.5; fc_2 = 440; % carrier 2
am_2 = 0.6; fm_2 = 500;  % modulator 2

FM_1 = ac_1 * cos((2 * pi * fc_1 * t) + am_1 * cos(2 * pi * fm_1 * t));

% plot
figure;
plot(t, FM_1);
xlim([0 0.05]);
title('Frequency Modulation with 300HZ Modulator');
xlabel('time');
ylabel('amplitue');
% play

player_FM1 = audioplayer(FM_1, fs);
%play(player_FM1, fs);
audiowrite('FM_1.wav', FM_1, fs);
% FM with fm = 50Hz
% synthesize FM sound

FM_2 = ac_2 * cos((2 * pi * fc_2 * t) + am_2 * cos(2 * pi * fm_2 * t));

% plot
figure;
plot(t, FM_2);
xlim([0 0.05]);
title('Frequency Modulation with 50HZ Modulator');
xlabel('time');
ylabel('frequency');
% play
player_FM2 = audioplayer(FM_2, fs);
play(player_FM2, fs);
audiowrite('FM_2.wav', FM_2, fs);

