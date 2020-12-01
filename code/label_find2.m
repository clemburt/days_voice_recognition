function [label] = label_find(name)
% Associe au label un numero
label_list = {'lun','mar','mer','jeu','ven','sam','dim'};
label_num = [1,2,3,4,5,6,7];
for i=1:length(label_list)
    if contains(name,label_list(i))
        label = label_num(i);
    end
end
end

