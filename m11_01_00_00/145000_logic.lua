RegisterTableLogic(145000)
Logic.Main = function (arg0, arg1)
    local f1_local0 = arg1:GetEventRequest()
    local f1_local1 = arg1:GetEventRequest(1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3145010) then
        if arg1:GetNpcThinkParamID() == 14500010 then
            arg1:AddObserveRegion(1, TARGET_ENE_0, 1112266)
        elseif arg1:GetNpcThinkParamID() == 14500011 then
            arg1:AddObserveRegion(1, TARGET_ENE_0, 1112549)
        end
        arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    end
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 1, 20105)
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) then
        arg2:ClearSubGoal()
        arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 1, 3220, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(1)
        return true
    end
    return false
    
end

Logic.KugutsuAct = function (arg0, arg1)
    if arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end


