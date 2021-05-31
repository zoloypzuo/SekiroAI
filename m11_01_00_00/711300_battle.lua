RegisterTableGoal(GOAL_Rival_hadaka_711300_Battle, "GOAL_Rival_hadaka_711300_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Rival_hadaka_711300_Battle, true)
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
    local f2_local6 = arg1:GetSpRate(TARGET_SELF)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710020)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3710031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3711920)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3711000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 9507)
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

    elseif arg1:GetNumber(7) == 0 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
            f2_local0[40] = 100000
            f2_local0[1] = 1
        else
            f2_local0[20] = 30000
            f2_local0[1] = 1
        end
    elseif arg1:GetNumber(10) == 3 then
        if f2_local3 >= 5 then
            f2_local0[18] = 100
        elseif f2_local3 > 3 then
            f2_local0[19] = 100
        else
            f2_local0[17] = 100
            f2_local0[37] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:GetNumber(10) == 3 then
            f2_local0[13] = 100
        end
        f2_local0[21] = 10
        f2_local0[22] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        f2_local0[27] = 100
    elseif arg1:GetNumber(10) ~= 3 or not arg1:HasSpecialEffectId(TARGET_ENE_0, 400244) then
        if f2_local3 >= 10 then
            f2_local0[10] = 30
            f2_local0[20] = 2
            f2_local0[32] = 60
        elseif f2_local3 >= 7 then
            f2_local0[6] = 30
            f2_local0[20] = 2
            f2_local0[29] = 60
            if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
                f2_local0[15] = 75
                f2_local0[33] = 150
            end
        elseif f2_local3 >= 5 then
            f2_local0[6] = 30
            f2_local0[10] = 10
            f2_local0[14] = 100
            f2_local0[20] = 2
            f2_local0[29] = 100
            f2_local0[32] = 100
            f2_local0[31] = 100
            f2_local0[35] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
                f2_local0[15] = 75
                f2_local0[33] = 150
            end
        elseif f2_local3 > 3 then
            f2_local0[1] = 100
            f2_local0[9] = 100
            f2_local0[46] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
                f2_local0[41] = 75
            end
        else
            f2_local0[2] = 100
            f2_local0[3] = 100
            f2_local0[46] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
                f2_local0[41] = 75
            end
        end
    end
    if arg1:GetNumber(2) == 1 and arg1:GetNumber(10) ~= 3 then
        f2_local0[23] = 6000
        arg1:SetNumber(2, 0)
    end
    if arg1:IsFinishTimer(0) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[3] = 0
        f2_local0[6] = 1
        f2_local0[21] = 0
    end
    if arg1:IsFinishTimer(1) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[2] = 0
        f2_local0[4] = 0
    end
    if arg1:IsFinishTimer(3) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[24] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 109900) and arg1:GetNumber(10) ~= 3 then
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[20] = 0
        f2_local0[1] = 5
        f2_local0[2] = 5
        f2_local0[4] = 50
        f2_local0[9] = 0
        f2_local0[3] = 5
        f2_local0[10] = 30
        f2_local0[14] = 50
        f2_local0[15] = 0
        f2_local0[21] = 10
        f2_local0[32] = 60
        f2_local0[33] = 0
        f2_local0[41] = 0
        f2_local0[48] = 30
        if f2_local3 <= 4 then
            f2_local0[19] = 30
        end
    end
    if (arg1:IsFinishTimer(4) == false or arg1:HasSpecialEffectId(TARGET_SELF, 3711500)) and arg1:GetNumber(10) ~= 3 then
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
    end
    if arg1:IsFinishTimer(8) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[9] = 0
        f2_local0[40] = 0
        f2_local0[41] = 0
    end
    if arg1:IsFinishTimer(6) == false then
        f2_local0[9] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false and arg1:GetNumber(10) ~= 3 then
        f2_local0[25] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110621) and arg1:GetNumber(10) ~= 3 then
        f2_local0[23] = 0
        f2_local0[24] = 0
    end
    if arg1:IsFinishTimer(12) == true then
        arg1:SetNumber(9, 0)
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3021, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3092, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3037, 15, f2_local0[11], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[15], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3039, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3042, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3043, 15, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3008, 15, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[21], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[34], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3085, 15, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[41], 1)
    f2_local0[46] = SetCoolTime(arg1, arg2, 3018, 8, f2_local0[46], 1)
    f2_local0[48] = SetCoolTime(arg1, arg2, 3013, 5, f2_local0[48], 1)
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
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, arg0.Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, arg0.Act49)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
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
    if f3_local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f3_local9, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, f3_local10, 0)
        if arg0:GetNumber(10) == 0 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 1 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 2 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local11, f3_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 5, 0)
        if arg0:GetNumber(10) == 0 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 1 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 2 then
            local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
            f3_local13:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
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
    local f5_local1 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
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
    local f6_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 2.5
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = 0
    local f6_local12 = 0
    if f6_local7 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f6_local8, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f6_local9, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, f6_local10, 0)
        if arg0:GetNumber(10) == 0 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 1 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 2 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f6_local8, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3.5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 5, 0)
        if arg0:GetNumber(10) == 0 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 1 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 2 then
            local f6_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            f6_local13:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
        end
    end
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
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    if arg0:GetNumber(10) == 0 then
        local f8_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
        f8_local9:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f8_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
        f8_local9:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f8_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
        f8_local9:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 2.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
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
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3041, TARGET_ENE_0, 999, 0)
    if arg0:GetNumber(10) == 0 then
        local f11_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3067, TARGET_ENE_0, 3.5, 0)
        f11_local9:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f11_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3067, TARGET_ENE_0, 3.5, 0)
        f11_local9:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f11_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3067, TARGET_ENE_0, 3.5, 0)
        f11_local9:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(6, 20)
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
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 10
    local f13_local6 = 10
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 10
    local f14_local6 = 10
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg0:SetNumber(2, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 20, 0)
    if arg0:IsFinishTimer(4) == true and not arg0:HasSpecialEffectId(TARGET_SELF, 3711500) then
        local f15_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 6, 0)
        f15_local0:TimingSetTimer(4, 15, AI_TIMING_SET__ACTIVATE)
        arg0:SetNumber(10, 0)
    elseif arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 2.5
    local f16_local6 = 3
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 0
    local f16_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f16_local7, f16_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f16_local7, f16_local8, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
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
    if arg0:HasSpecialEffectId(TARGET_SELF, 3711500) and arg0:IsFinishTimer(8) == true then
        local f17_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3087, TARGET_ENE_0, 9999, 0, 0)
        f17_local10:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    end
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
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
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f19_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    f19_local0 = f19_local0:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    f19_local0:TimingSetTimer(4, 15, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    local f20_local0 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 8.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 1.5
    local f20_local6 = 3
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 0
    local f20_local8 = 0
    local f20_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3043, TARGET_ENE_0, 9999, f20_local7, f20_local8, 0, 0)
    f20_local9 = f20_local9:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    f20_local9:TimingSetTimer(4, 15, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f21_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f21_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 1.5
    local f21_local6 = 3
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = 0
    local f21_local8 = 0
    local f21_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, f21_local7, f21_local8, 0, 0)
    f21_local9 = f21_local9:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    f21_local9:TimingSetTimer(4, 15, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f22_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 2.5
    local f22_local6 = 3
    if arg0:GetNumber(7) == 1 then
        if arg0:GetNumber(10) == 0 then
            arg0:SetNumber(10, 1)
        elseif arg0:GetNumber(10) == 1 then
            arg0:SetNumber(10, 2)
        elseif arg0:GetNumber(10) == 2 then
            arg0:SetNumber(10, 3)
        end
    end
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 0
    local f22_local8 = 0
    local f22_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f22_local7, f22_local8, 0, 0)
    f22_local9:TimingSetNumber(7, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f23_local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 1.5
    local f23_local6 = 3
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = 0
    local f23_local8 = 0
    local f23_local9 = 180
    local f23_local10 = 3
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, f23_local9, f23_local10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f23_local7, f23_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f23_local7, f23_local8, 0, 0)
    arg0:SetTimer(0, 7)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f24_local0 = 3
    local f24_local1 = 0
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local0, 5202, TARGET_ENE_0, f24_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local0, 5203, TARGET_ENE_0, f24_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local0, 5202, TARGET_ENE_0, f24_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local0, 5203, TARGET_ENE_0, f24_local1, AI_DIR_TYPE_R, 0)
    else

    end
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetSp(TARGET_SELF)
    local f25_local2 = 20
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    local f25_local4 = -1
    if f25_local2 <= f25_local1 and f25_local3 <= 50 then
        f25_local4 = 9910
    end
    local f25_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 5) then
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
    local f25_local6 = 3
    local f25_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(11, f25_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local6, TARGET_ENE_0, f25_local5, f25_local7, true, true, -1)
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
            f26_local3 = 5201
        end
    end
    arg0:SetNumber(2, 1)
    local f26_local4 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f26_local1, f26_local3, TARGET_ENE_0, f26_local2, AI_DIR_TYPE_B, 0)
    f26_local4:TimingSetTimer(3, 30, AI_TIMING_SET__UPDATE_SUCCESS)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Float(2, 4)
    local f27_local1 = arg0:GetRandam_Float(1, 3)
    local f27_local2 = arg0:GetDist(TARGET_ENE_0)
    local f27_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f27_local0, TARGET_ENE_0, f27_local1, TARGET_ENE_0, true, f27_local3)
    else

    end
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
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
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = 1.5
    local f30_local2 = 1.5
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
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f31_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local3 = 100
    local f31_local4 = 0
    local f31_local5 = 1.5
    local f31_local6 = 3
    Approach_Act_Flex(arg0, arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local7 = 0
    local f31_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f31_local7, f31_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f31_local7, f31_local8, 0, 0)
    arg0:SetTimer(0, 5)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f32_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local3 = 100
    local f32_local4 = 0
    local f32_local5 = 2.5
    local f32_local6 = 3
    Approach_Act_Flex(arg0, arg1, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6)
    local f32_local7 = 0
    local f32_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f32_local7, f32_local8, 0, 0)
    if arg0:GetNumber(10) == 0 then
        local f32_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999, 0, 0)
        f32_local9:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f32_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999, 0, 0)
        f32_local9:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f32_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999, 0, 0)
        f32_local9:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f33_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f33_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f33_local3 = 100
    local f33_local4 = 0
    local f33_local5 = 1.5
    local f33_local6 = 3
    Approach_Act_Flex(arg0, arg1, f33_local0, f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6)
    local f33_local7 = 0
    local f33_local8 = 0
    local f33_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f33_local9, f33_local7, f33_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    if arg0:GetNumber(10) == 0 then
        local f33_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f33_local7, f33_local8, 0, 0)
        f33_local10:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f33_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f33_local7, f33_local8, 0, 0)
        f33_local10:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f33_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f33_local7, f33_local8, 0, 0)
        f33_local10:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f34_local0 = 0
    local f34_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f34_local0, f34_local1, 0, 0)
    if arg0:GetNumber(10) == 0 then
        local f34_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f34_local0, f34_local1, 0, 0)
        f34_local2:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f34_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f34_local0, f34_local1, 0, 0)
        f34_local2:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f34_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f34_local0, f34_local1, 0, 0)
        f34_local2:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(3, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f35_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f35_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local3 = 100
    local f35_local4 = 0
    local f35_local5 = 1.5
    local f35_local6 = 3
    Approach_Act_Flex(arg0, arg1, f35_local0, f35_local1, f35_local2, f35_local3, f35_local4, f35_local5, f35_local6)
    local f35_local7 = 0
    local f35_local8 = 0
    local f35_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, f35_local9, f35_local7, f35_local8, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3711500) and arg0:IsFinishTimer(8) == true then
        local f35_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3087, TARGET_ENE_0, 9999, 0, 0)
        f35_local10:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 9999, f35_local7, f35_local8, 0, 0)
    end
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f36_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f36_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f36_local3 = 100
    local f36_local4 = 0
    local f36_local5 = 1.5
    local f36_local6 = 3
    Approach_Act_Flex(arg0, arg1, f36_local0, f36_local1, f36_local2, f36_local3, f36_local4, f36_local5, f36_local6)
    local f36_local7 = 0
    local f36_local8 = 0
    local f36_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, f36_local9, f36_local7, f36_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f37_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local3 = 100
    local f37_local4 = 0
    local f37_local5 = 1.5
    local f37_local6 = 3
    Approach_Act_Flex(arg0, arg1, f37_local0, f37_local1, f37_local2, f37_local3, f37_local4, f37_local5, f37_local6)
    local f37_local7 = 0
    local f37_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 999, f37_local7, f37_local8, 0, 0)
    local f37_local9 = arg0:GetRandam_Int(1, 100)
    if f37_local9 <= 30 then
        if arg0:GetNumber(10) == 0 then
            local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0)
            f37_local10:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 1 then
            local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0)
            f37_local10:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
        elseif arg0:GetNumber(10) == 2 then
            local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3044, TARGET_ENE_0, 9999, 0)
            f37_local10:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
        end
    elseif arg0:GetNumber(10) == 0 then
        local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f37_local10:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f37_local10:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f37_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f37_local10:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f38_local0 = 0
    local f38_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 9, f38_local0, f38_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3049, TARGET_ENE_0, 4.5, 0)
    arg0:SetTimer(6, 30)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f39_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local3 = 100
    local f39_local4 = 0
    local f39_local5 = 1.5
    local f39_local6 = 3
    Approach_Act_Flex(arg0, arg1, f39_local0, f39_local1, f39_local2, f39_local3, f39_local4, f39_local5, f39_local6)
    local f39_local7 = 0
    local f39_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 999, f39_local7, f39_local8, 0, 0)
    local f39_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3043, TARGET_ENE_0, 999, 0)
    f39_local9:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    arg0:SetTimer(6, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f40_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local3 = 100
    local f40_local4 = 0
    local f40_local5 = 2.5
    local f40_local6 = 3
    Approach_Act_Flex(arg0, arg1, f40_local0, f40_local1, f40_local2, f40_local3, f40_local4, f40_local5, f40_local6)
    local f40_local7 = 0
    local f40_local8 = 0
    local f40_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3085, TARGET_ENE_0, 6.5, f40_local7, f40_local8, 0, 0)
    f40_local9 = f40_local9:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    f40_local9:TimingSetNumber(7, 1, AI_TIMING_SET__ACTIVATE)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f41_local0 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local1 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f41_local2 = 3.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f41_local3 = 100
    local f41_local4 = 0
    local f41_local5 = 1.5
    local f41_local6 = 3
    Approach_Act_Flex(arg0, arg1, f41_local0, f41_local1, f41_local2, f41_local3, f41_local4, f41_local5, f41_local6)
    local f41_local7 = 0
    local f41_local8 = 0
    local f41_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f41_local9, f41_local7, f41_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    local f41_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3085, TARGET_ENE_0, 6, 0, 0)
    f41_local10:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f42_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local3 = 100
    local f42_local4 = 0
    local f42_local5 = 2.5
    local f42_local6 = 3
    Approach_Act_Flex(arg0, arg1, f42_local0, f42_local1, f42_local2, f42_local3, f42_local4, f42_local5, f42_local6)
    local f42_local7 = 0
    local f42_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, f42_local7, f42_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f43_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local3 = 100
    local f43_local4 = 0
    local f43_local5 = 2.5
    local f43_local6 = 3
    Approach_Act_Flex(arg0, arg1, f43_local0, f43_local1, f43_local2, f43_local3, f43_local4, f43_local5, f43_local6)
    local f43_local7 = 0
    local f43_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f43_local7, f43_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    local f44_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f44_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f44_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f44_local3 = 100
    local f44_local4 = 0
    local f44_local5 = 2.5
    local f44_local6 = 3
    Approach_Act_Flex(arg0, arg1, f44_local0, f44_local1, f44_local2, f44_local3, f44_local4, f44_local5, f44_local6)
    local f44_local7 = 0
    local f44_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f44_local7, f44_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    local f45_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f45_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f45_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f45_local3 = 100
    local f45_local4 = 0
    local f45_local5 = 2.5
    local f45_local6 = 3
    Approach_Act_Flex(arg0, arg1, f45_local0, f45_local1, f45_local2, f45_local3, f45_local4, f45_local5, f45_local6)
    local f45_local7 = 0
    local f45_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f45_local7, f45_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(7, 1)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f46_local0 = 0
    local f46_local1 = 0
    local f46_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f46_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f46_local2, f46_local0, f46_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 9999, 0, 0)
    if arg0:GetNumber(10) == 0 then
        local f46_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f46_local4:TimingSetNumber(10, 1, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 1 then
        local f46_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f46_local4:TimingSetNumber(10, 2, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(10) == 2 then
        local f46_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 999, 0)
        f46_local4:TimingSetNumber(10, 3, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act48 = function (arg0, arg1, arg2)
    local f47_local0 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f47_local1 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f47_local2 = 8.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f47_local3 = 100
    local f47_local4 = 0
    local f47_local5 = 1.5
    local f47_local6 = 3
    Approach_Act_Flex(arg0, arg1, f47_local0, f47_local1, f47_local2, f47_local3, f47_local4, f47_local5, f47_local6)
    local f47_local7 = 0
    local f47_local8 = 0
    local f47_local9 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, f47_local9, f47_local7, f47_local8, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3711500) and arg0:IsFinishTimer(8) == true then
        local f47_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3087, TARGET_ENE_0, 9999, 0, 0)
        f47_local10:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    end
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act49 = function (arg0, arg1, arg2)
    local f48_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f48_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f48_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f48_local3 = 100
    local f48_local4 = 0
    local f48_local5 = 2.5
    local f48_local6 = 3
    Approach_Act_Flex(arg0, arg1, f48_local0, f48_local1, f48_local2, f48_local3, f48_local4, f48_local5, f48_local6)
    local f48_local7 = 0
    local f48_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f48_local7, f48_local8, 0, 0)
    if arg0:GetNumber(10) == 0 then
        arg0:SetNumber(10, 1)
    elseif arg0:GetNumber(10) == 1 then
        arg0:SetNumber(10, 2)
    elseif arg0:GetNumber(10) == 2 then
        arg0:SetNumber(10, 3)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f49_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f49_local1 = arg1:GetSpecialEffectInactivateInterruptType(0)
    local f49_local2 = arg1:GetDist(TARGET_ENE_0)
    local f49_local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2, 100, 0)
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f49_local0 == 5026 then
            if f49_local2 <= 5.2 - arg1:GetMapHitRadius(TARGET_SELF) + 0.3 and f49_local3 <= 0 then
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
                arg1:SetNumber(2, 0)
                return true
            end
        elseif f49_local0 == 5029 then
            if f49_local2 >= 4.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 9999, 0)
            end
        elseif f49_local0 == 3710020 then
            arg1:SetNumber(0, 0)
            return true
        elseif f49_local0 == 3710030 and arg1:HasSpecialEffectId(TARGET_SELF, 3710032) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3092, TARGET_ENE_0, 9999, 0)
            arg1:SetTimer(6, 50)
            return true
        elseif f49_local0 == 3711000 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3009, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif f49_local0 == 109031 or f49_local0 == 110125 then
            if f49_local3 <= 50 then
                arg1:Replanning()
                return true
            end
        elseif f49_local0 == 5030 and f49_local3 <= 100 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3080, TARGET_ENE_0, 9999, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) then
        if f49_local1 == 109031 or f49_local1 == 110125 then
            arg1:Replanning()
            return true
        elseif f49_local1 == 110010 then
            arg1:Replanning()
            return true
        end
    end
    if Interupt_Use_Item(arg1, TIMER_ITEM_USED, 5) then
        if f49_local2 <= 12.5 - arg1:GetMapHitRadius(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3008, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 400244) and arg1:HasSpecialEffectId(TARGET_ENE_0, 9492) and arg1:GetNumber(9) == 0 and arg1:IsFinishTimer(13) == true then
        arg2:ClearSubGoal()
        local f49_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        f49_local4:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
    end
    if (not (not (f49_local2 <= 13 and (not not arg1:HasSpecialEffectId(TARGET_ENE_0, 9505) or arg1:HasSpecialEffectId(TARGET_ENE_0, 9506))) or not arg1:HasSpecialEffectId(TARGET_ENE_0, 100328) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 100235)) or (not not arg1:HasSpecialEffectId(TARGET_ENE_0, 9507) or arg1:HasSpecialEffectId(TARGET_ENE_0, 9508)) and arg1:HasSpecialEffectId(TARGET_ENE_0, 100274)) and (arg1:GetNumber(9) == 1 or arg1:GetNumber(9) == 5) and arg1:IsFinishTimer(13) == true then
        arg2:ClearSubGoal()
        local f49_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        f49_local4:TimingSetNumber(9, 2, AI_TIMING_SET__ACTIVATE)
        arg1:SetNumber(10, 0)
        arg1:SetTimer(7, 3)
    elseif arg1:GetNumber(9) == 1 then
        arg1:SetTimer(12, 2)
        arg1:SetNumber(9, 5)
    end
    if arg1:IsFinishTimer(7) ~= true then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 9445) then
            arg1:SetTimer(13, 3)
            arg1:SetTimer(12, 4)
        else
            arg1:SetTimer(12, 3)
        end
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f50_local0 = arg0:GetDist(TARGET_ENE_0)
    local f50_local1 = GetDist_Parry(arg0)
    local f50_local2 = arg0:GetRandam_Int(1, 100)
    local f50_local3 = arg0:GetRandam_Int(1, 100)
    local f50_local4 = arg0:GetRandam_Int(1, 100)
    local f50_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f50_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f50_local7 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f50_local8 = 2
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f50_local8 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f50_local8 = 1
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) or arg0:HasSpecialEffectId(TARGET_ENE_0, 100328) then
        return false
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg3 == nil then
        arg3 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, f50_local1) then
        if f50_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3103, TARGET_ENE_0, 9999, 0)
            return true
        elseif f50_local5 then
            if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                return false
            elseif f50_local8 == 2 then
                return false
            elseif f50_local8 == 1 then
                if f50_local2 <= 50 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    return true
                end
            elseif f50_local8 == 0 and f50_local2 <= 100 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif f50_local7 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3027, TARGET_ENE_0, 9999, 0)
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        elseif f50_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f50_local1 + 1) then
        if f50_local4 <= arg3 then
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
    local f51_local0 = arg0:GetHpRate(TARGET_SELF)
    local f51_local1 = arg0:GetDist(TARGET_ENE_0)
    local f51_local2 = arg0:GetSp(TARGET_SELF)
    local f51_local3 = arg0:GetRandam_Int(1, 100)
    local f51_local4 = 0
    local f51_local5 = 3
    if f51_local3 <= 15 then
        arg1:ClearSubGoal()
        local f51_local6 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f51_local5, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f51_local6:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        arg0:SetNumber(2, 1)
        if arg0:GetNumber(0) <= 3 then
            arg0:SetNumber(0, 0)
        else
            arg0:SetNumber(0, arg0:GetNumber(0) - 3)
        end
        return true
    elseif f51_local3 <= 30 and arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
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
    local f53_local0 = ReturnKengekiSpecialEffect(arg1)
    if f53_local0 == 0 then
        return false
    end
    local f53_local1 = {}
    local f53_local2 = {}
    local f53_local3 = {}
    Common_Clear_Param(f53_local1, f53_local2, f53_local3)
    local f53_local4 = arg1:GetDist(TARGET_ENE_0)
    local f53_local5 = arg1:GetHpRate(TARGET_SELF)
    local f53_local6 = arg1:GetSp(TARGET_SELF)
    if f53_local0 == 200200 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f53_local4 >= 2.5 then
            f53_local1[50] = 1
            f53_local1[45] = 60
            f53_local1[46] = 60
        elseif arg1:GetNumber(0) >= 2 then
            f53_local1[2] = 10
            f53_local1[20] = 10
            f53_local1[30] = 5
            f53_local1[38] = 5
            f53_local1[15] = 0
            f53_local1[46] = 60
            if arg1:GetNumber(6) == 0 then
                f53_local1[32] = 20
                f53_local1[1] = 50
                f53_local1[4] = 100
            else
                f53_local1[1] = 50
                f53_local1[4] = 100
                f53_local1[33] = 20
            end
        elseif arg1:GetNumber(3) == 0 then
            f53_local1[1] = 50
            f53_local1[4] = 100
        else
            f53_local1[4] = 100
        end
    elseif f53_local0 == 200201 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f53_local4 >= 2.5 then
            f53_local1[50] = 1
            f53_local1[45] = 60
            f53_local1[46] = 60
        elseif arg1:GetNumber(0) >= 2 then
            f53_local1[2] = 10
            f53_local1[20] = 10
            f53_local1[31] = 5
            f53_local1[38] = 5
            f53_local1[15] = 30
            f53_local1[46] = 60
            if arg1:GetNumber(6) == 0 then
                f53_local1[12] = 50
                f53_local1[32] = 50
                f53_local1[1] = 100
                f53_local1[4] = 100
            else
                f53_local1[33] = 50
                f53_local1[1] = 100
                f53_local1[4] = 100
            end
        elseif arg1:GetNumber(3) == 0 then
            f53_local1[1] = 50
        else
            f53_local1[4] = 100
        end
    elseif f53_local0 == 200205 then
        arg1:SetNumber(5, arg1:GetNumber(5) + 1)
        if f53_local4 >= 2.5 then
            f53_local1[1] = 100
        elseif f53_local4 <= 1 then
            f53_local1[1] = 100
        elseif arg1:GetNumber(5) <= 4 then
            f53_local1[1] = 100
        else
            f53_local1[30] = 500
        end
    elseif f53_local0 == 200206 then
        arg1:SetNumber(5, arg1:GetNumber(5) + 1)
        if arg1:GetNumber(5) <= 4 then
            f53_local1[4] = 100
            f53_local1[14] = 50
        else
            f53_local1[35] = 100
        end
    elseif f53_local0 == 200210 then
        f53_local1[17] = 100
        f53_local1[38] = 50
        f53_local1[31] = 50
    elseif f53_local0 == 200211 then
        f53_local1[31] = 50
        f53_local1[38] = 50
    elseif f53_local0 == 200216 then
        if f53_local4 >= 3 then
            f53_local1[50] = 10
        else
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) >= 2 then
                f53_local1[20] = 20
                f53_local1[30] = 45
                f53_local1[38] = 30
                f53_local1[43] = 10
                f53_local1[44] = 10
                f53_local1[46] = 60
                f53_local1[39] = 10
                f53_local1[15] = 10
                if arg1:GetNumber(6) == 0 then
                    f53_local1[12] = 50
                    f53_local1[32] = 50
                    f53_local1[1] = 100
                    f53_local1[4] = 100
                else
                    f53_local1[33] = 50
                    f53_local1[1] = 100
                    f53_local1[4] = 100
                end
            else
                f53_local1[20] = 50
                if arg1:GetNumber(3) == 0 then
                    f53_local1[1] = 50
                else
                    f53_local1[14] = 50
                end
                f53_local1[50] = 100
            end
        end
    elseif f53_local0 == 200215 then
        if f53_local4 >= 3 then
            f53_local1[50] = 10
        else
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if arg1:GetNumber(0) >= 2 then
                f53_local1[20] = 20
                f53_local1[38] = 30
                f53_local1[31] = 15
                f53_local1[43] = 10
                f53_local1[44] = 10
                f53_local1[39] = 10
                f53_local1[15] = 10
                f53_local1[46] = 60
                if arg1:GetNumber(6) == 0 then
                    f53_local1[12] = 50
                    f53_local1[32] = 50
                    f53_local1[1] = 100
                    f53_local1[4] = 100
                else
                    f53_local1[33] = 50
                    f53_local1[1] = 100
                    f53_local1[4] = 100
                end
            else
                f53_local1[20] = 50
                f53_local1[46] = 100
                if arg1:GetNumber(3) == 0 then
                    f53_local1[1] = 50
                else
                    f53_local1[14] = 50
                end
                f53_local1[50] = 100
            end
        end
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f53_local1[20] = 0
    end
    if arg1:IsFinishTimer(4) == false then
        f53_local1[45] = 0
        f53_local1[46] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3711500) then
        f53_local1[32] = 0
        f53_local1[33] = 0
        f53_local1[45] = 0
        f53_local1[46] = 0
        f53_local1[47] = 0
        if arg1:IsFinishTimer(8) == true then
            f53_local1[22] = 100
        end
    end
    if arg1:IsFinishTimer(6) == false then
        f53_local1[40] = 0
    elseif arg1:IsFinishTimer(6) == true and f53_local5 <= 0.75 then
        f53_local1[40] = 50
    end
    f53_local1[1] = SetCoolTime(arg1, arg2, 3050, 8, f53_local1[1], 1)
    f53_local1[2] = SetCoolTime(arg1, arg2, 5201, 10, f53_local1[2], 1)
    f53_local1[4] = SetCoolTime(arg1, arg2, 3055, 8, f53_local1[4], 1)
    f53_local1[7] = SetCoolTime(arg1, arg2, 3060, 8, f53_local1[7], 1)
    f53_local1[9] = SetCoolTime(arg1, arg2, 3018, 8, f53_local1[9], 1)
    f53_local1[10] = SetCoolTime(arg1, arg2, 3065, 8, f53_local1[10], 1)
    f53_local1[13] = SetCoolTime(arg1, arg2, 3075, 8, f53_local1[13], 1)
    f53_local1[14] = SetCoolTime(arg1, arg2, 3076, 8, f53_local1[14], 1)
    f53_local1[15] = SetCoolTime(arg1, arg2, 3031, 15, f53_local1[15], 1)
    f53_local1[17] = SetCoolTime(arg1, arg2, 3071, 8, f53_local1[17], 1)
    f53_local1[18] = SetCoolTime(arg1, arg2, 3004, 8, f53_local1[18], 1)
    f53_local1[20] = SetCoolTime(arg1, arg2, 5202, 15, f53_local1[20], 1)
    f53_local1[22] = SetCoolTime(arg1, arg2, 3087, 20, f53_local1[22], 1)
    f53_local1[30] = SetCoolTime(arg1, arg2, 3063, 15, f53_local1[30], 1)
    f53_local1[31] = SetCoolTime(arg1, arg2, 3068, 15, f53_local1[31], 1)
    f53_local1[32] = SetCoolTime(arg1, arg2, 3018, 15, f53_local1[32], 1)
    f53_local1[33] = SetCoolTime(arg1, arg2, 3007, 15, f53_local1[33], 1)
    f53_local1[34] = SetCoolTime(arg1, arg2, 3037, 15, f53_local1[34], 1)
    f53_local1[35] = SetCoolTime(arg1, arg2, 3016, 8, f53_local1[35], 1)
    f53_local1[38] = SetCoolTime(arg1, arg2, 3030, 8, f53_local1[38], 1)
    f53_local1[39] = SetCoolTime(arg1, arg2, 3034, 15, f53_local1[39], 1)
    f53_local1[40] = SetCoolTime(arg1, arg2, 3028, 15, f53_local1[40], 1)
    f53_local1[41] = SetCoolTime(arg1, arg2, 3020, 15, f53_local1[41], 1)
    f53_local1[43] = SetCoolTime(arg1, arg2, 3062, 15, f53_local1[43], 1)
    f53_local1[44] = SetCoolTime(arg1, arg2, 3067, 15, f53_local1[44], 1)
    f53_local1[45] = SetCoolTime(arg1, arg2, 3032, 15, f53_local1[45], 1)
    f53_local1[46] = SetCoolTime(arg1, arg2, 3039, 15, f53_local1[46], 1)
    f53_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f53_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f53_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f53_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f53_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f53_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f53_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f53_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f53_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f53_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f53_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f53_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f53_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f53_local2[18] = REGIST_FUNC(arg1, arg2, arg0.Kengeki18)
    f53_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f53_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f53_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Kengeki22)
    f53_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f53_local2[31] = REGIST_FUNC(arg1, arg2, arg0.Kengeki31)
    f53_local2[32] = REGIST_FUNC(arg1, arg2, arg0.Kengeki32)
    f53_local2[33] = REGIST_FUNC(arg1, arg2, arg0.Kengeki33)
    f53_local2[34] = REGIST_FUNC(arg1, arg2, arg0.Kengeki34)
    f53_local2[35] = REGIST_FUNC(arg1, arg2, arg0.Kengeki35)
    f53_local2[36] = REGIST_FUNC(arg1, arg2, arg0.Kengeki36)
    f53_local2[37] = REGIST_FUNC(arg1, arg2, arg0.Kengeki37)
    f53_local2[38] = REGIST_FUNC(arg1, arg2, arg0.Kengeki38)
    f53_local2[39] = REGIST_FUNC(arg1, arg2, arg0.Kengeki39)
    f53_local2[40] = REGIST_FUNC(arg1, arg2, arg0.Kengeki40)
    f53_local2[41] = REGIST_FUNC(arg1, arg2, arg0.Kengeki41)
    f53_local2[43] = REGIST_FUNC(arg1, arg2, arg0.Kengeki43)
    f53_local2[44] = REGIST_FUNC(arg1, arg2, arg0.Kengeki44)
    f53_local2[45] = REGIST_FUNC(arg1, arg2, arg0.Kengeki45)
    f53_local2[46] = REGIST_FUNC(arg1, arg2, arg0.Kengeki46)
    f53_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f53_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f53_local1, f53_local2, f53_local7, f53_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f55_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    f55_local0:TimingSetTimer(3, 30, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(2, 1)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3043, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    local f60_local0 = 0
    local f60_local1 = 0
    local f60_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f60_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f60_local2, f60_local0, f60_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 9999, 0, 0)
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
    local f63_local0 = 0
    local f63_local1 = 0
    local f63_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f63_local3 = 0
    f63_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f63_local4 = arg0:GetRandam_Int(1, 100)
    local f63_local5 = arg0:GetRandam_Int(1, 100)
    local f63_local6 = arg0:GetSp(TARGET_SELF)
    local f63_local7 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9999, f63_local0, 180, 0, 0)
    if f63_local4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3036, TARGET_ENE_0, 9999, 0, 0)
    end
    if f63_local5 <= 50 then
        arg0:SetNumber(2, 1)
    end
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki18 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    local f66_local0 = arg0:GetDist(TARGET_ENE_0)
    local f66_local1 = 3
    local f66_local2 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f66_local2 = 1
            else
                f66_local2 = 0
            end
        else
            f66_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f66_local2 = 1
    else

    end
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 5202, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    return GETWELLSPACE_ODDS
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki22 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f68_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    f68_local0:TimingSetTimer(8, 8, AI_TIMING_SET__ACTIVATE)
    f68_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3087, TARGET_ENE_0, 6, 0, 0)
    f68_local0:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f69_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3063, TARGET_ENE_0, 9999, 0, 0)
    f69_local0:TimingSetTimer(1, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(5, 0)
    
end

Goal.Kengeki31 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f70_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3068, TARGET_ENE_0, 9999, 0, 0)
    f70_local0:TimingSetTimer(1, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(5, 0)
    
end

Goal.Kengeki32 = function (arg0, arg1, arg2)
    local f71_local0 = 0
    local f71_local1 = 0
    local f71_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f71_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f71_local2, f71_local0, f71_local1, 0, 0)
    local f71_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3043, TARGET_ENE_0, 9999, 0, 0)
    f71_local4:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki33 = function (arg0, arg1, arg2)
    local f72_local0 = 0
    local f72_local1 = 0
    local f72_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f72_local3 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f72_local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f72_local5 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, f72_local2, f72_local0, f72_local1, 0, 0)
    if f72_local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, f72_local3, 0)
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

Goal.Kengeki38 = function (arg0, arg1, arg2)
    local f75_local0 = 0
    local f75_local1 = 0
    local f75_local2 = arg0:GetNinsatsuNum()
    local f75_local3 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, 999, f75_local0, f75_local1, 0, 0)
    if f75_local3 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3067, TARGET_ENE_0, 9999, 0, 0)
    elseif f75_local3 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki39 = function (arg0, arg1, arg2)
    local f76_local0 = 0
    local f76_local1 = 0
    local f76_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f76_local3 = arg0:GetDist(TARGET_ENE_0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, f76_local2, f76_local0, f76_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki40 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetTimer(6, 50)
    
end

Goal.Kengeki41 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3020, TARGET_ENE_0, 9999, 0, 0)
    
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
    local f81_local0 = arg0:GetDist(TARGET_ENE_0)
    if f81_local0 <= 3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:ClearSubGoal()
    local f81_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3042, TARGET_ENE_0, 9999, 0, 0)
    f81_local1:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki46 = function (arg0, arg1, arg2)
    local f82_local0 = 0
    local f82_local1 = 0
    local f82_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f82_local3 = 0
    f82_local3 = arg0:GetRandam_Int(1, 100)
    local f82_local4 = arg0:GetSp(TARGET_SELF)
    local f82_local5 = arg0:GetRandam_Int(30, 45)
    local f82_local6 = arg0:GetDist(TARGET_ENE_0)
    if f82_local6 <= 3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:ClearSubGoal()
    local f82_local7 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3039, TARGET_ENE_0, 9999, 0, 0)
    f82_local7 = f82_local7:TimingSetNumber(10, 0, AI_TIMING_SET__ACTIVATE)
    f82_local7:TimingSetTimer(4, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(10, 0)
    
end

Goal.Kengeki47 = function (arg0, arg1, arg2)
    local f83_local0 = arg0:GetDist(TARGET_ENE_0)
    if f83_local0 <= 3 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    arg1:ClearSubGoal()
    local f83_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3043, TARGET_ENE_0, 9999, 0, 0)
    f83_local1:TimingSetTimer(4, 10, AI_TIMING_SET__UPDATE_SUCCESS)
    
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


