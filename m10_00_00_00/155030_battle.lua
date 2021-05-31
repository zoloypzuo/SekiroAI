RegisterTableGoal(GOAL_Yatou_katanaTate_155030_Battle, "GOAL_Yatou_katanaTate_155030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Yatou_katanaTate_155030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        arg2:AddSubGoal(GOAL_Yatou_katanaYumi_155000_Battle, -1)
        return true
    end
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3155040)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3155050)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3155520) and arg1:GetNumber(0) == 0 then
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[30] = 1E+23
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if KankyakuAct(arg1, arg2, -1, 40) then
            f2_local0[4] = 100
            f2_local0[23] = 50
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2, -1, 40) then
            f2_local0[4] = 100
            f2_local0[23] = 50
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3155550) then
        f2_local0[4] = 150
        f2_local0[28] = 200
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif f2_local3 >= 7 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 200
        f2_local0[4] = 150
        f2_local0[23] = 40
        f2_local0[29] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 150
        f2_local0[23] = 100
    elseif f2_local3 > 3 then
        f2_local0[1] = 50
        f2_local0[2] = 50
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[23] = 100
    else
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[23] = 100
        f2_local0[4] = 0
        f2_local0[25] = 100
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 3155120) or arg1:IsFinishTimer(0) == false then
        f2_local0[3] = 0
        f2_local0[4] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3155520) and arg1:GetNumber(0) == 0 then
        f2_local0[3] = 0
        f2_local0[4] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3155111) and arg1:IsTargetGuard(TARGET_ENE_0) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            f2_local0[21] = 50000
        elseif f2_local3 <= 13.5 - arg1:GetMapHitRadius(TARGET_SELF) then
            f2_local0[10] = 50000
        end
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 503000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 503001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 503002, 40, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 503003, 40, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 503005, 15, f2_local0[5], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 2.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 100
    local f3_local5 = 1.5
    local f3_local6 = 3
    local f3_local7 = 503000
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 0
    local f3_local9 = 0
    if not not arg0:IsTargetGuard(TARGET_SELF) or arg0:HasSpecialEffectId(TARGET_SELF, 3155060) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 9999, f3_local8, f3_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, 0.5, 9910, TARGET_ENE_0, false, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 9999, f3_local8, f3_local9, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 100
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    if not not arg0:IsTargetGuard(TARGET_SELF) or arg0:HasSpecialEffectId(TARGET_SELF, 3155060) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 503001, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, 0.5, 9910, TARGET_ENE_0, false, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 503001, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 9990
    local f5_local3 = 0
    local f5_local4 = 100
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 503003, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 503002, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 999
    local f6_local1 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 9990
    local f6_local3 = 0
    local f6_local4 = 100
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 503003, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    arg0:SetTimer(0, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 503005, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 503006, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 503006, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 503006, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 503007, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f8_local0 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 13.5 - arg0:GetMapHitRadius(TARGET_SELF) + 9990
    local f8_local3 = 0
    local f8_local4 = 100
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 503003, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 503002, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f9_local0 = 3
    local f9_local1 = 45
    if not not arg0:IsTargetGuard(TARGET_SELF) or arg0:HasSpecialEffectId(TARGET_SELF, 3155060) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, 9910, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, -1, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetSp(TARGET_SELF)
    local f10_local1 = 0
    local f10_local2 = arg0:GetRandam_Int(1, 100)
    local f10_local3 = 9910
    local f10_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f10_local4 = 1
            else
                f10_local4 = 0
            end
        else
            f10_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f10_local4 = 1
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f10_local5 = 3
    local f10_local6 = arg0:GetRandam_Int(30, 45)
    arg0:SetTimer(1, f10_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local5, TARGET_ENE_0, f10_local4, f10_local6, true, true, f10_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3
    local f11_local2 = 0
    local f11_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f11_local0 > 4 then

        else
            f11_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local3, TARGET_ENE_0, f11_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Float(2, 4)
    local f12_local1 = 4
    local f12_local2 = arg0:GetDist(TARGET_ENE_0)
    local f12_local3 = 9910
    arg0:SetTimer(1, f12_local0)
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_ENE_0, true, f12_local3)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    local f14_local1 = 9910
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30, 9910) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f14_local2 = 0
    local f14_local3 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f14_local3 == 0 then
        f14_local2 = 0
    elseif f14_local3 == 1 then
        f14_local2 = 1
    elseif f14_local3 == 2 then
        if f14_local0 <= 50 then
            f14_local2 = 0
        else
            f14_local2 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f14_local2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f14_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 1.5
    local f15_local2 = 1.5
    local f15_local3 = arg0:GetRandam_Int(30, 45)
    local f15_local4 = 9910
    local f15_local5 = arg0:GetRandam_Int(0, 1)
    local f15_local6 = arg0:GetRandam_Int(1, 100)
    if f15_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local1, TARGET_ENE_0, f15_local5, f15_local3, true, true, f15_local4)
    elseif f15_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 3, TARGET_SELF, true, f15_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 8, TARGET_SELF, true, f15_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f16_local0 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local0, TARGET_ENE_0, 4.9, TARGET_SELF, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local0, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    f17_local1:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f18_local1 = arg1:GetRandam_Int(1, 100)
    local f18_local2 = 90
    local f18_local3 = 6
    local f18_local4 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f18_local0 == 5029 and f18_local4 <= 6 then
        if f18_local1 <= 100 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 503002, TARGET_ENE_0, 9999, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 503009, TARGET_ENE_0, 9999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 3155050) and arg1:HasSpecialEffectId(TARGET_SELF, 3155040) and not arg1:HasSpecialEffectId(TARGET_SELF, 200200) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.1, 503004, TARGET_ENE_0, 9999, 0, 0)
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
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
    if f19_local5 <= 0 then
        f19_local1[50] = 100
    elseif f19_local0 == 200216 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[6] = 100
            f19_local1[7] = 100
        end
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f19_local1[7] = 0
    end
    f19_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f19_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f19_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f19_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f19_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f19_local1, f19_local2, f19_local6, f19_local3)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 503000, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 503008, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetSp(TARGET_SELF)
    local f22_local1 = 0
    local f22_local2 = arg0:GetRandam_Int(1, 100)
    local f22_local3 = 9910
    local f22_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f22_local4 = 1
            else
                f22_local4 = 0
            end
        else
            f22_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f22_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f22_local5 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetTimer(1), TARGET_ENE_0, f22_local4, f22_local5, true, true, f22_local3)
    
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


