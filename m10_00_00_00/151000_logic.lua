RegisterTableLogic(151000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 1, 20105)
        return true
    end
    if arg1:IsBattleState() then
        _COMMON_SetBattleGoal(arg1)
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


