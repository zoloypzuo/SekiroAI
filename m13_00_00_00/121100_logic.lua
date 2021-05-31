RegisterTableLogic(121100)
Logic.Main = function (arg0, arg1)
    local f1_local0 = arg1:GetDist(TARGET_ENE_0)
    if not not arg1:IsBattleState() or arg1:IsFindState() then
        _COMMON_SetBattleGoal(arg1)
    elseif arg1:IsCautionState() then
        if f1_local0 <= 1 then
            arg1:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_SELF, 0, 0, 0)
        else
            arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
        end
    else
        _COMMON_AddNonBattleGoal(arg1, -1, -1, true)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


