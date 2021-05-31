RegisterTableGoal(GOAL_Ochimusha_BattleTutolial_Ochimusha_101200_Battle, "GOAL_Ochimusha_BattleTutolial_Ochimusha_101200_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Ochimusha_BattleTutolial_Ochimusha_101200_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310489) then
        f2_local0[40] = 10
        f2_local0[41] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310000) then
        f2_local0[23] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310101) then
        f2_local0[5] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310100) then
        f2_local0[1] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310010) then
        f2_local0[1] = 30
        f2_local0[4] = 30
        f2_local0[23] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310021) then
        f2_local0[4] = 10
        f2_local0[9] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310020) then
        f2_local0[9] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310050) then
        if f2_local5 <= 0.5 then
            f2_local0[23] = 10
            f2_local0[40] = 10
            f2_local0[41] = 10
        else
            f2_local0[8] = 10
            f2_local0[9] = 10
            f2_local0[10] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310031) then
        f2_local0[3] = 10
    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 310030) or arg1:HasSpecialEffectId(TARGET_SELF, 310080) then
        f2_local0[2] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
        if f2_local3 >= 7 then
            f2_local0[4] = 100
        else
            f2_local0[40] = 10
            f2_local0[42] = 10
            f2_local0[43] = 10
            f2_local0[44] = 10
            f2_local0[23] = 10
            if f2_local3 <= 2 then
                f2_local0[24] = 15
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310061) then
        f2_local0[41] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310060) then
        f2_local0[23] = 10
    else
        f2_local0[26] = 100
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3031, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3033, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3034, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3035, 8, f2_local0[10], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3012, 8, f2_local0[41], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[42], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[43], 1)
    f2_local0[44] = SetCoolTime(arg1, arg2, 3031, 30, f2_local0[44], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    local f3_local9 = arg0:GetRandam_Int(0, 1)
    local f3_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f3_local9, f3_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        local f4_local7 = 4.2
        local f4_local8 = 4.2 + 2
        local f4_local9 = 4.2 + 2
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = arg0:GetRandam_Int(0, 1)
    local f4_local10 = arg0:GetRandam_Int(30, 45)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, f4_local9, f4_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f5_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f5_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    local f5_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    local f5_local12 = arg0:GetRandam_Int(0, 1)
    local f5_local13 = arg0:GetRandam_Int(30, 45)
    if f5_local7 <= 3 - arg0:GetMapHitRadius(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), TARGET_ENE_0, true, guard)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, f5_local10, f5_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, f5_local12, f5_local13, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    local f6_local9 = arg0:GetRandam_Int(0, 1)
    local f6_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    local f7_local9 = arg0:GetRandam_Int(0, 1)
    local f7_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f7_local9, f7_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    local f8_local9 = arg0:GetRandam_Int(0, 1)
    local f8_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f8_local9, f8_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    local f9_local9 = arg0:GetRandam_Int(0, 1)
    local f9_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f9_local9, f9_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    local f10_local9 = arg0:GetRandam_Int(0, 1)
    local f10_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f10_local9, f10_local10, true, true, 9910)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    local f11_local9 = arg0:GetRandam_Int(0, 1)
    local f11_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, 9999, f11_local7, f11_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f11_local9, f11_local10, true, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 0
    local f12_local8 = 0
    local f12_local9 = arg0:GetRandam_Int(0, 1)
    local f12_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, f12_local7, f12_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f13_local0 = 3
    local f13_local1 = 45
    if arg0:IsTargetGuard(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, f13_local0, TARGET_ENE_0, f13_local1, 9910, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, f13_local0, TARGET_ENE_0, f13_local1, -1, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 0
    local f14_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f14_local2 = 5202
            else
                f14_local2 = 5203
            end
        else
            f14_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f14_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, f14_local2, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetSp(TARGET_SELF)
    local f15_local2 = 20
    local f15_local3 = arg0:GetRandam_Int(1, 100)
    local f15_local4 = 9910
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 310020) or arg0:HasSpecialEffectId(TARGET_SELF, 310041) then
        local f15_local5 = -1
    end
    local f15_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f15_local5 = 1
            else
                f15_local5 = 0
            end
        else
            f15_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f15_local5 = 1
    else

    end
    local f15_local6 = 3
    local f15_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f15_local5)
    if f15_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local6, TARGET_ENE_0, f15_local5, f15_local7, true, true, f15_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local6, TARGET_ENE_0, 4.9, TARGET_SELF, true, f15_local4)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3
    local f16_local2 = 0
    local f16_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f16_local0 > 4 then

        else
            f16_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local1, f16_local3, TARGET_ENE_0, f16_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Float(2, 4)
    local f17_local1 = arg0:GetRandam_Float(5, 7)
    local f17_local2 = arg0:GetDist(TARGET_ENE_0)
    local f17_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, TARGET_ENE_0, f17_local1, TARGET_ENE_0, true, f17_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f19_local2 = f19_local1 / math.tan(math.deg(30))
    local f19_local3 = arg0:GetRandam_Int(0, 1)
    if f19_local1 >= 3 then
        if f19_local2 + 1 <= f19_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f19_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f19_local2, TARGET_SELF, true, -1)
            end
        elseif f19_local0 <= f19_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f19_local2, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            arg0:SetNumber(10, f19_local3)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(10, f19_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 1.5
    local f20_local2 = 1.5
    local f20_local3 = arg0:GetRandam_Int(30, 45)
    local f20_local4 = -1
    local f20_local5 = arg0:GetRandam_Int(0, 1)
    if f20_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local1, TARGET_ENE_0, f20_local5, f20_local3, true, true, f20_local4)
    elseif f20_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f21_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f21_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 1.5
    local f21_local6 = 3
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = 0
    local f21_local8 = 0
    local f21_local9 = arg0:GetRandam_Int(0, 1)
    local f21_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f21_local7, f21_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, f21_local7, f21_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f22_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 1.5
    local f22_local6 = 3
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 0
    local f22_local8 = 0
    local f22_local9 = arg0:GetRandam_Int(0, 1)
    local f22_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f22_local7, f22_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f23_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f23_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 1.5
    local f23_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        local f23_local7 = 4.2
        local f23_local8 = 4.2 + 2
        local f23_local9 = 4.2 + 2
    end
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = 0
    local f23_local8 = 0
    local f23_local9 = arg0:GetRandam_Int(0, 1)
    local f23_local10 = arg0:GetRandam_Int(30, 45)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f23_local7, f23_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 9999, f23_local7, f23_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f24_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f24_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f24_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f24_local3 = 100
    local f24_local4 = 0
    local f24_local5 = 1.5
    local f24_local6 = 3
    local f24_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local8 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local9 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local10 = 0
    local f24_local11 = 0
    local f24_local12 = arg0:GetRandam_Int(0, 1)
    local f24_local13 = arg0:GetRandam_Int(30, 45)
    if f24_local7 <= 3 - arg0:GetMapHitRadius(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), TARGET_ENE_0, true, guard)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    local f25_local0 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f25_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 1.5
    local f25_local6 = 3
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 0
    local f25_local8 = 0
    local f25_local9 = arg0:GetRandam_Int(0, 1)
    local f25_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, f25_local7, f25_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) and arg0.Parry(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetHpRate(TARGET_SELF)
    local f27_local1 = arg0:GetDist(TARGET_ENE_0)
    local f27_local2 = arg0:GetSp(TARGET_SELF)
    local f27_local3 = arg0:GetRandam_Int(1, 100)
    local f27_local4 = 0
    local f27_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
        if f27_local5 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3102, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        elseif f27_local3 <= Get_ConsecutiveGuardCount(arg0) * 100 and arg0:HasSpecialEffectId(TARGET_SELF, 310040) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f28_local0 = ReturnKengekiSpecialEffect(arg1)
    if f28_local0 == 0 then
        return false
    end
    local f28_local1 = {}
    local f28_local2 = {}
    local f28_local3 = {}
    Common_Clear_Param(f28_local1, f28_local2, f28_local3)
    local f28_local4 = arg1:GetDist(TARGET_ENE_0)
    local f28_local5 = arg1:GetSp(TARGET_SELF)
    if f28_local5 <= 0 then
        f28_local1[50] = 100
    elseif f28_local0 == 200200 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310101) then
            f28_local1[50] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310100) then
            f28_local1[1] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
            f28_local1[2] = 100
            f28_local1[3] = 100
            f28_local1[20] = 100
            f28_local1[50] = 100
        else
            f28_local1[50] = 100
        end
    elseif f28_local0 == 200201 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310100) then
            f28_local1[1] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
            f28_local1[2] = 100
            f28_local1[3] = 100
            f28_local1[20] = 100
            f28_local1[50] = 100
        else
            f28_local1[50] = 100
        end
    elseif f28_local0 == 200205 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310001) then
            f28_local1[30] = 100
        end
    elseif f28_local0 == 200206 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310001) then
            f28_local1[30] = 100
        end
    elseif f28_local0 == 200215 or f28_local0 == 200230 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310000) then
            f28_local1[30] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310001) then
            f28_local1[50] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310010) then
            f28_local1[21] = 100
            f28_local1[4] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310031) then
            f28_local1[3] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310030) then
            f28_local1[2] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
            f28_local1[50] = 100
        end
    elseif f28_local0 == 200216 or f28_local0 == 200230 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310000) then
            f28_local1[30] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310001) then
            f28_local1[50] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310031) then
            f28_local1[3] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310030) then
            f28_local1[2] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
            f28_local1[50] = 100
        end
    else
        f28_local1[50] = 100
    end
    f28_local1[1] = SetCoolTime(arg1, arg2, 3000, 5, f28_local1[1], 1)
    f28_local1[2] = SetCoolTime(arg1, arg2, 3013, 15, f28_local1[2], 1)
    f28_local1[3] = SetCoolTime(arg1, arg2, 3014, 8, f28_local1[3], 1)
    f28_local1[4] = SetCoolTime(arg1, arg2, 3010, 8, f28_local1[4], 1)
    f28_local1[5] = SetCoolTime(arg1, arg2, 3030, 8, f28_local1[5], 1)
    f28_local1[6] = SetCoolTime(arg1, arg2, 3013, 8, f28_local1[6], 1)
    f28_local1[20] = SetCoolTime(arg1, arg2, 3032, 8, f28_local1[20], 1)
    f28_local1[21] = SetCoolTime(arg1, arg2, 3012, 8, f28_local1[21], 1)
    f28_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f28_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f28_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f28_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f28_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f28_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f28_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f28_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f28_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f28_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f28_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f28_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f28_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f28_local1, f28_local2, f28_local6, f28_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Int(0, 1)
    local f30_local1 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, f30_local0, f30_local1, true, true, 9910)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Int(0, 1)
    local f31_local1 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, f31_local0, f31_local1, true, true, 9910)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    if arg0:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    end
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f39_local0 = arg0:GetDist(TARGET_ENE_0)
    local f39_local1 = arg0:GetSp(TARGET_SELF)
    local f39_local2 = 20
    local f39_local3 = arg0:GetRandam_Int(1, 100)
    local f39_local4 = -1
    local f39_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f39_local5 = 1
            else
                f39_local5 = 0
            end
        else
            f39_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f39_local5 = 1
    else

    end
    local f39_local6 = 4
    local f39_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f39_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f39_local6, TARGET_ENE_0, f39_local5, f39_local7, true, true, 9910)
    
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


