RegisterTableLogic(125000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200033) then
            JuzuReaction(arg1, goal, 1, 20105)
        else
            JuzuReaction(arg1, goal, 0, 20105)
        end
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

Logic.KugutsuAct = function (arg0, arg1)
    local f3_local0 = 3
    local f3_local1 = 15
    if arg0:HasSpecialEffectId(TARGET_SELF, 3125090) then
        if arg0:IsInsideTargetRegion(TARGET_SELF, 1702624) then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_SELF, 0, 0, 0)
            return true
        elseif arg0:IsInsideTargetRegion(TARGET_SELF, 1702630) then
            arg0:SetEventMoveTarget(1702624)
            arg0:AddTopGoal(GOAL_COMMON_Turn, f3_local0, POINT_EVENT, f3_local1, -1, GOAL_RESULT_Success, true)
            return true
        else
            arg0:SetEventMoveTarget(1702629)
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.5, TARGET_SELF, false, -1)
            return true
        end
    elseif arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end


