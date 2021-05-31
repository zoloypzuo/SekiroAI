RegisterTableGoal(GOAL_SamuraiTaisho_102010_Battle, "GOAL_SamuraiTaisho_102010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_SamuraiTaisho_102010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    if arg1:GetNumber(1) > 0 then
        arg1:SetStringIndexedNumber("FirstAttackFlag", 1)
    end
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    local f2_local0 = arg0:Kengeki_Activate(arg1, arg2)
    if f2_local0 then
        return 
    end
    f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = Check_ReachAttack(arg1, 0)
    local f2_local6 = arg1:GetNinsatsuNum()
    if Common_ActivateAct(arg1, arg2) then

    elseif f2_local5 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local5 == UNREACH_ATTACK then
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[1] = 100
            f2_local0[4] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[1] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:GetNumber(2) == 0 and f2_local6 == 2 then
        f2_local0[1] = 100
    elseif arg1:GetNumber(3) == 0 and f2_local6 == 1 then
        f2_local0[1] = 100
    elseif arg1:GetNumber(1) > 0 then
        f2_local0[23] = 100
        if f2_local3 <= 2 then
            f2_local0[24] = 200
            f2_local0[25] = 300
        end
        f2_local0[1] = 1
    elseif f2_local3 >= 7 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[3] = 200
        f2_local0[4] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 0
    elseif f2_local3 > 2 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 150
    else
        f2_local0[1] = 150
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 150
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 200215) or arg1:HasSpecialEffectId(TARGET_SELF, 200216) then
        f2_local0[23] = 0
        f2_local0[24] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[5], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5201, 6, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5211, 6, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 3
    local f3_local8 = arg0:GetNinsatsuNum()
    if arg0:GetStringIndexedNumber("FirstAttackFlag") == 0 then
        f3_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local9 = 3000
    local f3_local10 = 3001
    local f3_local11 = 3002
    local f3_local12 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 0
    if f3_local8 == 2 then
        local f3_local16 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local12, f3_local14, f3_local15, 0, 0)
        f3_local16 = f3_local16:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
        f3_local16:TimingSetNumber(2, 1, AI_TIMING_SET__ACTIVATE)
    else
        local f3_local16 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local12, f3_local14, f3_local15, 0, 0)
        f3_local16 = f3_local16:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
        f3_local16:TimingSetNumber(3, 1, AI_TIMING_SET__ACTIVATE)
    end
    local f3_local16 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local10, TARGET_ENE_0, f3_local13, 0)
    f3_local16:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    f3_local16 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local11, TARGET_ENE_0, 9999, 0, 0)
    f3_local16:TimingSetNumber(1, arg0:GetNumber(1) + 3, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    if arg0:GetStringIndexedNumber("FirstAttackFlag") == 0 then
        f4_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3003
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, 9999, f4_local9, f4_local10, 0, 0)
    f4_local11:TimingSetNumber(1, arg0:GetNumber(1) + 3, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local3 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 1.5
    local f5_local7 = 3
    if arg0:GetStringIndexedNumber("FirstAttackFlag") == 0 then
        f5_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3006
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, 9999, f5_local9, f5_local10, 0, 0)
    f5_local11:TimingSetNumber(1, arg0:GetNumber(1) + 3, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 1.5
    local f6_local7 = 3
    if arg0:GetStringIndexedNumber("FirstAttackFlag") == 0 then
        f6_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 3007
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, TARGET_ENE_0, 9999, f6_local9, f6_local10, 0, 0)
    f6_local11:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 1.5
    local f7_local7 = 3
    if arg0:GetStringIndexedNumber("FirstAttackFlag") == 0 then
        f7_local4 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3008
    local f7_local9 = 3009
    local f7_local10 = 3067
    local f7_local11 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = arg0:GetRandam_Int(1, 100)
    local f7_local15 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local12, f7_local13, 0, 0)
    f7_local15:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    if f7_local14 <= 40 then
        f7_local15 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local10, TARGET_ENE_0, 9999, 0, 0)
        f7_local15:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    else
        f7_local15 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, 9999, 0, 0)
        f7_local15:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f8_local0, TARGET_ENE_0, f8_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetNinsatsuNum()
    local f9_local2 = arg0:GetSpRate(TARGET_SELF)
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    local f9_local4 = -1
    local f9_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f9_local5 = 1
            else
                f9_local5 = 0
            end
        else
            f9_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f9_local5 = 1
    else

    end
    local f9_local6 = arg0:GetRandam_Int(30, 45)
    if f9_local1 <= 1 and f9_local3 <= 50 then
        f9_local4 = 9910
    end
    arg0:SetNumber(10, f9_local5)
    local f9_local7 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f9_local5, f9_local6, true, true, f9_local4)
    f9_local7:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 5201
    local f10_local4 = arg0:GetNinsatsuNum()
    local f10_local5 = arg0:GetSp(TARGET_SELF)
    local f10_local6 = -1
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f10_local0 > 4 then

        else
            f10_local3 = 5211
        end
    end
    local f10_local8 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local1, f10_local3, TARGET_ENE_0, f10_local2, AI_DIR_TYPE_B, 0)
    f10_local8:TimingSetTimer(1, 6, AI_TIMING_SET__ACTIVATE)
    f10_local8 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f10_local8 = 1
            else
                f10_local8 = 0
            end
        else
            f10_local8 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f10_local8 = 1
    else

    end
    local f10_local9 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f10_local8)
    if f10_local4 <= 1 then
        f10_local6 = 9910
    end
    local f10_local10 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f10_local8, f10_local9, true, true, f10_local6)
    f10_local10:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Float(2, 4)
    local f11_local1 = arg0:GetRandam_Float(5, 7)
    local f11_local2 = arg0:GetDist(TARGET_ENE_0)
    local f11_local3 = arg0:GetNinsatsuNum()
    local f11_local4 = arg0:GetRandam_Int(1, 100)
    local f11_local5 = -1
    if f11_local3 <= 1 and f11_local4 <= 50 then
        f11_local5 = 9910
    end
    local f11_local6 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_ENE_0, true, f11_local5)
    f11_local6:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    local f12_local0 = arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    f12_local0:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f13_local1 = 0
    local f13_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f13_local2 == 0 then
        f13_local1 = 0
    elseif f13_local2 == 1 then
        f13_local1 = 1
    elseif f13_local2 == 2 then
        if f13_local0 <= 50 then
            f13_local1 = 0
        else
            f13_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f13_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f13_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 1.5
    local f14_local2 = 1.5
    local f14_local3 = arg0:GetRandam_Int(30, 45)
    local f14_local4 = -1
    local f14_local5 = arg0:GetRandam_Int(0, 1)
    if f14_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local1, TARGET_ENE_0, f14_local5, f14_local3, true, true, f14_local4)
    elseif f14_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, 8, TARGET_SELF, true, -1)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2, 50, 0)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = GetDist_Parry(arg0)
    local f16_local2 = arg0:GetRandam_Int(1, 100)
    local f16_local3 = arg0:GetRandam_Int(1, 100)
    local f16_local4 = arg0:GetRandam_Int(1, 100)
    local f16_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f16_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f16_local7 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f16_local7 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f16_local7 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221002) then
        f16_local7 = 2
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if f16_local7 == -1 then
        return false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220062) then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f16_local1) then
        if f16_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3102, TARGET_ENE_0, 9999, 0)
            return true
        elseif f16_local5 then
            if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                return false
            elseif f16_local7 == 2 then
                return false
            elseif f16_local7 == 1 then
                if f16_local2 <= 50 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f16_local7 == 0 and f16_local2 <= 100 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        elseif f16_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    elseif f16_local1 <= 4 and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 5) then
        if f16_local4 <= 67 and arg0:GetNinsatsuNum() <= 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3007, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        else
            return false
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f17_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) and arg0:IsFinishTimer(1) then
        arg1:ClearSubGoal()
        local f17_local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local0, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        f17_local1:TimingSetTimer(1, 6, AI_TIMING_SET__ACTIVATE)
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
        if f18_local0 <= 30 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2)
    local f19_local0 = ReturnKengekiSpecialEffect(arg1)
    if f19_local0 == 0 then
        return false
    end
    local f19_local1 = {}
    local f19_local2 = {}
    local f19_local3 = {}
    Common_Clear_Param(f19_local1, f19_local2, f19_local3)
    local f19_local4 = arg1:GetDist(TARGET_ENE_0)
    local f19_local5 = arg1:GetSp(TARGET_SELF)
    if f19_local0 == 200200 then

    elseif f19_local0 == 200201 then

    elseif f19_local0 == 200205 then

    elseif f19_local0 == 200206 then

    elseif f19_local0 == 200210 then
        if f19_local4 >= 3 then

        else
            f19_local1[5] = 300
        end
    elseif f19_local0 == 200211 then
        if f19_local4 >= 3 then

        else
            f19_local1[9] = 300
        end
    elseif f19_local0 == 200215 then
        if f19_local4 >= 3 then

        else
            f19_local1[8] = 150
            f19_local1[17] = 100
        end
    elseif f19_local0 == 200216 then
        if f19_local4 >= 3 then

        else
            f19_local1[16] = 150
        end
    end
    f19_local1[2] = SetCoolTime(arg1, arg2, 3054, 10, f19_local1[2], 1)
    f19_local1[7] = SetCoolTime(arg1, arg2, 3062, 5, f19_local1[7], 1)
    f19_local1[8] = SetCoolTime(arg1, arg2, 3083, 5, f19_local1[8], 1)
    f19_local1[11] = SetCoolTime(arg1, arg2, 3076, 5, f19_local1[11], 1)
    f19_local1[16] = SetCoolTime(arg1, arg2, 3088, 5, f19_local1[16], 1)
    f19_local1[17] = SetCoolTime(arg1, arg2, 3063, 5, f19_local1[17], 1)
    f19_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f19_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f19_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f19_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f19_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f19_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f19_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f19_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f19_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f19_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f19_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f19_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f19_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f19_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f19_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f19_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f19_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f19_local1, f19_local2, f19_local6, f19_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f20_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3051, TARGET_ENE_0, 9999, 0, 0)
    f20_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f21_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3056, TARGET_ENE_0, 9999, 0, 0)
    f21_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f22_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    f22_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f23_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    f23_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f24_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3071, TARGET_ENE_0, 9999, 0, 0)
    f24_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f25_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3083, TARGET_ENE_0, 9999, 0, 0)
    f25_local0:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f26_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3065, TARGET_ENE_0, 9999, 0, 0)
    f26_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f27_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3066, TARGET_ENE_0, 9999, 0, 0)
    f27_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f28_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    f28_local0:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki16 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f29_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3088, TARGET_ENE_0, 9999, 0, 0)
    f29_local0:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f30_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3063, TARGET_ENE_0, 9999, 0, 0)
    f30_local0:TimingSetNumber(1, arg0:GetNumber(1) + 2, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.NoAction = function (arg0, arg1, arg2)
    return -1
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


