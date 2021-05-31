RegisterTableGoal(GOAL_KugutsuAct_20000_Battle, "GOAL_KugutsuAct_20000_Battle")
REGISTER_DBG_GOAL_PARAM(GOAL_KugutsuAct_20000_Battle, 0, "???s??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_KugutsuAct_20000_Battle, 1, "???s?s??", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_KugutsuAct_20000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = arg2:GetParam(0)
    local f2_local1 = arg2:GetParam(1)
    local f2_local2 = arg1:GetDist(TARGET_LOCALPLAYER)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200004) then

    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200002) then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 201040, TARGET_SELF, 9999, 0, 0, 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 1040, TARGET_SELF, 9999, 0, 0, 0, 0)
    end
    if f2_local2 >= 6 then
        if arg1:CheckDoesExistPath(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 0, 0) == true then
            if f2_local1 == 1 then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 5, TARGET_SELF, true, -1)
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 5, TARGET_SELF, false, -1)
            end
        elseif arg1:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif f2_local2 >= 3 then
        if arg1:CheckDoesExistPath(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 0, 0) == true then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 2, TARGET_SELF, true, -1)
        elseif arg1:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
            arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
        end
    elseif f2_local2 >= 1 then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    elseif SpaceCheck(arg1, arg2, 180, 1) == true then
        if f2_local0 == 1 then
            if arg1:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
                arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
            end
        else
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_LOCALPLAYER, 999, TARGET_LOCALPLAYER, true, -1)
        end
    elseif arg1:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
        arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
    else
        arg2:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
    end
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


