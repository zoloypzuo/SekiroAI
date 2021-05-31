RegisterTableGoal(GOAL_COMMON_GuardBreakCombo, "GuardBreakCombo")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_GuardBreakCombo, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 0, "?P?i???U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 1, "?Q?i???U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 2, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 3, "?????????i?Q?i???K???????j", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 4, "?U???O??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_GuardBreakCombo, 5, "???????p?x", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = 10
    local f1_local4 = arg2:GetParam(3)
    local f1_local5 = arg2:GetParam(4)
    local f1_local6 = arg2:GetParam(5)
    arg2:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, f1_local0, f1_local2, f1_local3, f1_local5, f1_local6, 0, 0)
    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f1_local1, f1_local2, f1_local4, 0)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


