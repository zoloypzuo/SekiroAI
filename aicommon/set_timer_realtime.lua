RegisterTableGoal(GOAL_COMMON_SetTimerRealtime, "SetTimerRealtime")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_SetTimerRealtime, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SetTimerRealtime, 0, "?^?C?}?[?C???f?b?N?X", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SetTimerRealtime, 1, "????", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    arg1:SetTimer(f1_local0, f1_local1)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


