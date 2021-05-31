RegisterTableLogic(150000)
Logic.Main = function (arg0, arg1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3150100) then
        if not not arg1:IsFindState() or arg1:IsBattleState() then
            _COMMON_SetBattleGoal(arg1)
            arg1:SetStringIndexedNumber("findFlag", 1)
            return true
        else
            goal:AddTopGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.5, 20010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        end
    else
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


