function data_struct = removeTrials_obsDeval_keyboard(data_struct,removeIdx)

%from reach_info
% data_struct.reach_info.startFrame(removeIdx) = [];
% data_struct.reach_info.endFrame(removeIdx) = [];
% 
% data_struct.reach_info.fill_info.startPos(removeIdx) = [];
% data_struct.reach_info.fill_info.altFill(removeIdx) = [];
% data_struct.reach_info.fill_info.linFill(removeIdx) = [];

%from matData
data_struct.matData.block(removeIdx) = [];
data_struct.matData.trial(removeIdx) = [];
data_struct.matData.timing(removeIdx,:) = [];
data_struct.matData.rxnTime(removeIdx) = [];
data_struct.matData.responseSide(removeIdx) = [];
data_struct.matData.evalTime(removeIdx) = [];
data_struct.matData.evalXPos(removeIdx) = [];
data_struct.matData.trialType(removeIdx) = [];
data_struct.matData.reachSide(removeIdx) = [];
data_struct.matData.evalSide(removeIdx) = [];
data_struct.matData.evalType(removeIdx) = [];
data_struct.matData.curImageL(removeIdx) = [];
data_struct.matData.curImageR(removeIdx) = [];
data_struct.matData.error(removeIdx,:) = [];



