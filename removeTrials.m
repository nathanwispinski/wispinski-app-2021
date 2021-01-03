function data_struct = removeTrials(data_struct,removeIdx)
% For:
% Selective attention to real-world objects drives their emotional appraisal
% Nathan J. Wispinski, Shihao Lin, James T. Enns, & Craig S. Chapman
% Attention, Perception, & Psychophysics (2020)

% Nathan Wispinski - Last updated Oct 30, 2020

% Given data structure and trial indices, remove trials from all variables
% in this data structure

% From matData
data_struct.matData.block(removeIdx) = [];
data_struct.matData.trial(removeIdx) = [];
data_struct.matData.timing(removeIdx,:) = [];
data_struct.matData.rxnTime(removeIdx) = [];
data_struct.matData.reachOnsetPos(removeIdx,:) = [];
data_struct.matData.mvmtTime(removeIdx) = [];
if isfield(data_struct.matData,'peakV')
    data_struct.matData.peakV(removeIdx) = [];
end
if isfield(data_struct.matData,'ttpv')
    data_struct.matData.ttpv(removeIdx) = [];
end
data_struct.matData.evalTime(removeIdx) = [];
data_struct.matData.evalXPos(removeIdx) = [];
data_struct.matData.trialType(removeIdx) = [];
data_struct.matData.startSide(removeIdx) = [];
data_struct.matData.reachSide(removeIdx) = [];
data_struct.matData.evalSide(removeIdx) = [];
data_struct.matData.evalType(removeIdx) = [];
data_struct.matData.curImageL(removeIdx) = [];
data_struct.matData.curImageR(removeIdx) = [];
data_struct.matData.endAreaFlag(removeIdx,:) = [];
data_struct.matData.endPos(removeIdx,:) = [];
data_struct.matData.error(removeIdx,:) = [];

% From newFda
data_struct.newFda.x(removeIdx,:) = [];
data_struct.newFda.y(removeIdx,:) = [];
data_struct.newFda.z(removeIdx,:) = [];
data_struct.newFda.velX(removeIdx,:) = [];
data_struct.newFda.velY(removeIdx,:) = [];
data_struct.newFda.velZ(removeIdx,:) = [];


