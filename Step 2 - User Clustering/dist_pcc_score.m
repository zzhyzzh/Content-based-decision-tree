function [distance] = dist_pcc_score(all_rm)

all_rm = single(full(all_rm));
disp('all DONE')

pcc_n = all_rm * all_rm';
disp('pcc_n DONE')

all_2 = all_rm.^2 * (all_rm'~=0);
clear all_rm
disp('all_2 DONE')

pcc_d = (all_2 .* all_2').^0.5 + 1e-9;
clear all_2
disp('pcc_d DONE')

pcc = pcc_n ./ pcc_d;
clear pcc_n
clear pcc_d
disp('pcc DONE')

distance = -pcc + 1;
clear pcc
disp('distance DONE')
    