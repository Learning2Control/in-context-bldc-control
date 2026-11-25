clear
close all
clc


temp_name = strsplit(pwd,'in-context-bldc-control');
temp_name2 = fullfile(temp_name{1},'in-context-bldc-control', 'model_training','pkl_models');

model_name = 'ICC_paper_weights.pkl';
model_name_to_save = 'ICC_paper';

network_path = fullfile(temp_name2, model_name);
[net, H] = import_transformer_model(network_path);
model_name_to_save = model_name_to_save + "_H" + num2str(H) + "H" + ".mat";
save(model_name_to_save, "net")