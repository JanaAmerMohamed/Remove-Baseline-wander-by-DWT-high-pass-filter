y1=load ('samples.txt'); % this is an ECG signal with motion 
artifacts
y2= (y1 (:,1)); % ECG signal data
a1= (y1 (:,1)); % accelerometer x-axis data
a2= (y1 (:,1)); % accelerometer y-axis data
a3= (y1 (:,1)); % accelerometer z-axis data
y2 = y2/max (y2);
Subplot (3, 1, 1), plot (y2), title ('ECG Signal with motion artifacts'), grid on
a = a1+a2+a3;
a=a/max (a);
Mu= 0.0008;
Hd = adaptfilt. Lms (32, mu);
[s2, e] = filter (Hd, a, y2);
Subplot (3, 1, 2); plot (s2), title ('Noise (motion artifact) estimate'), grid on
Subplot (3, 1, 3), plot (e), title ('Adaptively filtered/ Noise free ECG signal'), grid on