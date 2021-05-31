REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 0, "??????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 1, "?U???J?n?????ym?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 2, "?U??EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 3, "?K?[?hEzState???", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_DashAttack, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DashAttack, true)
function DashAttack_Activate(arg0, arg1)
    arg0:StartDash()
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(3)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, f1_local0, f1_local1, TARGET_SELF, false, f1_local2)
    local f1_local3 = arg1:GetParam(2)
    arg1:AddSubGoal(GOAL_COMMON_DashAttack_Attack, 10, f1_local0, f1_local3)
    
end

function DashAttack_Terminate(arg0, arg1)
    arg0:EndDash()
    
end

function DashAttack_Update(arg0, arg1, arg2)
    return GOAL_RESULT_Continue
    
end

function DashAttack_Interupt(arg0, arg1)
    return false
    
end

REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack_Attack, 0, "??????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack_Attack, 1, "?U??EzState???", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_DashAttack_Attack, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DashAttack_Attack, true)
function DashAttack_Attack_Activate(arg0, arg1)
    local f5_local0 = arg1:GetParam(0)
    local f5_local1 = arg1:GetParam(1)
    arg0:MoveTo(f5_local0, AI_DIR_TYPE_CENTER, 0, false)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, f5_local1, f5_local0, DIST_None)
    
end

function DashAttack_Attack_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function DashAttack_Attack_Terminate(arg0, arg1)
    
end

function DashAttack_Attack_Interupt(arg0, arg1)
    return false
    
end


