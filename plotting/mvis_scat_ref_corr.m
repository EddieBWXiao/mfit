function mvis_scat_ref_corr(x,y)

% simple plotting utility function
% Bowen Xiao 2025 Feb

% force input into column vector
x = x(:);
y = y(:);

% scatter plot
scatter(x, y, [], 'blue', 'filled', 'MarkerFaceAlpha', 0.5)

corr_string = sprintf("Pearson's r = %.3f\nSpearman's \\rho = %.3f\nKendall's \\tau = %.3f", ...
    corr(x, y), ...
    corr(x, y, 'type', 'Spearman'), ...
    corr(x, y, 'type', 'Kendall'));

set_title = corr_string;

title(set_title)

h=refline(1,0);
h.LineStyle="--";
h.LineWidth=1.2;
h.Color="r";

end