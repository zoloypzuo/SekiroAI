RegisterTableLogic(LOGIC_ID_PatrolLeader20000)
Logic.Main = function (arg0, arg1)
    arg1:AddTopGoal(GOAL_COMMON_NonBattleAct, 10, 100, false, false, TARGET_SELF, 1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


