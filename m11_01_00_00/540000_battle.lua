RegisterTableGoal(GOAL_Kensei_540000_Battle, "GOAL_Kensei_540000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Kensei_540000_Battle, true)
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
    local f2_local6 = arg1:GetNinsatsuNum()
    local f2_local7 = arg1:GetNinsatsuMaxNum()
    local f2_local8 = arg1:GetSpRate(TARGET_SELF)
    local f2_local9 = arg1:GetRandam_Int(1, 100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3540040)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110111)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110112)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110113)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110114)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110620)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[21] = 1
            f2_local0[28] = 100
        else
            f2_local0[21] = 100
        end
    elseif Common_ActivateAct(arg1, arg2, 0, 1) then

    elseif f2_local6 <= 2 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f2_local0[40] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110015) then

    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local3 <= 3.2 - arg1:GetMapHitRadius(TARGET_SELF) then
            f2_local0[11] = 100
            f2_local0[22] = 50
            f2_local0[21] = 50
        else
            f2_local0[21] = 100
            f2_local0[22] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if f2_local3 <= 4 - arg1:GetMapHitRadius(TARGET_SELF) and f2_local3 >= 1.5 then
            f2_local0[16] = 100
            f2_local0[21] = 50
            f2_local0[22] = 50
        else
            f2_local0[21] = 100
            f2_local0[22] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if f2_local3 <= 4.5 - arg1:GetMapHitRadius(TARGET_SELF) and f2_local3 >= 1.5 then
            f2_local0[21] = 50
            f2_local0[22] = 50
        else
            f2_local0[21] = 100
            f2_local0[22] = 100
        end
    elseif f2_local3 >= 20 then
        f2_local0[29] = 100
    elseif f2_local3 >= 8 then
        f2_local0[1] = 1
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 1
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[8] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 1
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[8] = 100
        f2_local0[10] = 0
        f2_local0[23] = 10
    elseif f2_local3 > 3 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[4] = 100
        f2_local0[6] = 100
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[23] = 10
        if f2_local8 <= 0.8 then
            f2_local0[10] = 100
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 110621) then
            f2_local0[6] = 400
        end
    else
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[4] = 50
        f2_local0[6] = 60
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 100
        if f2_local8 <= 0.8 then
            f2_local0[10] = 200
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 110621) then
            f2_local0[6] = 400
        end
    end
    arg1:SetNumber(9, 0)
    if arg1:GetNumber(11) == 1 and arg1:GetTimer(11) <= 0 and f2_local3 > 4 then
        f2_local0[15] = 100000
        arg1:SetTimer(11, 30)
    elseif arg1:GetNumber(1) == 1 then
        f2_local0[23] = 100000
    end
    arg1:SetNumber(11, 0)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 109900) then
        f2_local0[7] = 300
        f2_local0[2] = 0
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
    if arg1:IsFinishTimer(4) == false then
        f2_local0[22] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3083, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3027, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3071, 15, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3044, 120, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3045, 120, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[16], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405002, 15, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405003, 15, f2_local0[23], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3026, 7, f2_local0[18], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 405012, 20, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 405013, 30, f2_local0[32], 1)
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
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, arg0.Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, arg0.Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local10 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local10, f3_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    arg0:SetTimer(2, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    local f5_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, f5_local8, f5_local10, f5_local11, 0, 0)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3083, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3041, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.5, 3007, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 3.7 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg0:SetNumber(3, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 4
    local f9_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local8 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    local f9_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, f9_local8, f9_local10, f9_local11, 0, 0)
    if f9_local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, f9_local10, f9_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    end
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 9 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 4
    local f10_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local8 = arg0:GetDist(TARGET_ENE_0)
    local f10_local9 = arg0:GetRandam_Int(1, 100)
    local f10_local10 = 10
    local f10_local11 = -1
    local f10_local12 = arg0:GetRandam_Int(30, 60)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local10, TARGET_ENE_0, 0, 45, false, true, f10_local11)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 4.4, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetSpRate(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    if f11_local0 <= 0.66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 3.9 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local8 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 0
    local f12_local12 = 0
    local f12_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, f12_local8, f12_local11, f12_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, f12_local9, f12_local11, f12_local12, 0, 0)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3076, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 4
    local f14_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local8 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    local f14_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, f14_local8, f14_local10, f14_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, f14_local10, f14_local11, 0, 0)
    arg0:SetNumber(3, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, 999, f15_local0, f15_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 4.4, f15_local0, f15_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(9, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 0.3, 3044, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f23_local0 = 3
    local f23_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f23_local0, TARGET_ENE_0, f23_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 3
    local f24_local2 = -1
    local f24_local3 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f24_local3 = 0
            else
                f24_local3 = 1
            end
        else
            f24_local3 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f24_local3 = 1
    else

    end
    local f24_local4 = 1.8
    local f24_local5 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local1, 5202 + f24_local3, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg0:SetNumber(1, 1)
    arg0:SetTimer(4, 8)
    return GETWELLSPACE_ODDS
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetSpRate(TARGET_SELF)
    local f25_local2 = 20
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    local f25_local4 = -1
    local f25_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f25_local5 = 1
            else
                f25_local5 = 0
            end
        else
            f25_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f25_local5 = 1
    else

    end
    local f25_local6 = 4
    local f25_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f25_local5)
    arg0:SetNumber(1, 0)
    local f25_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local6, TARGET_ENE_0, f25_local5, f25_local7, true, true, f25_local4)
    f25_local8:TimingSetNumber(2, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 3
    local f26_local2 = 0
    local f26_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f26_local0 > 4 then

        else
            f26_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f26_local1, f26_local3, TARGET_ENE_0, f26_local2, AI_DIR_TYPE_B, 0)
    arg0:SetNumber(11, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Float(2, 4)
    local f27_local1 = arg0:GetRandam_Float(5, 7)
    local f27_local2 = arg0:GetDist(TARGET_ENE_0)
    local f27_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f27_local0, TARGET_ENE_0, f27_local1, TARGET_ENE_0, true, f27_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = arg0:GetRandam_Int(1, 100)
    local f29_local2 = 8
    local f29_local3 = 5
    local f29_local4 = arg0:GetRandam_Float(2, 4)
    local f29_local5 = arg0:GetRandam_Int(30, 45)
    if f29_local0 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local4, TARGET_ENE_0, f29_local2, TARGET_ENE_0, true, -1)
    elseif f29_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f29_local4, TARGET_ENE_0, f29_local3, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f29_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), f29_local5, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = 3
    local f30_local2 = 3
    local f30_local3 = arg0:GetRandam_Int(30, 45)
    local f30_local4 = -1
    local f30_local5 = arg0:GetRandam_Int(0, 1)
    if f30_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f30_local1, TARGET_ENE_0, f30_local5, f30_local3, true, true, f30_local4)
    elseif f30_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f30_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f30_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f31_local0 = 2
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f31_local0, TARGET_ENE_0, 8.1, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f32_local0 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5200, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
    f32_local0:TimingSetTimer(4, 30, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    local f33_local2 = 10
    local f33_local3 = -1
    local f33_local4 = arg0:GetRandam_Int(30, 60)
    local f33_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f33_local2, TARGET_ENE_0, f33_local5, 45, false, true, f33_local3)
    arg0:SetNumber(9, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = 10
    local f34_local2 = arg0:GetRandam_Int(1, 100)
    local f34_local3 = -1
    local f34_local4 = arg0:GetRandam_Int(30, 90)
    local f34_local5 = 1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f34_local1, TARGET_ENE_0, f34_local5, 90, false, true, f34_local3)
    arg0:SetNumber(9, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act39 = function (arg0, arg1, arg2)
    local f35_local0 = 3
    local f35_local1 = 0
    local f35_local2 = 4.5
    local f35_local3 = arg0:GetRandam_Int(30, 45)
    if SpaceCheck(arg0, arg1, 180, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f35_local0, 5201, TARGET_ENE_0, f35_local1, AI_DIR_TYPE_B, 0)
        f35_local2 = 3.5
    end
    local f35_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f35_local4 = 0
            else
                f35_local4 = 1
            end
        else
            f35_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f35_local4 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f35_local2, TARGET_ENE_0, f35_local4, f35_local3, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f37_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f37_local1 = arg1:GetDist(TARGET_ENE_0)
    local f37_local2 = arg1:GetRandam_Int(1, 100)
    local f37_local3 = arg1:GetSpecialEffectInactivateInterruptType(0)
    local f37_local4 = arg1:GetSpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 100, 0, 1, 3102)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if Interupt_Use_Item(arg1, 10, 10) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if f37_local1 < 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3024, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f37_local0 == 5025 then
            if f37_local1 <= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.5, 3041, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f37_local0 == 5027 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 5028 then
            if f37_local1 <= 2.5 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f37_local0 == 5029 then
            if f37_local1 <= 11 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f37_local0 == 5030 then
            if f37_local1 <= 11 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f37_local0 == 5032 and f37_local1 <= 3 - arg1:GetMapHitRadius(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3077, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 5034 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
            if f37_local2 <= 60 then
                if f37_local1 <= 4.2 - arg1:GetMapHitRadius(TARGET_SELF) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif f37_local1 <= 4.2 - arg1:GetMapHitRadius(TARGET_SELF) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif f37_local1 <= 4 - arg1:GetMapHitRadius(TARGET_SELF) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            end
        elseif f37_local0 == 5036 then
            if f37_local2 <= 100 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 3, 3041, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif f37_local0 == 5037 and f37_local1 <= 4 - arg1:GetMapHitRadius(TARGET_SELF) and not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            if f37_local2 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3023, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif f37_local0 == 5038 then
            if f37_local1 <= 3.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3104, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        elseif f37_local0 == 5039 and f37_local4 <= 0.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 110112 and arg1:HasSpecialEffectId(TARGET_SELF, 3540020) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.1, 3046, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 110113 and arg1:HasSpecialEffectId(TARGET_SELF, 3540020) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.1, 3049, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 110114 and arg1:HasSpecialEffectId(TARGET_SELF, 3540020) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.1, 3048, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f37_local0 == 110620 then
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f39_local0 = ReturnKengekiSpecialEffect(arg1)
    if f39_local0 == 0 then
        return false
    end
    local f39_local1 = {}
    local f39_local2 = {}
    local f39_local3 = {}
    Common_Clear_Param(f39_local1, f39_local2, f39_local3)
    local f39_local4 = arg1:GetDist(TARGET_ENE_0)
    local f39_local5 = arg1:GetSpRate(TARGET_SELF)
    local f39_local6 = arg1:GetNinsatsuNum()
    if f39_local5 <= 0 then
        f39_local1[50] = 100
    else
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f39_local6 <= 2 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
            f39_local1[40] = 100
        elseif f39_local0 == 200205 or f39_local0 == 200200 then
            f39_local1[2] = 100
            if arg1:GetNumber(0) >= 2 then
                f39_local1[6] = 100
                f39_local1[7] = 100
                f39_local1[8] = 100
                f39_local1[20] = 200
                if f39_local5 <= 0.66 then
                    f39_local1[5] = 500
                end
            end
        elseif f39_local0 == 200206 or f39_local0 == 200201 then
            if arg1:GetNumber(0) >= 2 then
                f39_local1[8] = 100
                f39_local1[6] = 100
                f39_local1[7] = 100
                f39_local1[20] = 200
                if f39_local5 <= 0.66 then
                    f39_local1[5] = 500
                end
            end
        elseif f39_local0 == 200215 then
            if f39_local4 >= 3 then

            else
                f39_local1[1] = 100
                if arg1:GetNumber(0) >= 2 then
                    f39_local1[4] = 100
                    f39_local1[6] = 100
                    f39_local1[8] = 100
                    f39_local1[20] = 200
                    if f39_local5 <= 0.66 then
                        f39_local1[5] = 500
                    end
                end
            end
        elseif f39_local0 == 200216 then
            if f39_local4 >= 3 then

            else
                f39_local1[3] = 100
                if arg1:GetNumber(0) >= 2 then
                    f39_local1[6] = 100
                    f39_local1[7] = 100
                    f39_local1[20] = 200
                    if f39_local5 <= 0.66 then
                        f39_local1[5] = 500
                    end
                end
            end
        elseif f39_local0 == 200210 then
            f39_local1[9] = 100
            f39_local1[11] = 100
            f39_local1[4] = 100
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 110600) then
                f39_local1[8] = 500
                f39_local1[4] = 500
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110610) then
                f39_local1[8] = 500
                f39_local1[4] = 500
            end
        elseif f39_local0 == 200226 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
                f39_local1[30] = 100
            else
                f39_local1[50] = 100
            end
        elseif f39_local0 == 200229 and arg1:GetNumber(0) >= 5 then
            arg1:SetNumber(0, 0)
            f39_local1[8] = 500
            f39_local1[4] = 500
        else
            f39_local1[50] = 100
        end
    end
    if arg1:IsFinishTimer(2) == false then
        f39_local1[5] = 0
        f39_local1[6] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f39_local1[20] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f39_local1[5] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f39_local1[22] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f39_local1[24] = 0
    end
    f39_local1[1] = SetCoolTime(arg1, arg2, 3071, 8, f39_local1[1], 1)
    f39_local1[2] = SetCoolTime(arg1, arg2, 3060, 8, f39_local1[2], 1)
    f39_local1[3] = SetCoolTime(arg1, arg2, 3075, 8, f39_local1[3], 1)
    f39_local1[4] = SetCoolTime(arg1, arg2, 3007, 12, f39_local1[4], 1)
    f39_local1[4] = SetCoolTime(arg1, arg2, 3072, 12, f39_local1[4], 1)
    f39_local1[4] = SetCoolTime(arg1, arg2, 3077, 12, f39_local1[4], 1)
    f39_local1[5] = SetCoolTime(arg1, arg2, 3009, 12, f39_local1[5], 1)
    f39_local1[6] = SetCoolTime(arg1, arg2, 3011, 12, f39_local1[6], 1)
    f39_local1[7] = SetCoolTime(arg1, arg2, 3026, 8, f39_local1[7], 1)
    f39_local1[8] = SetCoolTime(arg1, arg2, 5201, 15, f39_local1[8], 1)
    f39_local1[9] = SetCoolTime(arg1, arg2, 3071, 15, f39_local1[9], 1)
    f39_local1[11] = SetCoolTime(arg1, arg2, 3003, 15, f39_local1[11], 1)
    f39_local1[12] = SetCoolTime(arg1, arg2, 3005, 8, f39_local1[12], 1)
    f39_local1[13] = SetCoolTime(arg1, arg2, 3016, 8, f39_local1[13], 1)
    f39_local1[14] = SetCoolTime(arg1, arg2, 3077, 8, f39_local1[14], 1)
    f39_local1[15] = SetCoolTime(arg1, arg2, 3011, 15, f39_local1[15], 1)
    f39_local1[17] = SetCoolTime(arg1, arg2, 3009, 8, f39_local1[17], 1)
    f39_local1[20] = SetCoolTime(arg1, arg2, 5201, 10, f39_local1[20], 1)
    f39_local1[21] = SetCoolTime(arg1, arg2, 3050, 15, f39_local1[21], 1)
    f39_local1[22] = SetCoolTime(arg1, arg2, 3044, 15, f39_local1[22], 1)
    f39_local1[31] = SetCoolTime(arg1, arg2, 3072, 15, f39_local1[22], 1)
    f39_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f39_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f39_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f39_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f39_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f39_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f39_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f39_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f39_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f39_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f39_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f39_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f39_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f39_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f39_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f39_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f39_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f39_local2[18] = REGIST_FUNC(arg1, arg2, arg0.Kengeki18)
    f39_local2[19] = REGIST_FUNC(arg1, arg2, arg0.Kengeki19)
    f39_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f39_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f39_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Kengeki22)
    f39_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Kengeki23)
    f39_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Kengeki24)
    f39_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Kengeki25)
    f39_local2[26] = REGIST_FUNC(arg1, arg2, arg0.Kengeki26)
    f39_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f39_local2[31] = REGIST_FUNC(arg1, arg2, arg0.Kengeki31)
    f39_local2[40] = REGIST_FUNC(arg1, arg2, arg0.Kengeki40)
    f39_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f39_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f39_local1, f39_local2, f39_local7, f39_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    local f42_local0 = arg0:GetRandam_Int(1, 100)
    local f42_local1 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3075, TARGET_ENE_0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.8 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3072, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    local f44_local0 = arg0:GetDist(TARGET_ENE_0)
    local f44_local1 = 10
    local f44_local2 = arg0:GetRandam_Int(1, 100)
    local f44_local3 = -1
    local f44_local4 = arg0:GetRandam_Int(30, 60)
    local f44_local5 = arg0:GetRandam_Int(1, 100)
    local f44_local6 = 1
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    if f44_local5 <= 100 then
        local f44_local7 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        f44_local7:TimingSetTimer(2, 15, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 5201, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(11, 1)
    arg0:SetNumber(1, 1)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3071, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3003, TARGET_ENE_0, 9999, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3050, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f52_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    f52_local0:TimingSetTimer(2, 15, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(11, 0)
    
end

Goal.Kengeki31 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3072, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    
end

Goal.Kengeki40 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    
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


