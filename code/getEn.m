function E = getEn(x,fe,wlen_time,step_time)

% --------- Entree ------------%
% x:  Fichier mp3
% fe: Frequence d'echantillonnage
% wlen: Longueur de fenetre rectangulaire(en secondes)
% step: Longueur de step(en secondes)

% --------- Sortie ------------%
% E: Energie

E = [];
step_time = wlen_time;

wlen = round(wlen_time * fe);  % longueur de fenetre(nombre d'echantillons)
nstep = round(step_time * fe); % nombre de step

%win = hamming(wlen);
win = rectwin(wlen);

nFrames = floor((length(x) - wlen)/nstep) + 1; % nombre de frames

for k = 1:nFrames
    idx = (k-1) * nstep + (1:wlen);
    x_sub = x(idx) .* win;
    E(k) = sum(x_sub.^2); 
end

%E = 10*log10(E/max(E)+eps);
%E = 10*log10(E);


end