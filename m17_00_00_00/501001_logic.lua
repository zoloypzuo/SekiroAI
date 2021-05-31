RegisterTableLogic(LOGIC_ID_Orochi_Dummy_501001)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveRegion(0, TARGET_LOCALPLAYER, 1702623)
    arg1:AddObserveRegion(1, TARGET_LOCALPLAYER, 1702626)
    if arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702623) then
        arg1:ClearEnemyTarget()
    elseif arg1:GetNumber(1) == 1 and arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702626) then
        arg1:ClearEnemyTarget()
        arg1:ClearSoundTarget()
        arg1:ClearIndicationPosTarget()
        arg1:ClearLastMemoryTargetPos()
    end
    arg1:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg1:ClearEnemyTarget()
            return true
        elseif arg1:IsInsideObserve(1) then
            arg1:ClearEnemyTarget()
            arg1:ClearSoundTarget()
            arg1:ClearIndicationPosTarget()
            arg1:ClearLastMemoryTargetPos()
            arg1:SetNumber(1, 1)
            return true
        end
    end
    return false
    
end


