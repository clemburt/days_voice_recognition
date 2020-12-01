function [label] = label_find(name)
% Associe au label un numero
label_list = {'ali','aur','che','chl','cle','col','dap','fra','fre','hel','ire','jma','lau','man','nad','nic','sei','sop','zoe'};
label_num = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
for i=1:length(label_list)
    if contains(name,label_list(i))
        label = label_num(i);
    end
end
end

