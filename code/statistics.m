function [stats] = statistics(word)
% Calcule les 8 statistics pour chaque fichier word (de type .en ou .f0)
% A savoir : mean, maximum, range, variance, median, first quartile, third quartile, mean absolute of local derivate
stats = [mean(word);
    max(word);
    range(word);
    var(word);
    median(word);
    quantile(word,0.25); % First quartile
    quantile(word,0.75); % Third quartile
    mad(word);
    ];
end

