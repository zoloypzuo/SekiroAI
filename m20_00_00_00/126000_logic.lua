RegisterTableLogic(126000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 220010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107710)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110060)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110015)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3126000)
    arg1:DeleteObserve(0)
    local f1_local0 = 90
    local f1_local1 = 25
    local f1_local2 = 0
    local f1_local3 = 180
    local f1_local4 = arg1:GetRandam_Int(1, 100)
    local f1_local5 = P_R12
    local f1_local6 = arg1:GetDist(POINT_EVENT)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20016, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        return true
    end
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
    if _COMMON_AddStateTransitionGoal(arg1) then
        return true
    end
    if arg1:IsBattleState() == false and arg1:IsCautionState() == false and arg1:IsFindState() == false and arg1:IsInsideTargetRegion(TARGET_SELF, 2002830) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false then
        arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 20013, TARGET_SELF)
        return true
    elseif arg1:IsBattleState() == false and arg1:IsCautionState() == false and arg1:IsFindState() == false and arg1:IsInsideTargetRegion(TARGET_SELF, 2002870) and arg1:IsEventFlag(62000705) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false then
        arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 21, 20006, TARGET_SELF)
        return true
    elseif arg1:IsBattleState() == false and arg1:IsCautionState() == false and arg1:IsFindState() == false and arg1:IsInsideTargetRegion(TARGET_SELF, 2002880) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false then
        arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 21, 20006, TARGET_SELF)
        return true
    end
    if arg1:GetNumber(0) > 0 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg1:GetNumber(0) == 1 then
            if f1_local6 > 1 then
                f1_local5 = 2002859
                arg1:SetEventMoveTarget(f1_local5)
                arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_SELF, false, -1)
            else
                arg1:SetNumber(0, 0)
                arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
                return true
            end
        elseif arg1:GetNumber(0) == 2 then
            if f1_local6 > 1 then
                f1_local5 = 2002869
                arg1:SetEventMoveTarget(f1_local5)
                arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_SELF, false, -1)
            else
                arg1:SetNumber(0, 0)
                arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
                return true
            end
        end
    elseif arg1:GetNumber(1) == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if f1_local6 > 1 then
            f1_local5 = 2002898
            arg1:SetEventMoveTarget(f1_local5)
            arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_SELF, false, -1)
        else
            arg1:SetNumber(1, 0)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
            return true
        end
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 5020) or arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if not not arg1:IsBattleState() or arg1:IsFindState() then
            if arg1:GetStringIndexedNumber("FirstSight") == 0 then
                arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f1_local0, f1_local1)
                if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    arg1:SetTimer(0, 7)
                    arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 20005, TARGET_ENE_0)
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                    arg1:SetTimer(0, 7)
                    arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 20010, TARGET_ENE_0)
                end
            else
                _COMMON_SetBattleGoal(arg1)
            end
            arg1:SetStringIndexedNumber("FirstSight", 1)
        elseif arg1:IsCautionState() then
            arg1:AddTopGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, 0, 0, 0)
            arg1:SetStringIndexedNumber("FirstSight", 0)
        else
            COMMON_EzSetup(arg1)
            arg1:SetStringIndexedNumber("FirstSight", 0)
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        if not not arg1:IsBattleState() or arg1:IsFindState() then
            if arg1:GetStringIndexedNumber("FirstSight") == 0 then
                arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f1_local0, f1_local1)
                if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
                    arg1:SetTimer(0, 7)
                    arg1:AddTopGoal(GOAL_COMMON_WaitWithAnime, 10, 20015, TARGET_ENE_0)
                end
            else
                COMMON_EzSetup(arg1)
            end
            arg1:SetStringIndexedNumber("FirstSight", 1)
        else
            COMMON_EzSetup(arg1)
            arg1:SetStringIndexedNumber("FirstSight", 0)
        end
    else
        COMMON_EzSetup(arg1)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg1:Replanning()
        arg1:DeleteObserve(0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f2_local0 == 220010 then
            arg1:ClearEnemyTarget()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110060 then
            arg1:SetStringIndexedNumber("targetDeadFlag", 1)
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 9999, TARGET_SELF, true, -1)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110015 then
            arg1:SetStringIndexedNumber("TargetDeadFlag", 0)
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0, TARGET_ENE_0, 0, 0, 0)
            return true
        elseif f2_local0 == 3126000 then
            arg1:SetNumber(0, 0)
            arg1:SetNumber(1, 0)
            arg2:ClearSubGoal()
            arg1:ClearEnemyTarget()
            arg1:ClearSoundTarget()
            arg1:ClearIndicationPosTarget()
            arg1:ClearLastMemoryTargetPos()
            arg1:Replanning()
            return true
        end
    end
    return false
    
end


