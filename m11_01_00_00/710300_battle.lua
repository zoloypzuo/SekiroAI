RegisterTableGoal(GOAL_Rival_710300_Battle, "GOAL_Rival_710300_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Rival_710300_Battle, true)
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
    local f2_local6 = arg1:GetSp(TARGET_SELF)
    local f2_local7 = arg1:GetNinsatsuNum()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710020)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3710050)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110620)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    arg1:DeleteObserve(0)
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

    elseif arg1:GetNumber(7) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f2_local0[14] = 600
    elseif f2_local3 >= 7 and arg1:GetNumber(7) == 1 and arg1:GetNumber(10) == 0 then
        f2_local0[49] = 50
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        f2_local0[27] = 100
    elseif f2_local3 >= 7 then
        f2_local0[7] = 600
        f2_local0[10] = 300
        f2_local0[14] = 600
        f2_local0[15] = 600
        f2_local0[16] = 600
        if arg1:GetNinsatsuNum() <= 1 then
            f2_local0[38] = 700
            f2_local0[39] = 700
        else
            f2_local0[35] = 200
        end
    elseif f2_local3 >= 5 then
        f2_local0[7] = 600
        f2_local0[8] = 100
        f2_local0[10] = 300
        f2_local0[14] = 600
        f2_local0[34] = 100
        f2_local0[23] = 100
        f2_local0[30] = 100
        if arg1:GetNinsatsuNum() <= 1 then
            f2_local0[38] = 700
            f2_local0[39] = 700
        else
            f2_local0[35] = 200
        end
    elseif f2_local3 > 3 then
        f2_local0[1] = 5
        f2_local0[2] = 10
        f2_local0[6] = 30
        f2_local0[11] = 15
        f2_local0[14] = 600
        f2_local0[23] = 15
        f2_local0[30] = 50
        if arg1:GetNumber(7) == 1 then
            f2_local0[49] = 50
        end
        if arg1:GetNinsatsuNum() <= 1 then
            f2_local0[38] = 700
            f2_local0[39] = 700
        else
            f2_local0[35] = 200
        end
    else
        f2_local0[3] = 15
        f2_local0[11] = 15
        f2_local0[23] = 10
        f2_local0[30] = 50
        f2_local0[31] = 30
        if arg1:GetNumber(7) == 1 then
            f2_local0[49] = 50
        end
        if arg1:IsFinishTimer(7) == true then
            f2_local0[24] = 30
        end
    end
    if (not not arg1:HasSpecialEffectId(TARGET_ENE_0, 109031) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110125)) and f2_local3 <= 5 then
        f2_local0[16] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 109900) then
        f2_local0[1] = 5
        f2_local0[2] = 5
        f2_local0[3] = 5
        f2_local0[9] = 0
        f2_local0[11] = 5
        f2_local0[10] = 5
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[35] = 0
        f2_local0[36] = 0
        f2_local0[48] = 30
    end
    if arg1:GetNumber(2) == 1 then
        f2_local0[23] = 6000
        arg1:SetNumber(2, 0)
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[3] = 0
        f2_local0[6] = 1
    end
    if arg1:IsFinishTimer(1) == false then
        f2_local0[2] = 0
    end
    if arg1:IsFinishTimer(3) == false then
        f2_local0[24] = 0
    end
    if arg1:IsFinishTimer(6) == false then
        f2_local0[9] = 0
        f2_local0[35] = 0
        f2_local0[36] = 0
        if arg1:GetNumber(9) == 1 then
            f2_local0[38] = 0
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f2_local0[8] = 0
        f2_local0[15] = 0
        f2_local0[19] = 0
        f2_local0[34] = 0
        f2_local0[48] = 0
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
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110621) then
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[31] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3038, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3038, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3092, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3037, 15, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[15], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[18], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3045, 15, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[32], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[34], 1)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3013, 5, f2_local0[48], 1)
    f2_local0[49] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[49], 1)
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
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, arg0.Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, arg0.Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, arg0.Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, arg0.Act49)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2.5
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    if f3_local7 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f3_local9, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, f3_local10, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 2.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.3
    local f5_local2 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    local f5_local9 = 180
    local f5_local10 = 3
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, f5_local9, f5_local10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 2.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f9_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    local f9_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, f9_local9, f9_local7, f9_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    local f10_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, f10_local9, f10_local7, f10_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 4, f11_local7, f11_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3041, TARGET_ENE_0, 3.5, 0)
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 10
    local f12_local6 = 10
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 0
    local f12_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f12_local7, f12_local8, 0, 0)
    arg0:SetTimer(3, 10)
    GetWellSpace_Odds = 100
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    local f14_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, f14_local2, f14_local0, f14_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, DistToAtt1, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 1.5
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local8 = 0
    local f16_local9 = 0
    local f16_local10 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f16_local8, f16_local9, 0, 0)
    f16_local11:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f17_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 3
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 0
    local f17_local8 = 0
    local f17_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, f17_local9, f17_local7, f17_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f18_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 1.5
    local f18_local6 = 3
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local8 = 0
    local f18_local9 = 0
    local f18_local10 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, f18_local8, f18_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f19_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f19_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 1.5
    local f19_local6 = 3
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 0
    local f19_local8 = 0
    local f19_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, f19_local9, f19_local7, f19_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    local f20_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f20_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 1.5
    local f20_local6 = 3
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 0
    local f20_local8 = 0
    local f20_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, f20_local9, f20_local7, f20_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f21_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f21_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 2.5
    local f21_local6 = 3
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = 0
    local f21_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3062, TARGET_ENE_0, 9999, f21_local7, f21_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f22_local0 = 3
    local f22_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f22_local0, TARGET_ENE_0, f22_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f23_local0 = 3
    local f23_local1 = 0
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, 5202, TARGET_ENE_0, f23_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, 5203, TARGET_ENE_0, f23_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, 5202, TARGET_ENE_0, f23_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local0, 5203, TARGET_ENE_0, f23_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetSp(TARGET_SELF)
    local f24_local2 = 20
    local f24_local3 = arg0:GetRandam_Int(1, 100)
    local f24_local4 = -1
    local f24_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 5) then
                f24_local5 = 1
            else
                f24_local5 = 0
            end
        else
            f24_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f24_local5 = 1
    else

    end
    local f24_local6 = arg0:GetRandam_Int(1.5, 3)
    local f24_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f24_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local6, TARGET_ENE_0, f24_local5, f24_local7, true, true, f24_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 3
    local f25_local2 = 0
    local f25_local3 = 5201
    local f25_local4 = arg0:GetSpRate(TARGET_SELF)
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f25_local0 > 4 then

        else
            f25_local3 = 5201
        end
    end
    arg0:SetNumber(2, 1)
    local f25_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f25_local1, f25_local3, TARGET_ENE_0, f25_local2, AI_DIR_TYPE_B, 0)
    f25_local5:TimingSetTimer(3, 30, AI_TIMING_SET__UPDATE_SUCCESS)
    if f25_local4 <= 0.7 and arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, DistToAtt1, f25_local2, FrontAngle, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Float(2, 4)
    local f26_local1 = arg0:GetRandam_Float(1, 3)
    local f26_local2 = arg0:GetDist(TARGET_ENE_0)
    local f26_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f26_local0, TARGET_ENE_0, f26_local1, TARGET_ENE_0, true, f26_local3)
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
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = arg0:GetRandam_Int(1, 100)
    local f28_local2 = 8
    local f28_local3 = 5
    local f28_local4 = arg0:GetRandam_Float(2, 4)
    local f28_local5 = arg0:GetRandam_Int(30, 45)
    if f28_local0 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local4, TARGET_ENE_0, f28_local2, TARGET_ENE_0, true, -1)
    elseif f28_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f28_local4, TARGET_ENE_0, f28_local3, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), f28_local5, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = 1.5
    local f29_local2 = 1.5
    local f29_local3 = arg0:GetRandam_Int(30, 45)
    local f29_local4 = -1
    local f29_local5 = arg0:GetRandam_Int(0, 1)
    if f29_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f29_local1, TARGET_ENE_0, f29_local5, f29_local3, true, true, f29_local4)
    elseif f29_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f31_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f31_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f31_local3 = 100
    local f31_local4 = 0
    local f31_local5 = 1.5
    local f31_local6 = 3
    Approach_Act_Flex(arg0, arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local7 = 0
    local f31_local8 = 0
    local f31_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f31_local9, f31_local7, f31_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f32_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f32_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f32_local3 = 100
    local f32_local4 = 0
    local f32_local5 = 1.5
    local f32_local6 = 3
    Approach_Act_Flex(arg0, arg1, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6)
    local f32_local7 = 0
    local f32_local8 = 0
    local f32_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, f32_local9, f32_local7, f32_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f33_local0 = 0
    local f33_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 9, f33_local0, f33_local1, 0, 0)
    local f33_local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3041, TARGET_ENE_0, 3.5, 0)
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f34_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local3 = 100
    local f34_local4 = 0
    local f34_local5 = 1.5
    local f34_local6 = 3
    Approach_Act_Flex(arg0, arg1, f34_local0, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6)
    local f34_local7 = 0
    local f34_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 4, f34_local7, f34_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 3.5, 0)
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f35_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local3 = 100
    local f35_local4 = 0
    local f35_local5 = 10
    local f35_local6 = 10
    Approach_Act_Flex(arg0, arg1, f35_local0, f35_local1, f35_local2, f35_local3, f35_local4, f35_local5, f35_local6)
    local f35_local7 = 3
    local f35_local8 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, 360, 360, 360, 360)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 360, 360, 360, 360)
    arg0:SetTimer(3, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act38 = function (arg0, arg1, arg2)
    local f36_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local3 = 100
    local f36_local4 = 0
    local f36_local5 = 1.5
    local f36_local6 = 3
    Approach_Act_Flex(arg0, arg1, f36_local0, f36_local1, f36_local2, f36_local3, f36_local4, f36_local5, f36_local6)
    local f36_local7 = 0
    local f36_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 999, f36_local7, f36_local8, 0, 0)
    local f36_local9 = arg0:GetRandam_Int(1, 100)
    if f36_local9 <= 30 then
        local f36_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3048, TARGET_ENE_0, 9999, 0)
        f36_local10:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    else
        local f36_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f36_local10:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act39 = function (arg0, arg1, arg2)
    local f37_local0 = 0
    local f37_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f37_local0, f37_local1, 0, 0)
    local f37_local2 = arg0:GetDist(TARGET_ENE_0)
    if f37_local2 <= 4 then
        local f37_local3 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3048, TARGET_ENE_0, 9999, 0)
        f37_local3:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    else
        local f37_local3 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f37_local3:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Oddsr
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f38_local0 = 0
    local f38_local1 = 0
    local f38_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0)
    f38_local2:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Oddsr
    
end

Goal.Act48 = function (arg0, arg1, arg2)
    local f39_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f39_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local3 = 100
    local f39_local4 = 0
    local f39_local5 = 1.5
    local f39_local6 = 3
    Approach_Act_Flex(arg0, arg1, f39_local0, f39_local1, f39_local2, f39_local3, f39_local4, f39_local5, f39_local6)
    local f39_local7 = 0
    local f39_local8 = 0
    local f39_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, f39_local9, f39_local7, f39_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act49 = function (arg0, arg1, arg2)
    local f40_local0 = 0
    local f40_local1 = 0
    local f40_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f40_local2, f40_local0, f40_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 9999, 0, 0)
    local f40_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
    f40_local4:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f41_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f41_local1 = arg1:GetSpecialEffectInactivateInterruptType(0)
    local f41_local2 = arg1:GetDist(TARGET_ENE_0)
    local f41_local3 = arg1:GetRandam_Int(1, 100)
    local f41_local4 = arg1:GetNinsatsuNum()
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2, 100, 0)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f41_local0 == 3710020 then
            arg1:SetNumber(0, 0)
            return true
        elseif f41_local0 == 3710030 and arg1:HasSpecialEffectId(TARGET_SELF, 3710032) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3092, TARGET_ENE_0, 9999, 0)
            arg1:SetTimer(6, 50)
            return true
        elseif f41_local0 == 5029 then
            return arg0.Damaged(arg1, arg2)
        elseif f41_local0 == 5031 then
            if f41_local2 >= 4.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 9999, 0)
            end
        elseif f41_local0 == 5358 then
            if f41_local2 >= 4.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 9999, 0)
            end
        elseif f41_local0 == 3710050 then
            if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 105025) or arg1:HasSpecialEffectId(TARGET_ENE_0, 100320) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
            elseif f41_local3 <= 50 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 9999, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif f41_local0 == 110620 then
            arg1:Replanning()
            return true
        end
    end
    if Interupt_Use_Item(arg1, 8, 5) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200051) and f41_local4 >= 2 then

        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3023, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f42_local0 = arg0:GetDist(TARGET_ENE_0)
    local f42_local1 = GetDist_Parry(arg0)
    local f42_local2 = arg0:GetRandam_Int(1, 100)
    local f42_local3 = arg0:GetRandam_Int(1, 100)
    local f42_local4 = arg0:GetRandam_Int(1, 100)
    local f42_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f42_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f42_local7 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f42_local7 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f42_local7 = 1
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg3 == nil then
        arg3 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, f42_local1) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 3710040) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3102, TARGET_ENE_0, 9999, 0)
            arg0:SetTimer(5, 60)
            return true
        elseif f42_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3103, TARGET_ENE_0, 9999, 0)
            return true
        elseif f42_local5 then
            if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                return false
            elseif f42_local7 == 2 then
                return false
            elseif f42_local7 == 1 then
                if f42_local2 <= 50 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    return true
                end
            elseif f42_local7 == 0 and f42_local2 <= 100 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        elseif f42_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f42_local1 + 1) then
        if f42_local4 <= arg3 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        else
            return false
        end
    else
        return false
    end
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f43_local0 = arg0:GetHpRate(TARGET_SELF)
    local f43_local1 = arg0:GetDist(TARGET_ENE_0)
    local f43_local2 = arg0:GetSp(TARGET_SELF)
    local f43_local3 = arg0:GetRandam_Int(1, 100)
    local f43_local4 = 0
    local f43_local5 = 3
    if f43_local3 <= 15 then
        arg1:ClearSubGoal()
        local f43_local6 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f43_local5, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f43_local6:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        arg0:SetNumber(2, 1)
        if arg0:GetNumber(0) <= 3 then
            arg0:SetNumber(0, 0)
        else
            arg0:SetNumber(0, arg0:GetNumber(0) - 3)
        end
        return true
    elseif f43_local3 <= 30 and arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999, 0)
        arg0:SetNumber(2, 1)
        if arg0:GetNumber(0) <= 3 then
            arg0:SetNumber(0, 0)
        else
            arg0:SetNumber(0, arg0:GetNumber(0) - 3)
        end
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
    local f45_local0 = ReturnKengekiSpecialEffect(arg1)
    if f45_local0 == 0 then
        return false
    end
    local f45_local1 = {}
    local f45_local2 = {}
    local f45_local3 = {}
    Common_Clear_Param(f45_local1, f45_local2, f45_local3)
    local f45_local4 = arg1:GetDist(TARGET_ENE_0)
    local f45_local5 = arg1:GetHpRate(TARGET_SELF)
    local f45_local6 = arg1:GetSpRate(TARGET_SELF)
    if f45_local0 == 200200 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f45_local4 >= 2.5 then
            f45_local1[50] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[30] = 5
            f45_local1[41] = 50
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNinsatsuNum() <= 1 then
                f45_local1[12] = 100
            end
            if arg1:GetNumber(6) == 0 then
                f45_local1[32] = 20
            else
                f45_local1[33] = 20
            end
        elseif arg1:GetNumber(0) == 3 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[30] = 5
            f45_local1[41] = 50
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNinsatsuNum() <= 1 then
                f45_local1[12] = 100
            end
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[7] = 50
            else
                f45_local1[4] = 100
            end
        elseif arg1:GetNumber(0) == 2 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[30] = 5
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[7] = 50
            else
                f45_local1[4] = 100
            end
        elseif arg1:GetNumber(0) == 1 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[30] = 5
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[7] = 50
            else
                f45_local1[4] = 100
            end
        end
    elseif f45_local0 == 200201 then
        if f45_local4 >= 2.5 then
            f45_local1[50] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[41] = 50
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
        elseif arg1:GetNumber(0) == 3 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[41] = 50
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[10] = 50
            else
                f45_local1[4] = 100
                f45_local1[22] = 50
            end
        elseif arg1:GetNumber(0) == 2 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[10] = 50
            else
                f45_local1[4] = 100
                f45_local1[22] = 50
            end
        elseif arg1:GetNumber(0) == 1 then
            f45_local1[3] = 60
            f45_local1[20] = 60
            f45_local1[15] = 30
            f45_local1[43] = 50
            f45_local1[39] = 30
            if arg1:GetNumber(3) == 0 then
                f45_local1[1] = 50
                f45_local1[10] = 50
            else
                f45_local1[4] = 100
                f45_local1[22] = 50
            end
        end
    elseif f45_local0 == 200210 then
        f45_local1[2] = 100
        f45_local1[17] = 100
        f45_local1[41] = 50
        f45_local1[31] = 50
    elseif f45_local0 == 200211 then
        f45_local1[2] = 100
        f45_local1[10] = 50
        f45_local1[31] = 50
        f45_local1[41] = 50
    elseif f45_local0 == 200216 then
        if f45_local4 >= 2 then
            f45_local1[50] = 10
        else
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) >= 4 then
                f45_local1[3] = 60
                f45_local1[20] = 20
                f45_local1[41] = 50
                f45_local1[43] = 50
                if arg1:GetNinsatsuNum() <= 1 then
                    f45_local1[12] = 100
                end
                if arg1:GetNumber(6) == 0 then
                    f45_local1[32] = 50
                else
                    f45_local1[33] = 50
                end
            elseif arg1:GetNumber(0) == 3 then
                f45_local1[3] = 60
                f45_local1[20] = 20
                f45_local1[43] = 50
                if arg1:GetNinsatsuNum() <= 1 then
                    f45_local1[12] = 100
                end
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[30] = 50
                else
                    f45_local1[14] = 50
                    f45_local1[13] = 50
                end
            elseif arg1:GetNumber(0) == 2 then
                f45_local1[3] = 60
                f45_local1[20] = 20
                f45_local1[43] = 50
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[30] = 50
                else
                    f45_local1[14] = 50
                    f45_local1[13] = 50
                end
            elseif arg1:GetNumber(0) == 1 then
                f45_local1[3] = 60
                f45_local1[20] = 20
                f45_local1[43] = 50
                f45_local1[20] = 50
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[30] = 50
                else
                    f45_local1[14] = 50
                    f45_local1[13] = 50
                end
            end
        end
    elseif f45_local0 == 200215 then
        if f45_local4 >= 2 then
            f45_local1[50] = 10
        else
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) >= 4 then
                f45_local1[20] = 20
                f45_local1[41] = 50
                f45_local1[31] = 15
                f45_local1[43] = 10
                f45_local1[39] = 10
                if arg1:GetNinsatsuNum() <= 1 then
                    f45_local1[12] = 100
                end
                if arg1:GetNumber(6) == 0 then
                    f45_local1[32] = 50
                else
                    f45_local1[33] = 50
                end
            elseif arg1:GetNumber(0) == 3 then
                f45_local1[20] = 20
                f45_local1[41] = 50
                f45_local1[31] = 15
                f45_local1[43] = 10
                if arg1:GetNinsatsuNum() <= 1 then
                    f45_local1[12] = 100
                end
                f45_local1[39] = 10
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[17] = 50
                else
                    f45_local1[13] = 50
                    f45_local1[14] = 50
                end
            elseif arg1:GetNumber(0) == 2 then
                f45_local1[20] = 20
                f45_local1[31] = 15
                f45_local1[43] = 10
                f45_local1[39] = 10
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[17] = 50
                else
                    f45_local1[13] = 50
                    f45_local1[14] = 50
                end
            elseif arg1:GetNumber(0) == 1 then
                f45_local1[20] = 20
                f45_local1[31] = 15
                f45_local1[43] = 10
                f45_local1[39] = 10
                if arg1:GetNumber(3) == 0 then
                    f45_local1[1] = 50
                    f45_local1[17] = 50
                else
                    f45_local1[13] = 50
                    f45_local1[14] = 50
                end
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f45_local1[3] = 0
        f45_local1[9] = 0
        f45_local1[12] = 0
        f45_local1[15] = 0
        f45_local1[32] = 0
        f45_local1[33] = 0
        f45_local1[39] = 0
        f45_local1[46] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f45_local1[20] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f45_local1[20] = 0
    end
    if arg1:IsFinishTimer(6) == false then
        f45_local1[40] = 0
        f45_local1[48] = 0
    elseif arg1:IsFinishTimer(6) == true and f45_local5 <= 0.75 then
        f45_local1[40] = 50
        f45_local1[48] = 50
    end
    f45_local1[1] = SetCoolTime(arg1, arg2, 3050, 8, f45_local1[1], 1)
    f45_local1[2] = SetCoolTime(arg1, arg2, 5201, 10, f45_local1[2], 1)
    f45_local1[3] = SetCoolTime(arg1, arg2, 3009, 10, f45_local1[3], 1)
    f45_local1[4] = SetCoolTime(arg1, arg2, 3055, 8, f45_local1[4], 1)
    f45_local1[7] = SetCoolTime(arg1, arg2, 3060, 8, f45_local1[7], 1)
    f45_local1[9] = SetCoolTime(arg1, arg2, 3018, 8, f45_local1[9], 1)
    f45_local1[10] = SetCoolTime(arg1, arg2, 3065, 8, f45_local1[10], 1)
    f45_local1[11] = SetCoolTime(arg1, arg2, 3070, 8, f45_local1[11], 1)
    f45_local1[12] = SetCoolTime(arg1, arg2, 3018, 8, f45_local1[12], 1)
    f45_local1[13] = SetCoolTime(arg1, arg2, 3070, 8, f45_local1[13], 1)
    f45_local1[14] = SetCoolTime(arg1, arg2, 3076, 8, f45_local1[14], 1)
    f45_local1[15] = SetCoolTime(arg1, arg2, 3031, 15, f45_local1[15], 1)
    f45_local1[16] = SetCoolTime(arg1, arg2, 3070, 8, f45_local1[16], 1)
    f45_local1[17] = SetCoolTime(arg1, arg2, 3071, 8, f45_local1[17], 1)
    f45_local1[18] = SetCoolTime(arg1, arg2, 3004, 8, f45_local1[18], 1)
    f45_local1[20] = SetCoolTime(arg1, arg2, 5202, 15, f45_local1[20], 1)
    f45_local1[22] = SetCoolTime(arg1, arg2, 3070, 8, f45_local1[22], 1)
    f45_local1[30] = SetCoolTime(arg1, arg2, 3063, 15, f45_local1[30], 1)
    f45_local1[31] = SetCoolTime(arg1, arg2, 3068, 15, f45_local1[31], 1)
    f45_local1[32] = SetCoolTime(arg1, arg2, 3018, 15, f45_local1[32], 1)
    f45_local1[33] = SetCoolTime(arg1, arg2, 3007, 15, f45_local1[33], 1)
    f45_local1[34] = SetCoolTime(arg1, arg2, 3037, 15, f45_local1[34], 1)
    f45_local1[35] = SetCoolTime(arg1, arg2, 3016, 8, f45_local1[35], 1)
    f45_local1[37] = SetCoolTime(arg1, arg2, 3030, 8, f45_local1[37], 1)
    f45_local1[38] = SetCoolTime(arg1, arg2, 3030, 8, f45_local1[38], 1)
    f45_local1[39] = SetCoolTime(arg1, arg2, 3034, 15, f45_local1[39], 1)
    f45_local1[40] = SetCoolTime(arg1, arg2, 3040, 15, f45_local1[40], 1)
    f45_local1[41] = SetCoolTime(arg1, arg2, 3030, 15, f45_local1[41], 1)
    f45_local1[42] = SetCoolTime(arg1, arg2, 3030, 15, f45_local1[42], 1)
    f45_local1[43] = SetCoolTime(arg1, arg2, 3062, 15, f45_local1[43], 1)
    f45_local1[44] = SetCoolTime(arg1, arg2, 3067, 15, f45_local1[44], 1)
    f45_local1[45] = SetCoolTime(arg1, arg2, 3032, 15, f45_local1[45], 1)
    f45_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f45_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f45_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f45_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f45_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f45_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f45_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f45_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f45_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f45_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f45_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f45_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f45_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f45_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f45_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f45_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f45_local2[18] = REGIST_FUNC(arg1, arg2, arg0.Kengeki18)
    f45_local2[19] = REGIST_FUNC(arg1, arg2, arg0.Kengeki19)
    f45_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f45_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f45_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Kengeki22)
    f45_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f45_local2[31] = REGIST_FUNC(arg1, arg2, arg0.Kengeki31)
    f45_local2[32] = REGIST_FUNC(arg1, arg2, arg0.Kengeki32)
    f45_local2[33] = REGIST_FUNC(arg1, arg2, arg0.Kengeki33)
    f45_local2[34] = REGIST_FUNC(arg1, arg2, arg0.Kengeki34)
    f45_local2[35] = REGIST_FUNC(arg1, arg2, arg0.Kengeki35)
    f45_local2[36] = REGIST_FUNC(arg1, arg2, arg0.Kengeki36)
    f45_local2[37] = REGIST_FUNC(arg1, arg2, arg0.Kengeki37)
    f45_local2[38] = REGIST_FUNC(arg1, arg2, arg0.Kengeki38)
    f45_local2[39] = REGIST_FUNC(arg1, arg2, arg0.Kengeki39)
    f45_local2[40] = REGIST_FUNC(arg1, arg2, arg0.Kengeki40)
    f45_local2[41] = REGIST_FUNC(arg1, arg2, arg0.Kengeki41)
    f45_local2[42] = REGIST_FUNC(arg1, arg2, arg0.Kengeki42)
    f45_local2[43] = REGIST_FUNC(arg1, arg2, arg0.Kengeki43)
    f45_local2[44] = REGIST_FUNC(arg1, arg2, arg0.Kengeki44)
    f45_local2[45] = REGIST_FUNC(arg1, arg2, arg0.Kengeki45)
    f45_local2[46] = REGIST_FUNC(arg1, arg2, arg0.Kengeki46)
    f45_local2[47] = REGIST_FUNC(arg1, arg2, arg0.Kengeki47)
    f45_local2[48] = REGIST_FUNC(arg1, arg2, arg0.Kengeki48)
    f45_local2[49] = REGIST_FUNC(arg1, arg2, arg0.Kengeki49)
    f45_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f45_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f45_local1, f45_local2, f45_local7, f45_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg0:SetNumber(3, 1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    local f47_local0 = arg0:GetSpRate(TARGET_SELF)
    arg1:ClearSubGoal()
    local f47_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 5201, TARGET_ENE_0, 9999, 0, 0)
    f47_local1:TimingSetTimer(3, 30, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(2, 1)
    if f47_local0 <= 0.7 and arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, DistToAtt1, TurnTime, FrontAngle, 0, 0)
    end
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    local f48_local0 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 5) then
                f48_local0 = 1
            else
                f48_local0 = 0
            end
        else
            f48_local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f48_local0 = 1
    else
        f48_local0 = 1
    end
    local f48_local1 = 4
    local f48_local2 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f48_local1, TARGET_ENE_0, f48_local0, f48_local2, true, true, -1)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg0:SetNumber(3, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3061, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3070, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    local f55_local0 = 0
    local f55_local1 = 0
    local f55_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f55_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f55_local2, f55_local0, f55_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3075, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki14 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki15 = function (arg0, arg1, arg2)
    local f58_local0 = 0
    local f58_local1 = 0
    local f58_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f58_local3 = 0
    f58_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f58_local4 = arg0:GetRandam_Int(1, 100)
    local f58_local5 = arg0:GetRandam_Int(1, 100)
    local f58_local6 = arg0:GetSp(TARGET_SELF)
    local f58_local7 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3031, TARGET_ENE_0, f58_local2, f58_local0, f58_local1, 0, 0)
    if f58_local4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, f58_local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 9999, 0, 0)
    end
    if f58_local5 <= 50 then
        arg0:SetNumber(2, 1)
    end
    
end

Goal.Kengeki16 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3070, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3071, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki18 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki19 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    local f63_local0 = arg0:GetDist(TARGET_ENE_0)
    local f63_local1 = 3
    local f63_local2 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f63_local2 = 1
            else
                f63_local2 = 0
            end
        else
            f63_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f63_local2 = 1
    else

    end
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f63_local1, 5202, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    return GETWELLSPACE_ODDS
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki22 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f66_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3063, TARGET_ENE_0, 9999, 0, 0)
    f66_local0:TimingSetTimer(1, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(5, 0)
    
end

Goal.Kengeki31 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f67_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3068, TARGET_ENE_0, 9999, 0, 0)
    f67_local0:TimingSetTimer(1, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(5, 0)
    
end

Goal.Kengeki32 = function (arg0, arg1, arg2)
    local f68_local0 = 0
    local f68_local1 = 0
    local f68_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f68_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f68_local2, f68_local0, f68_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki33 = function (arg0, arg1, arg2)
    local f69_local0 = 0
    local f69_local1 = 0
    local f69_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f69_local3 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f69_local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f69_local5 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f69_local2, f69_local0, f69_local1, 0, 0)
    if f69_local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, f69_local3, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 9999, 0, 0)
    end
    arg0:SetNumber(6, 0)
    
end

Goal.Kengeki34 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki35 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 0)
    
end

Goal.Kengeki37 = function (arg0, arg1, arg2)
    local f72_local0 = 0
    local f72_local1 = 0
    local f72_local2 = arg0:GetNinsatsuNum()
    local f72_local3 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f72_local0, f72_local1, 0, 0)
    if f72_local2 <= 1 then
        if f72_local3 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 9999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 9999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki38 = function (arg0, arg1, arg2)
    local f73_local0 = 0
    local f73_local1 = 0
    local f73_local2 = arg0:GetNinsatsuNum()
    local f73_local3 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f73_local0, f73_local1, 0, 0)
    if f73_local2 <= 1 then
        if f73_local3 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    end
    arg0:SetNumber(4, 1)
    
end

Goal.Kengeki39 = function (arg0, arg1, arg2)
    local f74_local0 = 0
    local f74_local1 = 0
    local f74_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f74_local3 = arg0:GetDist(TARGET_ENE_0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, f74_local2, f74_local0, f74_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki40 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, 0, 0)
    if targetDist <= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3048, TARGET_ENE_0, 4.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 999, 0)
    end
    arg0:SetTimer(6, 50)
    
end

Goal.Kengeki41 = function (arg0, arg1, arg2)
    local f76_local0 = 0
    local f76_local1 = 0
    local f76_local2 = arg0:GetNinsatsuNum()
    local f76_local3 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f76_local0, f76_local1, 0, 0)
    if f76_local2 <= 1 then
        if f76_local3 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki42 = function (arg0, arg1, arg2)
    local f77_local0 = 0
    local f77_local1 = 0
    local f77_local2 = arg0:GetNinsatsuNum()
    local f77_local3 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f77_local0, f77_local1, 0, 0)
    if f77_local2 <= 1 then
        if f77_local3 <= 75 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki43 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3062, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 1)
    
end

Goal.Kengeki44 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3067, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 1)
    
end

Goal.Kengeki45 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki46 = function (arg0, arg1, arg2)
    local f81_local0 = 0
    local f81_local1 = 0
    local f81_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f81_local3 = 0
    f81_local3 = arg0:GetRandam_Int(1, 100)
    local f81_local4 = arg0:GetSp(TARGET_SELF)
    local f81_local5 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    local f81_local6 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3039, TARGET_ENE_0, 9999, 0, 0)
    f81_local6:TimingSetTimer(4, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, 0, f81_local5, true, true, -1)
    
end

Goal.Kengeki47 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f82_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 9999, 0, 0)
    f82_local0:TimingSetTimer(4, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    
end

Goal.Kengeki48 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    local f83_local0 = arg0:GetDist(TARGET_ENE_0)
    if f83_local0 <= 4.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3048, TARGET_ENE_0, 4.5, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 999, 0)
    end
    arg0:SetTimer(6, 50)
    
end

Goal.Kengeki49 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 4, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 3.5, 0)
    arg0:SetTimer(6, 50)
    
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


