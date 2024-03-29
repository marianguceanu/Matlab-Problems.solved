pkg load statistics

% 1
% a)
% sig = 5
%alph = 0.05

sig = 5;
x = [7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 ...
        14 10 2 4 9 11 3 5 12 6 10 7];
n = 9;
[h, p, ci, ztst] = ztest(x, n, sig, 'alpha', 0.05, 'tail', 'left');
RR = [-inf, norminv(0.05)];

if h == 1
    fprintf('\nthe null hypotesis is rejected');
else
    fprintf('\n.... not rejected');
endif

fprintf('\nthe reg. region = [%1.2f, %1.2f]', RR);
fprintf('\nthe value of the statistic = %1.2f', ztst);
fprintf('\nthe p-value = %1.2f', p);
