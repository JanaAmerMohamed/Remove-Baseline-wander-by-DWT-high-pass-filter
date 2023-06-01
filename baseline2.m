x=load ('samples.txt');
x1=x (:,2);
x2=x1./1000;
x2=x2 (2000:5000);
subplot (2,1,1), plot(x2), title ('ECG Signal with baseline wander'), grid on
 [C, L] = wavedec (x2,9,'bior3.7'); % Decomposition 
 a9 = wrcoef ('a', C, L,'bior3.7',9); % Approximate Component
 d9 = wrcoef ('d', C, L,'bior3.7',9); % Detailed components
d8 = wrcoef ('d', C, L,'bior3.7',8);
d7 = wrcoef ('d', C, L,'bior3.7',7);
d6 = wrcoef ('d', C, L,'bior3.7',6);
d5 = wrcoef ('d', C, L,'bior3.7',5);
d4 = wrcoef ('d', C, L,'bior3.7',4);
d3 = wrcoef ('d', C, L,'bior3.7',3);
d2 = wrcoef ('d', C, L,'bior3.7',2);
d1 = wrcoef ('d', C, L,'bior3.7',1);
y= d9+d8+d7+d6+d5+d4+d3+d2+d1;
subplot (2,1,2), plot(y), title ('ECG Signal after baseline wander REMOVED'), grid on