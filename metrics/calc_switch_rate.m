function switch_rate = calc_switch_rate(sequence_of_choices)
    % Bowen Xiao 2025
    % rate at which x(t+1) differs from x(t)
    
    % TO-DO: handle NaN in input
    
    switch_rate = mean(diff(sequence_of_choices)~=0);
    
end