clear
data = load('duration.mat');
duration = data.duration;
data = load('waiting.mat');
waiting = data.waiting;
[durationMu_15,durationVar_15] = computeCI(duration,15);
[durationMu_po,durationVar_po] = computeCI(duration,length(duration));
[waitingMu_15,waitingVar_15] = computeCI(waiting,15);
[waitingMu_po,waitingVar_po] = computeCI(waiting,length(waiting));
[durationMu_15_bootstrap,durationVar_15_bootstrap] = computeBootstrapCI(duration,15);
[durationMu_po_bootstrap,durationVar_po_bootstrap] = computeBootstrapCI(duration,length(duration));
[waitingMu_15_bootstrap,waitingVar_15_bootstrap] = computeBootstrapCI(waiting,15);
[waitingMu_po_bootstrap,waitingVar_po_bootstrap] = computeBootstrapCI(waiting,length(waiting));


