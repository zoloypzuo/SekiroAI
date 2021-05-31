RegisterTableLogic(132000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    LOCAL_EzSetup(arg1)
    
end

function LOCAL_EzSetup(arg0)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 205050) and not arg0:HasSpecialEffectId(TARGET_SELF, 205051) and LOCAL_AddStateTransitionGoal(arg0) then
        return true
    end
    _COMMON_SetBattleActLogic(arg0)
    if arg0:IsLadderAct(TARGET_SELF) and not arg0:HasGoal(GOAL_COMMON_LadderAct) then
        local f2_local0 = arg0:GetTopGoal()
        if f2_local0 ~= nil then
            f2_local0:AddSubGoal_Front(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, arg0:GetLadderDirMove(TARGET_SELF))
        else
            arg0:AddTopGoal(GOAL_COMMON_LadderAct, -1, 3000, TARGET_SELF, arg0:GetLadderDirMove(TARGET_SELF))
        end
    end
    
end

function LOCAL_AddStateTransitionGoal(arg0)
    local f3_local0 = arg0:IsSearchTarget(TARGET_ENE_0)
    local f3_local1 = arg0:GetPrevTargetState()
    local f3_local2 = arg0:GetCurrTargetType()
    if not not arg0:IsFindState() or arg0:IsBattleState() then
        arg0:ClearSoundTarget()
        arg0:ClearIndicationPosTarget()
        if arg0:HasSpecialEffectId(TARGET_SELF, 200004) then

        elseif arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 220070) and arg0:IsVisibleCurrTarget() == false then
                if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    arg0:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 40, -1, GOAL_RESULT_Success, true)
                else
                    arg0:AddTopGoal(GOAL_COMMON_ClearTarget, 3, AI_TARGET_TYPE__NORMAL_ENEMY)
                end
            else
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 201040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            end
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 200001) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 220070) and arg0:IsVisibleCurrTarget() == false then
                if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    arg0:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 40, -1, GOAL_RESULT_Success, true)
                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 201040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ClearTarget, 3, AI_TARGET_TYPE__NORMAL_ENEMY)
                end
            else
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 201040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            end
            return true
        else
            if arg0:HasSpecialEffectId(TARGET_SELF, 220070) and arg0:IsVisibleCurrTarget() == false then
                if not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    arg0:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 40, -1, GOAL_RESULT_Success, true)
                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    arg0:AddTopGoal(GOAL_COMMON_ClearTarget, 3, AI_TARGET_TYPE__NORMAL_ENEMY)
                end
            else
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            end
            return true
        end
    elseif arg0:IsCautionState() then
        if f3_local2 == AI_TARGET_TYPE__MEMORY_ENEMY then
            if arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 401020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif not arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
                if arg0:HasSpecialEffectId(TARGET_SELF, 200001) then

                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                end
            end
        elseif f3_local2 == AI_TARGET_TYPE__SOUND then
            arg0:SetStringIndexedNumber("toCaotionFlag", 1)
            if arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 401020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif not arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
                if arg0:HasSpecialEffectId(TARGET_SELF, 200001) then

                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                end
            end
        elseif f3_local2 == AI_TARGET_TYPE__INDICATION_POS then
            arg0:SetStringIndexedNumber("toCaotionFlag", 1)
            if arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 401020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif not arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
                if arg0:HasSpecialEffectId(TARGET_SELF, 200001) then

                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                end
            end
        elseif f3_local2 == AI_TARGET_TYPE__CORPSE_POS then
            arg0:SetStringIndexedNumber("toCaotionFlag", 1)
            if arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 401020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif not arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
                if arg0:HasSpecialEffectId(TARGET_SELF, 200001) then

                else
                    arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                end
            end
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 401000, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        return true
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 201000, TARGET_SELF, 9999, 0, 0, 0, 0)
        return true
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 200001) then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 201000, TARGET_SELF, 9999, 0, 0, 0, 0)
        return true
    else

    end
    return false
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


