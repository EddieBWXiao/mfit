function [win_stay_rate, lose_shift_rate] = calc_data_wsls(data)
    % Bowen Xiao 2025
    % calculate win-stay lose-shift rates from the mfit data struct
    
    %   data - structure with the following fields
    %          .c - [N x 1] choices
    %          .r - [N x 1] rewards
    
    % TO-DO: handle NaN in input
    
    win_stay_rate = mean(data.r(1:end-1)==1 & diff(data.c)==0);
    lose_shift_rate = mean(data.r(1:end-1)==0 & diff(data.c)~=0);
end
