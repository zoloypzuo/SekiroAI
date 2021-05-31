REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 4, "?K?[?hEzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 5, "?K?[?h?S?[???I???^?C?v", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget_ParallelMov, 6, "?K?[?h?S?[??:???????s?????????????", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget_ParallelMov, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachTarget_ParallelMov, true)
function ApproachTarget_ParallelMov_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = arg1:GetParam(3)
    local f1_local5 = arg1:GetParam(4)
    local f1_local6 = arg1:GetParam(5)
    local f1_local7 = arg1:GetParam(6)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7)
    
end

function ApproachTarget_ParallelMov_Update(arg0, arg1, arg2)
    arg0:RequestParallelMove()
    return GOAL_RESULT_Continue
    
end

function ApproachTarget_ParallelMov_Terminate(arg0, arg1)
    
end

function ApproachTarget_ParallelMov_Interupt(arg0, arg1)
    return false
    
end


