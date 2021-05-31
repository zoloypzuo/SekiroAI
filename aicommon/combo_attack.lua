REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 1, "?U?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 2, "????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 3, "??U???p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 4, "???U???p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboAttack, 5, "?????p?x", 0)
function ComboAttack_Activate(arg0, arg1)
    local f1_local0 = arg1:GetLife()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg1:GetParam(1)
    local f1_local3 = arg1:GetParam(2)
    local f1_local4 = arg1:GetParam(5)
    if f1_local4 == nil then
        f1_local4 = 90
    end
    local f1_local5 = 1.5
    local f1_local6 = 20
    local f1_local7 = true
    local f1_local8 = true
    local f1_local9 = true
    local f1_local10 = false
    local f1_local11 = false
    local f1_local12 = arg1:GetParam(3)
    local f1_local13 = arg1:GetParam(4)
    arg1:AddSubGoal(GOAL_COMMON_CommonAttack, f1_local0, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local8, f1_local9, f1_local10, f1_local11, f1_local12, f1_local13, f1_local7)
    
end

function ComboAttack_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function ComboAttack_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboAttack, true)
function ComboAttack_Interupt(arg0, arg1)
    return false
    
end


