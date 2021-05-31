local f0_local0 = {}
local f0_local1 = 4
f0_local0[1] = f0_local1
f0_local0[2] = 5
f0_local0[3] = 15
f0_local1 = {10, 4, 15}
local f0_local2 = {}
local f0_local3 = -1
local f0_local4 = 0
function Select_ListIndex_For_EnemyCommonSubGoal(arg0, arg1)
    local f1_local0 = 0
    for f1_local1 = 1, table.getn(arg1), 1 do
        f1_local0 = f1_local0 + arg1[f1_local1]
    end
    local f1_local1 = arg0:GetRandam_Int(0, f1_local0)
    local f1_local2 = 0
    for f1_local3 = 1, table.getn(arg1), 1 do
        f1_local2 = arg1[f1_local3] + f1_local2
        if f1_local1 < f1_local2 and 0 < arg1[f1_local3] then
            return f1_local3
        end
    end
    local f1_local3 = -1
    return f1_local3
    
end

function Get_AnimOffset_For_EnemyCommonSubGoal(arg0, arg1)
    if arg1 == -1 then
        return -1
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg1 = arg1 - 1000000
        f0_local4 = 1000000
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg1 = arg1 - 2000000
        f0_local4 = 2000000
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg1 = arg1 - 3000000
        f0_local4 = 3000000
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5407) then
        arg1 = arg1 - 4000000
        f0_local4 = 4000000
    else
        f0_local4 = 0
    end
    return arg1
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_Attack, "EnemyCommonSubGoal_Attack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyCommonSubGoal_Attack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 0, "?U??1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 1, "?U??2", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 2, "?U??3", 2)
Goal.Activate = function (arg0, arg1, arg2)
    local f3_local0 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(0))
    local f3_local1 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(1))
    local f3_local2 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(2))
    local f3_local3 = arg2:GetParam(3)
    local f3_local4 = arg2:GetParam(4)
    local f3_local5 = arg2:GetParam(5)
    if f3_local3 == -1 then
        f3_local3 = TARGET_ENE_0
    end
    if f3_local4 == -1 then
        f3_local4 = 50
    end
    if f3_local5 == -1 then
        f3_local5 = 50
    end
    if -1 == attackIndex1 then
        print("?????? ?U??ID?????????????? ??????")
    elseif f3_local4 < arg1:GetRandam_Int(1, 100) or f3_local1 == -1 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, f3_local3, arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
    elseif f3_local5 < arg1:GetRandam_Int(1, 100) or f3_local2 == -1 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, f3_local3, arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local1, f3_local3, arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
    else
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, f3_local3, arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local1, f3_local3, arg1:GetAIAttackParam(f3_local2, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, f3_local3, arg1:GetAIAttackParam(f3_local2, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local2, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f3_local2, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_AfterAttack, "EnemyCommonSubGoal_AfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyCommonSubGoal_AfterAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f5_local0 = {}
    local f5_local1 = arg1:GetDist(TARGET_ENE_0)
    if f5_local1 < 2.5 then
        f5_local0 = f0_local0
    else
        f5_local0 = f0_local1
    end
    local f5_local2 = 9910
    local f5_local3 = Select_ListIndex_For_PriestSoldier_115000(arg1, f5_local0)
    if f5_local3 == 1 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, distLeave, TARGET_ENE_0, true, f5_local2)
    elseif f5_local3 == 2 then
        arg2:AddSubGoal(GOAL_EnemyCommonSubGoal_SideWalk, 10, arg1:GetRandam_Int(2, 3), f5_local2)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_ApproachAct, "EnemyCommonSubGoal_ApproachAct")
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMultiAttack, 5, "?K?[?h?m??", 5)
Goal.Activate = function (arg0, arg1, arg2)
    local f7_local0 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(0))
    local f7_local1 = arg2:GetParam(1)
    local f7_local2 = arg2:GetParam(2)
    local f7_local3 = arg2:GetParam(3)
    local f7_local4 = arg2:GetParam(4)
    local f7_local5 = arg2:GetParam(5)
    local f7_local6 = arg2:GetParam(6)
    if f7_local1 == -1 then
        f7_local1 = TARGET_ENE_0
    end
    if -1 == turnTarget then
        turnTarget = TARGET_ENE_0
    end
    if f7_local2 == -1 then
        f7_local2 = arg1:GetAIAttackParam(f7_local0, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
    end
    if f7_local3 == -1 then
        f7_local3 = 4
    end
    if f7_local4 == -1 then
        f7_local4 = 20
    end
    if f7_local5 == -1 then
        f7_local5 = 80
    end
    if f7_local6 == -1 then
        f7_local6 = 0
    end
    local f7_local7 = arg1:GetDist(TARGET_ENE_0)
    local f7_local8 = true
    if f7_local2 + f7_local3 < f7_local7 and arg1:GetRandam_Int(1, 100) < f7_local5 then
        f7_local8 = false
    end
    local f7_local9 = -1
    if f7_local8 == true and arg1:GetRandam_Int(1, 100) <= f7_local6 then
        f7_local9 = 9910
    end
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, f7_local1, f7_local2, TARGET_SELF, f7_local8, f7_local9)
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_ApproachAct_For_Beast, "EnemyCommonSubGoal_ApproachAct_For_Beast")
Goal.Activate = function (arg0, arg1, arg2)
    local f8_local0 = Get_AnimOffset_For_EnemyCommonSubGoal(arg1, arg2:GetParam(0))
    local f8_local1 = arg2:GetParam(1)
    local f8_local2 = arg2:GetParam(2)
    local f8_local3 = arg2:GetParam(3)
    local f8_local4 = arg2:GetParam(4)
    local f8_local5 = arg2:GetParam(5)
    local f8_local6 = arg2:GetParam(6)
    if f8_local1 == -1 then
        f8_local1 = TARGET_ENE_0
    end
    if f8_local2 == -1 then
        f8_local2 = arg1:GetAIAttackParam(f8_local0, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
    end
    if f8_local3 == -1 then
        f8_local3 = 4
    end
    if f8_local4 == -1 then
        f8_local4 = 20
    end
    if f8_local5 == -1 then
        f8_local5 = 80
    end
    if f8_local6 == -1 then
        f8_local6 = 0
    end
    local f8_local7 = arg1:GetDist(TARGET_ENE_0)
    local f8_local8 = true
    if f8_local2 + f8_local3 < f8_local7 then
        if arg1:GetRandam_Int(1, 100) <= f8_local5 then
            f8_local8 = false
        end
    elseif arg1:GetRandam_Int(1, 100) <= f8_local4 then
        f8_local8 = false
    end
    local f8_local9 = -1
    if f8_local8 == true and arg1:GetRandam_Int(1, 100) <= f8_local6 then
        f8_local9 = 9910
    end
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, f8_local1, f8_local2, TARGET_SELF, f8_local8, f8_local9)
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_LeaveTarget, "EnemyCommonSubGoal_LeaveTarget")
Goal.Activate = function (arg0, arg1, arg2)
    local f9_local0 = arg2:GetParam(0)
    local f9_local1 = arg2:GetParam(1)
    local f9_local2 = arg1:GetDist(TARGET_ENE_0)
    local f9_local3 = -1
    if arg1:GetRandam_Int(1, 100) < arg2:GetParam(2) then
        f9_local3 = 9910
    end
    if f9_local0 == 0 then
        local f9_local4 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, f9_local3)
        f9_local4:SetTargetRange(0, f9_local2 / 2, f9_local2 + 20)
    else
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f9_local1, TARGET_SELF, false, -1)
    end
    
end

RegisterTableGoal(GOAL_EnemyCommonSubGoal_SideWalk, "EnemyCommonSubGoal_SideWalk")
REGISTER_GOAL_NO_SUB_GOAL(EnemyCommonSubGoal_SideWalk, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f10_local0 = arg2:GetParam(0)
    local f10_local1 = arg1:GetDist(TARGET_ENE_0)
    local f10_local2 = false
    local f10_local3 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 5)
    local f10_local4 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 5)
    local f10_local5 = -1
    if arg1:GetRandam_Int(1, 100) < arg2:GetParam(1) then
        f10_local5 = 9910
    end
    if f10_local0 == 2 then
        if f10_local3 < 1 or f10_local2 == true then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, f10_local5)
            local f10_local6 = arg2:GetLatestAddGoalFunc()
            f10_local6:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, f10_local5)
            local f10_local6 = arg2:GetLatestAddGoalFunc()
            f10_local6:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
        end
    elseif f10_local0 == 3 then
        if f10_local4 < 1 or f10_local2 == true then
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEAY_MOVE_RIGHT, arg1:GetRandam_Int(30, 60), true, true, f10_local5)
            local f10_local6 = arg2:GetLatestAddGoalFunc()
            f10_local6:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(2, 3), TARGET_ENE_0, SIDEWAY_MOVE_LEFT, arg1:GetRandam_Int(30, 60), true, true, f10_local5)
            local f10_local6 = arg2:GetLatestAddGoalFunc()
            f10_local6:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 0)
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


