function CommonNPC_ChangeWepL1(arg0, arg1)
    local f1_local0 = arg0:GetEquipWeaponIndex(ARM_L)
    if f1_local0 ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L1, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepR1(arg0, arg1)
    local f2_local0 = arg0:GetEquipWeaponIndex(ARM_R)
    if f2_local0 ~= WEP_Primary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R1, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepL2(arg0, arg1)
    local f3_local0 = arg0:GetEquipWeaponIndex(ARM_L)
    if f3_local0 ~= WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L2, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_ChangeWepR2(arg0, arg1)
    local f4_local0 = arg0:GetEquipWeaponIndex(ARM_R)
    if f4_local0 ~= WEP_Secondary then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R2, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_SwitchBothHandMode(arg0, arg1)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
    end
    
end

function CommonNPC_SwitchOneHandMode(arg0, arg1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
    end
    
end

function NPC_Approach_Act(arg0, arg1, arg2, arg3, arg4)
    arg0:EndDash()
    local f7_local0 = -1
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    if f7_local1 <= arg4 then
        f7_local0 = 4
    end
    local f7_local2 = arg0:GetDist(TARGET_ENE_0)
    if arg3 <= f7_local2 then
        arg0:StartDash()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, false, f7_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg2, TARGET_SELF, false, f7_local0)
    end
    
end

function NPC_KATATE_Switch(arg0, arg1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function NPC_RYOUTE_Switch(arg0, arg1)
    if not arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function Damaged_StepCount_NPCPlayer(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = arg0:GetRandam_Int(1, 100)
    local f10_local3 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and f10_local0 < arg2 and f10_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f10_local2 <= arg6 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
        elseif f10_local2 <= arg6 + arg7 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
        end
        if f10_local3 <= arg4 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, arg5, TARGET_ENE_0, DIST_Middle, 0)
        end
        return true
    end
    
end

function FindAttack_Step_NPCPlayer(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f11_local0 <= arg2 and f11_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f11_local2 <= arg4 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
        elseif f11_local2 <= arg4 + arg5 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
        end
        return true
    end
    
end

function FindAttack_Act(arg0, arg1, arg2, arg3)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f12_local0 <= arg2 and f12_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindAttack_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = arg0:GetRandam_Int(1, 100)
    local f13_local3 = GET_PARAM_IF_NIL_DEF(arg4, 50)
    local f13_local4 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f13_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f13_local6 = GET_PARAM_IF_NIL_DEF(arg7, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f13_local0 <= arg2 and f13_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f13_local2 <= f13_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f13_local6)
        elseif f13_local2 <= f13_local3 + f13_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f13_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f13_local6)
        end
        return true
    end
    
end

function FindAttack_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = arg0:GetRandam_Int(1, 100)
    local f14_local3 = GET_PARAM_IF_NIL_DEF(arg4, 40)
    local f14_local4 = GET_PARAM_IF_NIL_DEF(arg5, 4)
    local f14_local5 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f14_local0 <= arg2 and f14_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f14_local2 <= f14_local3 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f14_local5, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f14_local5, TARGET_ENE_0, true, 9910)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
        return true
    end
    
end

function FindAttack_Step_or_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = arg0:GetRandam_Int(1, 100)
    local f15_local3 = arg0:GetRandam_Int(1, 100)
    local f15_local4 = GET_PARAM_IF_NIL_DEF(arg5, 50)
    local f15_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f15_local6 = GET_PARAM_IF_NIL_DEF(arg7, 25)
    local f15_local7 = GET_PARAM_IF_NIL_DEF(arg8, 3)
    local f15_local8 = GET_PARAM_IF_NIL_DEF(arg9, 40)
    local f15_local9 = GET_PARAM_IF_NIL_DEF(arg10, 4)
    local f15_local10 = GET_PARAM_IF_NIL_DEF(arg11, 3)
    if arg0:IsInterupt(INTERUPT_FindAttack) and f15_local0 <= arg2 and f15_local1 <= arg3 then
        if f15_local2 <= arg4 then
            arg1:ClearSubGoal()
            if f15_local3 <= f15_local4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f15_local7)
            elseif f15_local3 <= f15_local4 + f15_local5 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f15_local7)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f15_local7)
            end
            return true
        else
            arg1:ClearSubGoal()
            if f15_local3 <= f15_local8 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f15_local10, TARGET_ENE_0, true, 9910)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f15_local10, TARGET_ENE_0, true, 9910)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local9, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
            end
            return true
        end
    end
    
end

function Damaged_Act(arg0, arg1, arg2, arg3)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and f16_local0 < arg2 and f16_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Damaged_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetRandam_Int(1, 100)
    local f17_local3 = GET_PARAM_IF_NIL_DEF(arg4, 40)
    local f17_local4 = GET_PARAM_IF_NIL_DEF(arg5, 4)
    local f17_local5 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f17_local0 <= arg2 and f17_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f17_local2 <= f17_local3 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f17_local5, TARGET_ENE_0, true, 9910)
        else
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f17_local5, TARGET_ENE_0, true, 9910)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
        end
        return true
    end
    
end

function Damaged_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = arg0:GetRandam_Int(1, 100)
    local f18_local3 = GET_PARAM_IF_NIL_DEF(arg4, 50)
    local f18_local4 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f18_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f18_local6 = GET_PARAM_IF_NIL_DEF(arg7, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f18_local0 <= arg2 and f18_local1 <= arg3 then
        arg1:ClearSubGoal()
        if f18_local2 <= f18_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f18_local6)
        elseif f18_local2 <= f18_local3 + f18_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f18_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f18_local6)
        end
        return true
    end
    
end

function Damaged_Step_or_Guard(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = arg0:GetRandam_Int(1, 100)
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    local f19_local4 = GET_PARAM_IF_NIL_DEF(arg5, 50)
    local f19_local5 = GET_PARAM_IF_NIL_DEF(arg6, 25)
    local f19_local6 = GET_PARAM_IF_NIL_DEF(arg7, 25)
    local f19_local7 = GET_PARAM_IF_NIL_DEF(arg8, 3)
    local f19_local8 = GET_PARAM_IF_NIL_DEF(arg9, 40)
    local f19_local9 = GET_PARAM_IF_NIL_DEF(arg10, 4)
    local f19_local10 = GET_PARAM_IF_NIL_DEF(arg11, 3)
    if arg0:IsInterupt(INTERUPT_Damaged) and f19_local0 <= arg2 and f19_local1 <= arg3 then
        if f19_local2 <= arg4 then
            arg1:ClearSubGoal()
            if f19_local3 <= f19_local4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f19_local7)
            elseif f19_local3 <= f19_local4 + f19_local5 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f19_local7)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f19_local7)
            end
            return true
        else
            arg1:ClearSubGoal()
            if f19_local3 <= f19_local8 then
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f19_local10, TARGET_ENE_0, true, 9910)
            else
                arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f19_local10, TARGET_ENE_0, true, 9910)
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local9, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
            end
            return true
        end
    end
    
end

function GuardBreak_Act(arg0, arg1, arg2, arg3)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f20_local0 <= arg2 and f20_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function GuardBreak_Attack(arg0, arg1, arg2, arg3, arg4)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f21_local0 <= arg2 and f21_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function MissSwing_Int(arg0, arg1, arg2, arg3)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f22_local0 <= arg2 and f22_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function MissSwing_Attack(arg0, arg1, arg2, arg3, arg4)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f23_local0 <= arg2 and f23_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function UseItem_Act(arg0, arg1, arg2, arg3)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_UseItem) and f24_local0 <= arg2 and f24_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Shoot_1kind(arg0, arg1, arg2, arg3)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
    local f25_local3 = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
    local f25_local4 = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
    local f25_local5 = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
    if arg0:IsInterupt(INTERUPT_Shoot) and f25_local0 <= arg2 and f25_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function Shoot_2dist(arg0, arg1, arg2, arg3, arg4, arg5)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if f26_local0 <= arg2 then
            if f26_local1 <= arg4 then
                arg1:ClearSubGoal()
                return 1
            end
        elseif f26_local0 <= arg3 then
            if f26_local1 <= arg5 then
                arg1:ClearSubGoal()
                return 2
            end
        else
            return 0
        end
    end
    return 0
    
end

function MissSwingSelf_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    local f27_local2 = arg0:GetRandam_Int(1, 100)
    local f27_local3 = GET_PARAM_IF_NIL_DEF(arg3, 50)
    local f27_local4 = GET_PARAM_IF_NIL_DEF(arg4, 25)
    local f27_local5 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f27_local6 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_MissSwingSelf) and f27_local1 <= arg2 then
        arg1:ClearSubGoal()
        if f27_local2 <= f27_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f27_local6)
        elseif f27_local2 <= f27_local3 + f27_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f27_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f27_local6)
        end
        return true
    end
    
end

function RebByOpGuard_Step(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = arg0:GetRandam_Int(1, 100)
    local f28_local2 = arg0:GetRandam_Int(1, 100)
    local f28_local3 = GET_PARAM_IF_NIL_DEF(arg3, 50)
    local f28_local4 = GET_PARAM_IF_NIL_DEF(arg4, 25)
    local f28_local5 = GET_PARAM_IF_NIL_DEF(arg5, 25)
    local f28_local6 = GET_PARAM_IF_NIL_DEF(arg6, 3)
    if arg0:IsInterupt(INTERUPT_ReboundByOpponentGuard) and f28_local1 <= arg2 then
        arg1:ClearSubGoal()
        if f28_local2 <= f28_local3 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f28_local6)
        elseif f28_local2 <= f28_local3 + f28_local4 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f28_local6)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f28_local6)
        end
        return true
    end
    
end

function SuccessGuard_Act(arg0, arg1, arg2, arg3)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = arg0:GetRandam_Int(1, 100)
    local f29_local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_SuccessGuard) and f29_local0 <= arg2 and f29_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function SuccessGuard_Attack(arg0, arg1, arg2, arg3, arg4)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_SuccessGuard) and f30_local0 <= arg2 and f30_local1 <= arg3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg4, TARGET_ENE_0, DIST_Middle, 0)
        return true
    end
    return false
    
end

function FarDamaged_Act(arg0, arg1, arg2, arg3)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Damaged) and arg2 <= f31_local0 and f31_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function MissSwing_Act(arg0, arg1, arg2, arg3)
    local f32_local0 = arg0:GetDist(TARGET_ENE_0)
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_MissSwing) and f32_local0 <= arg2 and f32_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindGuardBreak_Act(arg0, arg1, arg2, arg3)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f33_local0 <= arg2 and f33_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindGuardFinish_Act(arg0, arg1, arg2, arg3)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_GuardFinish) and f34_local0 <= arg2 and f34_local1 <= arg3 then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end

function FindShoot_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    local f35_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_Shoot) then
        if f35_local0 <= arg5 and f35_local1 <= arg2 then
            arg1:ClearSubGoal()
            return 1
        elseif f35_local0 <= arg6 and f35_local1 <= arg3 then
            arg1:ClearSubGoal()
            return 2
        elseif f35_local0 <= arg7 and f35_local1 <= arg4 then
            arg1:ClearSubGoal()
            return 3
        else
            arg1:ClearSubGoal()
            return 0
        end
    end
    return 0
    
end

function BusyApproach_Act(arg0, arg1, arg2, arg3, arg4)
    local f36_local0 = -1
    local f36_local1 = arg0:GetRandam_Int(1, 100)
    if f36_local1 <= arg4 then
        f36_local0 = 9910
    end
    local f36_local2 = arg0:GetDist(TARGET_ENE_0)
    if arg3 <= f36_local2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, false, f36_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, arg2, TARGET_SELF, true, f36_local0)
    end
    
end

function Approach_and_Attack_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f37_local0 = arg0:GetDist(TARGET_ENE_0)
    local f37_local1 = true
    if arg3 <= f37_local0 then
        f37_local1 = false
    end
    local f37_local2 = -1
    local f37_local3 = arg0:GetRandam_Int(1, 100)
    if f37_local3 <= arg4 then
        f37_local2 = 9910
    end
    local f37_local4 = GET_PARAM_IF_NIL_DEF(arg7, 1.5)
    local f37_local5 = GET_PARAM_IF_NIL_DEF(arg8, 20)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, f37_local1, f37_local2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg5, TARGET_ENE_0, arg6, f37_local4, f37_local5)
    
end

function KeepDist_and_Attack_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f38_local0 = arg0:GetDist(TARGET_ENE_0)
    local f38_local1 = true
    if arg4 <= f38_local0 then
        f38_local1 = false
    end
    local f38_local2 = -1
    local f38_local3 = arg0:GetRandam_Int(1, 100)
    if f38_local3 <= arg5 then
        f38_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, arg2, arg3, TARGET_ENE_0, f38_local1, f38_local2)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg6, TARGET_ENE_0, arg7, 0)
    
end

function Approach_and_GuardBreak_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f39_local0 = arg0:GetDist(TARGET_ENE_0)
    local f39_local1 = true
    if arg3 <= f39_local0 then
        f39_local1 = false
    end
    local f39_local2 = -1
    local f39_local3 = arg0:GetRandam_Int(1, 100)
    if f39_local3 <= arg4 then
        f39_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg2, TARGET_SELF, f39_local1, f39_local2)
    arg1:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, arg5, TARGET_ENE_0, arg6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, arg7, TARGET_ENE_0, arg8, 0)
    
end

function GetWellSpace_Act(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local f40_local0 = -1
    local f40_local1 = arg0:GetRandam_Int(1, 100)
    if f40_local1 <= arg2 then
        f40_local0 = 9910
    end
    local f40_local2 = arg0:GetRandam_Int(1, 100)
    local f40_local3 = arg0:GetRandam_Int(0, 1)
    local f40_local4 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + f40_local3, TARGET_ENE_0, 2)
    if f40_local2 <= arg3 then

    elseif f40_local2 <= arg3 + arg4 and f40_local4 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, f40_local0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f40_local3, arg0:GetRandam_Int(30, 45), true, true, f40_local0)
    elseif f40_local2 <= arg3 + arg4 + arg5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, f40_local0)
    elseif f40_local2 <= arg3 + arg4 + arg5 + arg6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    end
    
end

function GetWellSpace_Act_IncludeSidestep(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local f41_local0 = -1
    local f41_local1 = arg0:GetRandam_Int(1, 100)
    if f41_local1 <= arg2 then
        f41_local0 = 9910
    end
    local f41_local2 = arg0:GetRandam_Int(1, 100)
    local f41_local3 = arg0:GetRandam_Int(0, 1)
    local f41_local4 = arg0:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + f41_local3, TARGET_ENE_0, 2)
    if f41_local2 <= arg3 then

    elseif f41_local2 <= arg3 + arg4 and f41_local4 < 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, f41_local0)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f41_local3, arg0:GetRandam_Int(30, 45), true, true, f41_local0)
    elseif f41_local2 <= arg3 + arg4 + arg5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, f41_local0)
    elseif f41_local2 <= arg3 + arg4 + arg5 + arg6 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
    elseif f41_local2 <= arg3 + arg4 + arg5 + arg6 + arg7 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
    else
        local f41_local5 = arg0:GetRandam_Int(1, 100)
        if f41_local5 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
        end
    end
    
end

function Shoot_Act(arg0, arg1, arg2, arg3, arg4)
    if arg4 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, arg2, TARGET_ENE_0, DIST_None, 0)
    elseif arg4 >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, arg2, TARGET_ENE_0, DIST_None, 0)
        if arg4 >= 3 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
            if arg4 >= 4 then
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
                if arg4 >= 5 then
                    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, arg3, TARGET_ENE_0, DIST_None, 0)
                end
            end
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, arg3, TARGET_ENE_0, DIST_None, 0)
    end
    
end

function Approach_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = 10
    end
    local f43_local0 = arg0:GetDist(TARGET_ENE_0)
    local f43_local1 = true
    if arg3 <= f43_local0 then
        f43_local1 = false
    end
    local f43_local2 = -1
    local f43_local3 = arg0:GetRandam_Int(1, 100)
    if f43_local3 <= arg4 then
        f43_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg5, TARGET_ENE_0, arg2, TARGET_SELF, f43_local1, f43_local2)
    
end

function Approach_or_Leave_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    local f44_local0 = arg0:GetDist(TARGET_ENE_0)
    local f44_local1 = true
    if arg4 ~= -1 and arg4 <= f44_local0 then
        f44_local1 = false
    end
    local f44_local2 = -1
    if arg0:GetRandam_Int(1, 100) <= arg5 then
        f44_local2 = 9910
    end
    if arg2 <= f44_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg3, TARGET_SELF, f44_local1, f44_local2)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, arg2, TARGET_ENE_0, true, f44_local2)
    end
    
end

function Watching_Parry_Chance_Act(arg0, arg1)
    FirstDist = arg0:GetRandam_Float(2, 4)
    SecondDist = arg0:GetRandam_Float(2, 4)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, FirstDist, FirstDist + 0.5, TARGET_ENE_0, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, SecondDist, SecondDist + 0.5, TARGET_ENE_0, true, 9920)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(3, 5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), 180, true, true, 9920)
    
end

function Parry_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    local f46_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInterupt(INTERUPT_ParryTiming) then
        if f46_local0 <= arg2 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, arg3) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Parry, 1.25, 4000, TARGET_SELF, 0)
            return true
        end
    elseif arg0:IsInterupt(INTERUPT_SuccessParry) and f46_local0 <= arg4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, arg5) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
        local f46_local1 = arg0:GetRandam_Float(0.3, 0.6)
        arg1:AddSubGoal(GOAL_COMMON_Wait, f46_local1, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
        return true
    end
    
end

function ObserveAreaForBackstab(arg0, arg1, arg2, arg3, arg4)
    arg0:AddObserveArea(arg2, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, arg4, arg3)
    
end

function Backstab_Act(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsThrowing() == false and arg0:IsFinishTimer(arg4) == true and arg0:IsInsideObserve(arg2) then
        arg0:SetTimer(arg4, arg5)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, arg3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
        return true
    end
    
end

function Torimaki_Act(arg0, arg1, arg2)
    local f49_local0 = -1
    local f49_local1 = arg0:GetRandam_Int(1, 100)
    if f49_local1 <= arg2 then
        f49_local0 = 9910
    end
    local f49_local2 = arg0:GetDist(TARGET_ENE_0)
    if f49_local2 >= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
    elseif f49_local2 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
    elseif f49_local2 >= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f49_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4, TARGET_ENE_0, true, f49_local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f49_local0)
    
end

function Kankyaku_Act(arg0, arg1, arg2)
    local f50_local0 = -1
    local f50_local1 = arg0:GetRandam_Int(1, 100)
    if f50_local1 <= arg2 then
        f50_local0 = 9910
    end
    local f50_local2 = arg0:GetDist(TARGET_ENE_0)
    if f50_local2 >= 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
    elseif f50_local2 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
    elseif f50_local2 >= 4 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f50_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, f50_local0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f50_local0)
    
end

function ClearTableParam(arg0, arg1)
    local f51_local0 = 50
    local f51_local1 = 1
    for f51_local2 = 1, f51_local0, 1 do
        arg0[f51_local2] = 0
        arg1[f51_local2] = {}
    end
    
end

function SelectOddsIndex(arg0, arg1)
    local f52_local0 = table.getn(arg1)
    local f52_local1 = 0
    for f52_local2 = 1, f52_local0, 1 do
        f52_local1 = f52_local1 + arg1[f52_local2]
    end
    local f52_local2 = arg0:GetRandam_Int(0, f52_local1 - 1)
    for f52_local3 = 1, f52_local0, 1 do
        local f52_local6 = arg1[f52_local3]
        if f52_local2 < f52_local6 then
            return f52_local3
        end
        f52_local2 = f52_local2 - f52_local6
    end
    local f52_local3 = -1
    return f52_local3
    
end

function SelectFunc(arg0, arg1, arg2)
    local f53_local0 = SelectOddsIndex(arg0, arg1)
    if f53_local0 < 1 then
        return nil
    end
    return arg2[f53_local0]
    
end

function SelectGoalFunc(arg0, arg1, arg2)
    local f54_local0 = _GetGoalActFuncTable(arg0)
    return SelectFunc(arg1, arg2, f54_local0)
    
end

function CallAttackAndAfterFunc(arg0, arg1, arg2, arg3, arg4, arg5)
    local f55_local0 = SelectOddsIndex(arg1, arg3)
    local f55_local1 = 0
    if f55_local0 >= 1 then
        local f55_local2 = _GetGoalActFuncTable(arg0)
        local f55_local3 = nil
        if arg4 ~= nil then
            f55_local3 = arg4[f55_local0]
        end
        f55_local1 = f55_local2[f55_local0](arg0, arg1, arg2, f55_local3)
    end
    local f55_local2 = arg1:GetRandam_Int(1, 100)
    if f55_local2 <= f55_local1 then
        if arg0.ActAfter ~= nil then
            arg0:ActAfter(arg1, arg2, arg5)
        else
            HumanCommon_ActAfter_AdjustSpace(arg1, arg2, arg5)
        end
    end
    
end

function _GetGoalActFuncTable(arg0)
    local f56_local0 = {arg0.Act01, arg0.Act02, arg0.Act03, arg0.Act04, arg0.Act05, arg0.Act06, arg0.Act07, arg0.Act08, arg0.Act09, arg0.Act10, arg0.Act11, arg0.Act12, arg0.Act13, arg0.Act14, arg0.Act15, arg0.Act16, arg0.Act17, arg0.Act18, arg0.Act19, arg0.Act20}
    return f56_local0
    
end

function GetTargetAngle(arg0, arg1)
    if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_F, 90) then
        if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_F, 90) then
            return TARGET_ANGLE_FRONT
        elseif arg0:IsInsideTarget(arg1, AI_DIR_TYPE_L, 180) then
            return TARGET_ANGLE_LEFT
        else
            return TARGET_ANGLE_RIGHT
        end
    end
    if arg0:IsInsideTarget(arg1, AI_DIR_TYPE_L, 90) then
        return TARGET_ANGLE_LEFT
    elseif arg0:IsInsideTarget(arg1, AI_DIR_TYPE_R, 90) then
        return TARGET_ANGLE_RIGHT
    else
        return TARGET_ANGLE_BACK
    end
    
end


