RegisterTableGoal(GOAL_EnemyMultiAttack, "GOAL_EnemyMultiAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyMultiAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyMultiAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 1, "?R???{?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 2, "?U??1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 3, "?U??2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 4, "?U??3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 5, "?U??4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 6, "?U??5", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 7, "?U??6", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = arg2:GetParam(3)
    local f1_local4 = arg2:GetParam(4)
    local f1_local5 = arg2:GetParam(5)
    local f1_local6 = arg2:GetParam(6)
    local f1_local7 = arg2:GetParam(7)
    arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), f1_local0, 0, f1_local2, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local1, f1_local1, f1_local1, f1_local1, f1_local1)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


