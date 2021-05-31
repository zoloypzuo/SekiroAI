RegisterTableLogic(110000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3503000)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 0, 20105)
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f2_local0 == 3503000 then
        return arg0.FumareDokuhakiReaction(arg1, arg2)
    end
    return false
    
end

Logic.FumareDokuhakiReaction = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 20020
    local f3_local3 = 0
    local f3_local4 = 0
    arg1:ClearSubGoal()
    arg0:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.5, f3_local2, TARGET_SELF, 9999, f3_local3, f3_local4, 0, 0)
    return true
    
end

Logic.KugutsuAct = function (arg0, arg1)
    if arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end


