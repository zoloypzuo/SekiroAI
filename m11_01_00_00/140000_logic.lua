RegisterTableLogic(140000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:GetStringIndexedNumber("firstSpRead") == 0 then
        arg1:SetStringIndexedNumber("maxSp", arg1:GetSp(TARGET_SELF))
        arg1:SetStringIndexedNumber("firstSpRead", 1)
    end
    if arg1:GetStringIndexedNumber("firstHpRead") == 0 then
        arg1:SetStringIndexedNumber("maxHp", arg1:GetHpRate(TARGET_SELF))
        arg1:SetStringIndexedNumber("firstHpRead", 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        local f1_local0 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
        if f1_local0 == GOAL_Kenkaku_weak_140000_Battle then
            JuzuReaction(arg1, goal, 0, 20105)
        else
            JuzuReaction(arg1, goal, 1, 20105)
        end
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


