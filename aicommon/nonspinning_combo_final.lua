REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 0, "EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 1, "?U?????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 2, "?????????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 3, "??U???p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboFinal, 4, "???U???p?x", 0)
ENABLE_COMBO_ATK_CANCEL(GOAL_COMMON_NonspinningComboFinal)
function NonspinningComboFinal_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = 180
    local f1_local5 = 0
    local f1_local6 = 180
    local f1_local7 = true
    local f1_local8 = false
    local f1_local9 = true
    local f1_local10 = false
    local f1_local11 = true
    local f1_local12 = arg1:GetParam(3)
    local f1_local13 = arg1:GetParam(4)
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13, f1_local7)
    
end

function NonspinningComboFinal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function NonspinningComboFinal_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_NonspinningComboFinal, true)
function NonspinningComboFinal_Interupt(arg0, arg1)
    return false
    
end


