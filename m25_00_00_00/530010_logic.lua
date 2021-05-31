RegisterTableLogic(530010)
Logic.Main = function (arg0, arg1)
    if arg1:IsBattleState() then
        _COMMON_SetBattleGoal(arg1)
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


