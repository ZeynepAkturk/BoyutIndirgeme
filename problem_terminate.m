 function [ecosize, n, maxFE, lb, ub] = problem_terminate(egitim_veri)

    % Parameter settings:
    
    % ecosystem (population) size
    ecosize = 50;

    % problem dimension
    [~, indeks]=size(egitim_veri)
    n=indeks;

    % number of function evaluations
   
    maxFE = 50*n;

    % problem lower band 
    lowerBand = 0;
    lb = ones(1, n) * lowerBand;

    % problem upper band
    upperBand = 1;
    ub = ones(1, n) * upperBand;

end
