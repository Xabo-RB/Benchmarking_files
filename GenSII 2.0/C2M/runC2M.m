% Confirm execution
% Function options = genssiMain(modelName,Nder,Par,optionsIn)
%     genssiMain is the main function of GenSSI. It reads a model and 
%      calls all other functions necessary for analyzing the model.
%     
%     Parameters:
%      modelName: the name of the model to be analyzed (a string)
%      Nder: number of Lie derivatives
%      Par: vector of parameters to be considered
%      optionsIn: struct of options for analysis

% function genssiAskForConfirmation(expectedRuntime)
%     genssiAskForConfirmation informs the user about the expected runtime
%     for an example and asks the user to confirm that the example is
%     executed.
%     
%     Parameters:
%      expectedRuntime: expected runtime in seconds

genssiAskForConfirmation(11);

genssiMain('C2M',6);