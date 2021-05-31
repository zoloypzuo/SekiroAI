RegisterTableLogic(147000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    local f1_local0 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 3147100) then
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 3, 3200, TARGET_SELF, 9999, 0, 0, 0, 0)
        return true
    end
    if f1_local0 == 10 then
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3220, TARGET_ENE_0, 9999, 0, 0, 0, 0)
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
    return false
    
end

Logic.KugutsuAct = function (arg0, arg1)
    if arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end

