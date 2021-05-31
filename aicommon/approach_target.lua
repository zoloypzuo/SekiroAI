REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 4, "?K?[?hEzState???", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_ApproachTarget, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachTarget, true)
function ApproachTarget_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = arg1:GetParam(3)
    local f1_local5 = arg1:GetParam(4)
    local f1_local6 = AI_DIR_TYPE_CENTER
    local f1_local7 = 0
    local f1_local8 = arg1:GetParam(5)
    local f1_local9 = arg1:GetParam(6)
    local f1_local10 = arg1:GetParam(7)
    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, f1_local0, f1_local1, f1_local6, f1_local2, f1_local3, f1_local4, f1_local6, f1_local7, f1_local10, f1_local5, f1_local8, f1_local9)
    
end

function ApproachTarget_Update(arg0, arg1, arg2)
    
end

function ApproachTarget_Terminate(arg0, arg1)
    
end

function ApproachTarget_Interupt(arg0, arg1)
    return false
    
end


