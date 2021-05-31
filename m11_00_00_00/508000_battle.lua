RegisterTableGoal(GOAL_Kibamusya508000_Battle, "GOAL_Kibamusya508000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Kibamusya508000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = true
    local f2_local9 = arg1:GetNinsatsuNum()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3508050)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3508080)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3508510)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 105100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100401)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3508040)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 3508520)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    arg1:DeleteObserve(2)
    arg1:DeleteObserve(4)
    arg1:SetNumber(8, 0)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3508000) then
        f2_local8 = true
    else
        f2_local8 = false
    end
    if arg1:IsFinishTimer(2) == true then
        arg1:SetNumber(2, 0)
    end
    if f2_local7 == 1 and arg1:GetNumber(7) ~= 2 then
        f2_local0[34] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3508530) and f2_local5 >= 4 then
        f2_local0[22] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3508000) then
            f2_local0[32] = 100
        else
            f2_local0[28] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110015) then
        f2_local0[30] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3508090) then
        f2_local0[30] = 100
        f2_local0[33] = 100
    elseif f2_local8 == true then
        if arg1:IsFinishTimer(8) == true then
            if f2_local5 <= 10 then
                f2_local0[30] = 40
            else
                f2_local0[31] = 60
            end
        end
        f2_local0[12] = 60
        f2_local0[25] = 0
        f2_local0[3] = 60
        if f2_local9 <= 1 then
            f2_local0[25] = 120
        end
    elseif not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if f2_local5 >= 10 then
            f2_local0[3] = 5
        elseif f2_local5 >= 7 then
            f2_local0[30] = 1
            f2_local0[33] = 5
            f2_local0[10] = 50
            f2_local0[11] = 50
            f2_local0[42] = 50
            if f2_local5 <= 9 then
                f2_local0[9] = 50
            end
        elseif f2_local5 >= 4 then
            f2_local0[9] = 50
            f2_local0[30] = 1
            f2_local0[33] = 5
            f2_local0[10] = 50
            f2_local0[11] = 50
            f2_local0[42] = 50
        else
            f2_local0[1] = 50
            f2_local0[2] = 100
            f2_local0[35] = 50
            f2_local0[37] = 150
            f2_local0[42] = 50
            if f2_local5 <= 2 and f2_local9 <= 1 then
                f2_local0[46] = 120
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                f2_local0[13] = 50
            end
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if f2_local5 >= 3 then
            f2_local0[30] = 50
            f2_local0[33] = 20
        else
            f2_local0[4] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local5 >= 5 then
            f2_local0[30] = 50
            f2_local0[33] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[8] = 100
            f2_local0[13] = 100
            f2_local0[16] = 100
        else
            f2_local0[4] = 100
            f2_local0[8] = 100
        end
    else
        f2_local0[33] = 20
    end
    if arg1:IsFinishTimer(10) == false then
        f2_local0[25] = 0
    end
    if arg1:IsFinishTimer(3) == false or f2_local5 >= 2 then
        f2_local0[36] = 0
    end
    if f2_local5 <= 1.2 then
        f2_local0[42] = 0
    end
    arg1:SetStringIndexedNumber(" targetDist ", f2_local5)
    arg1:SetStringIndexedNumber(" targetAngle ", arg1:GetToTargetAngle(TARGET_ENE_0))
    arg1:SetStringIndexedNumber(" running ", f2_local8)
    local f2_local10 = arg1:GetRandam_Int(8, 20)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3070, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3024, 5, f2_local0[3], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 60, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3010, 60, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3089, 20, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3015, 20, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3023, 5, f2_local0[16], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3025, 5, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3026, 3, f2_local0[19], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 5010, 45, f2_local0[25], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 5010, 5, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3032, 15, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3033, 15, f2_local0[31], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 3029, 8, f2_local0[35], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 3064, 20, f2_local0[36], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3084, f2_local10, f2_local0[37], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3039, 5, f2_local0[42], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3096, 8, f2_local0[45], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3096, 8, f2_local0[45], 1)
    f2_local0[46] = SetCoolTime(arg1, arg2, 3045, 45, f2_local0[46], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
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
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, arg0.Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, arg0.Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, arg0.Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, arg0.Act49)
    local f2_local11 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f3_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    if not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 3)
    end
    local f3_local7 = 3
    local f3_local8 = 45
    local f3_local9 = 3000
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local9, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3070
    local f4_local1 = 0
    local f4_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3038
    local f5_local8 = 0
    local f5_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 3.5, f5_local8, f5_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3082, TARGET_ENE_0, 3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3083, TARGET_ENE_0, 5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3084, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = 3003
    local f6_local8 = 0
    local f6_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    local f7_local7 = 3004
    local f7_local8 = 0
    local f7_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
    local f7_local10 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, arg0:GetRandam_Float(8, 10))
    f7_local10:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetNumber(5, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 14 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 1.5
    local f8_local7 = 3
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if f8_local0 >= 12 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, 3)
    local f8_local8 = 3005
    local f8_local9 = 0
    local f8_local10 = 0
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 16)
    arg0:SetNumber(5, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f9_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    local f9_local7 = 3006
    local f9_local8 = 0
    local f9_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    arg0:SetNumber(5, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f10_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = 3007
    local f10_local8 = 0
    local f10_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, 9999, f10_local8, f10_local9, 0, 0)
    arg0:SetNumber(5, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 3008
    local f11_local1 = 0
    local f11_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    arg0:SetNumber(5, 9)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 50 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 50 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local2 = 50 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    local f12_local7 = 3009
    local f12_local8 = 0
    local f12_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, 9999, f12_local8, f12_local9, 0, 0)
    arg0:SetNumber(5, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    local f13_local7 = 3010
    local f13_local8 = 0
    local f13_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, 9999, f13_local8, f13_local9, 0, 0)
    arg0:SetNumber(5, 11)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = f14_local0 - 2
    local f14_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f14_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 1.5
    local f14_local7 = 3
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if f14_local0 >= 12 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
    end
    local f14_local8 = 3011
    local f14_local9 = 0
    local f14_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 9999, f14_local9, f14_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3089, TARGET_ENE_0, 3, 0, 0, 0, 0)
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 1.5
    local f16_local7 = 3
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if f16_local0 >= 12 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
    end
    local f16_local8 = 3015
    local f16_local9 = 0
    local f16_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 9999, f16_local9, f16_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local2 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 3
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3016
    local f17_local8 = 0
    local f17_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f17_local8, f17_local9, 0, 0)
    arg0:SetNumber(5, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg0:SetNumber(5, 16)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 14 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f19_local3 = 14 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 1.5
    local f19_local7 = 3
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 16, TARGET_SELF, false, -1)
    local f19_local8 = 3005
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local8, TARGET_ENE_0, 9999, f19_local9, f19_local10, 0, 0)
    arg0:SetNumber(5, 17)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    local f20_local0 = 0
    local f20_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 9, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 9999, f20_local0, f20_local1, 0, 0)
    arg0:SetNumber(5, 18)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f21_local0, f21_local1, 0, 0)
    arg0:SetNumber(5, 19)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f22_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f22_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 1.5
    local f22_local6 = 3
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 3027
    local f22_local8 = 0
    local f22_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 9999, f22_local8, f22_local9, 0, 0)
    arg0:SetNumber(5, 20)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg0:SetEventMoveTarget(1102847)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 2, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f24_local3 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f24_local4 = 100
    local f24_local5 = 0
    local f24_local6 = 1.5
    local f24_local7 = 3
    local f24_local8 = arg0:GetRandam_Int(1, 100)
    if f24_local0 <= 10 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f24_local8 <= 0 then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3014, TARGET_ENE_0, 9999, 0)
    else
        if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
        if f24_local8 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 20000000, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Float(20000, 20000))
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 20000000, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Float(2000, 2000))
        end
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg0:SetNumber(5, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    local f25_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg0:SetNumber(5, 31)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f26_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    f26_local0:TimingSetTimer(3, 25, UPDATE_SUCCESS)
    arg0:SetNumber(5, 32)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_SELF, 2, TARGET_SELF, true, 9910, AI_DIR_TYPE_ToR, 5)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg0:SetNumber(5, 33)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f28_local3 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f28_local4 = 100
    local f28_local5 = 0
    local f28_local6 = 1.5
    local f28_local7 = 3
    local f28_local8 = arg0:GetRandam_Int(1, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if arg0:GetNumber(7) == 0 then
        arg0:SetEventMoveTarget(1102840)
        local f28_local9 = arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 2, TARGET_SELF, false, -1)
        f28_local9 = f28_local9:TimingSetNumber(7, 1, UPDATE_SUCCESS)
        f28_local9:TimingSetTimer(7, 4, UPDATE_SUCCESS)
    elseif arg0:GetNumber(7) == 1 then
        if arg0:IsFinishTimer(7) == false then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, 4)
        end
        local f28_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        f28_local9 = f28_local9:TimingSetNumber(7, 2, UPDATE_SUCCESS)
        f28_local9:TimingSetTimer(8, 15, AI_TIMING_SET__ACTIVATE)
    elseif arg0:GetNumber(7) == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, 10)
    end
    arg0:SetNumber(5, 34)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f29_local0 = 0
    local f29_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3029, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3066, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f30_local0 = 0
    local f30_local1 = 0
    local f30_local2 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3064, TARGET_ENE_0, 9999, f30_local0, f30_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(8, 10))
    if f30_local2 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f31_local0 = 0
    local f31_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3082, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3083, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3084, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act38 = function (arg0, arg1, arg2)
    local f32_local0 = 0
    local f32_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act39 = function (arg0, arg1, arg2)
    local f33_local0 = 0
    local f33_local1 = 0
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(0.3, 0.7), TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(5, 33)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(0.3, 0.7), TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(5, 33)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f36_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f36_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f36_local3 = 100
    local f36_local4 = 0
    local f36_local5 = 1.5
    local f36_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    local f36_local7 = 3
    local f36_local8 = 45
    local f36_local9 = 0
    local f36_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3039, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3043, TARGET_ENE_0, 9999, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f37_local0 = 17
    local f37_local1 = 17
    local f37_local2 = 17
    local f37_local3 = 100
    local f37_local4 = 0
    local f37_local5 = 1.5
    local f37_local6 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    local f37_local7 = 3
    local f37_local8 = 45
    local f37_local9 = 0
    local f37_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3097, TARGET_ENE_0, 9999, f37_local9, f37_local10, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3508000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    local f38_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3041, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3095, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, 15, TARGET_ENE_0, false, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), arg0:GetRandam_Float(14, 20))
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3041, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 31)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    local f39_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f39_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f39_local3 = 100
    local f39_local4 = 0
    local f39_local5 = 1.5
    local f39_local6 = 3
    if not not arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) or arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 3)
    end
    local f39_local7 = 3
    local f39_local8 = 45
    local f39_local9 = 3096
    local f39_local10 = 0
    local f39_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f39_local9, TARGET_ENE_0, 9999, f39_local10, f39_local11, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f40_local0 = 3045
    local f40_local1 = 0
    local f40_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act47 = function (arg0, arg1, arg2)
    local f41_local0 = 3038
    local f41_local1 = 0
    local f41_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f41_local0, TARGET_ENE_0, 9999, f41_local1, f41_local2, 0, 0)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act48 = function (arg0, arg1, arg2)
    local f42_local0 = 3044
    local f42_local1 = 0
    local f42_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f42_local0, TARGET_ENE_0, 9999, f42_local1, f42_local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3082, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3083, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3084, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f43_local0 = 3
    local f43_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f43_local0, TARGET_ENE_0, f43_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f44_local0 = arg0:GetDist(TARGET_ENE_0)
    local f44_local1 = arg0:GetSp(TARGET_SELF)
    local f44_local2 = 20
    local f44_local3 = arg0:GetRandam_Int(1, 100)
    local f44_local4 = -1
    if f44_local2 <= f44_local1 and f44_local3 <= 50 then
        f44_local4 = 9910
    end
    local f44_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f44_local5 = 0
            else
                f44_local5 = 1
            end
        else
            f44_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f44_local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f44_local6 = 3
    local f44_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f44_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f44_local6, TARGET_ENE_0, f44_local5, f44_local7, true, true, f44_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f45_local0 = arg0:GetDist(TARGET_ENE_0)
    local f45_local1 = 3
    local f45_local2 = 0
    local f45_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true then
        if SpaceCheck(arg0, arg1, 180, 4) == true then
            if f45_local0 > 4 then

            else
                f45_local3 = 5211
            end
        end
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f45_local1, f45_local3, TARGET_ENE_0, f45_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f46_local0 = arg0:GetRandam_Float(2, 4)
    local f46_local1 = arg0:GetRandam_Float(1, 3)
    local f46_local2 = arg0:GetDist(TARGET_ENE_0)
    local f46_local3 = -1
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3508520)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3041, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3042, TARGET_ENE_0, 9999, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f48_local0 = arg0:GetDist(TARGET_ENE_0)
    local f48_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f48_local2 = f48_local1 / math.tan(math.deg(30))
    local f48_local3 = arg0:GetRandam_Int(0, 1)
    if f48_local1 >= 3 then
        if f48_local2 + 1 <= f48_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f48_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f48_local2, TARGET_SELF, true, -1)
            end
        elseif f48_local0 <= f48_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f48_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f48_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f48_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f49_local0 = arg0:GetDist(TARGET_ENE_0)
    local f49_local1 = 3
    local f49_local2 = arg0:GetRandam_Int(30, 45)
    local f49_local3 = -1
    local f49_local4 = arg0:GetRandam_Int(0, 1)
    local f49_local5 = arg0:GetRandam_Int(1, 100)
    if f49_local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 2, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Float(8, 10))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 2, TARGET_ENE_0, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Float(8, 10))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f50_local0 = arg1:GetHpRate(TARGET_SELF)
    local f50_local1 = arg1:GetDist(TARGET_ENE_0)
    local f50_local2 = arg1:GetSp(TARGET_SELF)
    local f50_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f50_local4 = arg1:GetRandam_Int(1, 100)
    local f50_local5 = arg1:GetRandam_Int(1, 100)
    local f50_local6 = arg1:GetRandam_Int(1, 100)
    local f50_local7 = arg1:GetNinsatsuNum()
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:GetNumber(8) == 0 then
            if not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 135) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                if f50_local1 >= 12 then
                    if not arg1:HasSpecialEffectId(TARGET_SELF, 3508100) then
                        arg2:ClearSubGoal()
                        arg0.Act17(arg1, arg2, paramTbl)
                        arg1:DeleteObserve(0)
                        arg1:DeleteObserve(1)
                        arg1:DeleteObserve(2)
                        arg1:DeleteObserve(3)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg0.Act18(arg1, arg2, paramTbl)
                        arg1:DeleteObserve(0)
                        arg1:DeleteObserve(1)
                        arg1:DeleteObserve(2)
                        arg1:DeleteObserve(3)
                        return true
                    end
                elseif arg1:IsFinishTimer(4) == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3097, TARGET_ENE_0, 9999, 0)
                    arg1:SetTimer(4, 10)
                    return true
                end
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5029 then
            arg1:AddObserveArea(4, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 5)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and f50_local7 <= 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3090, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5032 then
            if f50_local1 >= 6 and f50_local1 <= 13 and arg1:IsFinishTimer(8) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5034 then
            if f50_local1 >= 6 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 105100 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5039) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20000, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 100401 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3508070) then
                arg2:ClearSubGoal()
                local f50_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20001, TARGET_ENE_0, 9999, 0)
                f50_local8:TimingSetTimer(3, 25, UPDATE_SUCCESS)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 3508071) then
                arg2:ClearSubGoal()
                local f50_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20002, TARGET_ENE_0, 9999, 0)
                f50_local8:TimingSetTimer(3, 25, UPDATE_SUCCESS)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3508080 then
            arg1:SetTimer(3, 25)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3508510 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3018, TARGET_ENE_0, 9999, 0)
            arg1:SetTimer(10, 75)
            arg1:DeleteObserve(3)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3508520 then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 3508520)
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3041, TARGET_ENE_0, 9999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3042, TARGET_ENE_0, 9999, 0, 0)
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 5, 0, 0, 0, 0)
            arg1:DeleteObserve(0)
            return true
        elseif arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:DeleteObserve(1)
            return true
        elseif arg1:IsInsideObserve(4) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3019, TARGET_ENE_0, 9999, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3042, TARGET_ENE_0, 9999, 0)
            arg1:DeleteObserve(4)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) then

    else

    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f51_local0 = arg0:GetHpRate(TARGET_SELF)
    local f51_local1 = arg0:GetDist(TARGET_ENE_0)
    local f51_local2 = arg0:GetSp(TARGET_SELF)
    local f51_local3 = arg0:GetRandam_Int(1, 100)
    local f51_local4 = 0
    if f51_local1 <= 5 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3090, TARGET_ENE_0, 9999, 0, 0)
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f52_local0 = ReturnKengekiSpecialEffect(arg1)
    if f52_local0 == 0 then
        return false
    end
    local f52_local1 = {}
    local f52_local2 = {}
    local f52_local3 = {}
    Common_Clear_Param(f52_local1, f52_local2, f52_local3)
    local f52_local4 = arg1:GetDist(TARGET_ENE_0)
    local f52_local5 = arg1:GetSp(TARGET_SELF)
    local f52_local6 = arg1:GetNumber(0)
    if f52_local5 <= 0 then
        f52_local1[26] = 100
    elseif f52_local0 == 200200 then
        if f52_local4 >= 3 then
            f52_local1[26] = 100
        else
            f52_local1[3] = 100
            f52_local1[35] = 30
            f52_local1[36] = 100
        end
    elseif f52_local0 == 200201 then
        if f52_local4 >= 3 then
            f52_local1[26] = 100
        else
            f52_local1[3] = 100
            f52_local1[35] = 30
            f52_local1[36] = 100
        end
    elseif f52_local0 == 200227 or f52_local0 == 200228 then
        if f52_local4 >= 3 then
            f52_local1[26] = 100
        elseif f52_local4 <= 1.5 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            f52_local1[10] = 200
        else
            f52_local1[30] = 50
        end
    end
    if f52_local4 <= 2 or not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        f52_local1[35] = 0
    end
    if f52_local4 <= 1.2 then
        f52_local1[18] = 0
        f52_local1[35] = 0
    end
    f52_local1[1] = SetCoolTime(arg1, arg2, 3060, 10, f52_local1[1], 1)
    f52_local1[2] = SetCoolTime(arg1, arg2, 3061, 10, f52_local1[2], 1)
    f52_local1[3] = SetCoolTime(arg1, arg2, 3062, 30, f52_local1[3], 1)
    f52_local1[4] = SetCoolTime(arg1, arg2, 3063, 10, f52_local1[4], 1)
    f52_local1[5] = SetCoolTime(arg1, arg2, 3065, 10, f52_local1[5], 1)
    f52_local1[6] = SetCoolTime(arg1, arg2, 3066, 10, f52_local1[6], 1)
    f52_local1[7] = SetCoolTime(arg1, arg2, 3067, 10, f52_local1[7], 1)
    f52_local1[8] = SetCoolTime(arg1, arg2, 3068, 10, f52_local1[8], 1)
    f52_local1[9] = SetCoolTime(arg1, arg2, 3050, 40, f52_local1[9], 1)
    f52_local1[10] = SetCoolTime(arg1, arg2, 3006, 40, f52_local1[10], 1)
    f52_local1[11] = SetCoolTime(arg1, arg2, 3069, 10, f52_local1[11], 1)
    f52_local1[12] = SetCoolTime(arg1, arg2, 3025, 10, f52_local1[12], 1)
    f52_local1[13] = SetCoolTime(arg1, arg2, 3070, 30, f52_local1[13], 1)
    f52_local1[14] = SetCoolTime(arg1, arg2, 3071, 10, f52_local1[14], 1)
    f52_local1[15] = SetCoolTime(arg1, arg2, 3000, 10, f52_local1[15], 1)
    f52_local1[16] = SetCoolTime(arg1, arg2, 3080, 10, f52_local1[16], 1)
    f52_local1[17] = SetCoolTime(arg1, arg2, 3081, 10, f52_local1[17], 1)
    f52_local1[18] = SetCoolTime(arg1, arg2, 3002, 30, f52_local1[18], 1)
    f52_local1[19] = SetCoolTime(arg1, arg2, 3037, 10, f52_local1[19], 1)
    f52_local1[31] = SetCoolTime(arg1, arg2, 3026, 10, f52_local1[31], 1)
    f52_local1[32] = SetCoolTime(arg1, arg2, 3027, 10, f52_local1[32], 1)
    f52_local1[35] = SetCoolTime(arg1, arg2, 3039, 10, f52_local1[35], 1)
    f52_local1[36] = SetCoolTime(arg1, arg2, 3044, 10, f52_local1[36], 1)
    f52_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f52_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f52_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f52_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f52_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f52_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f52_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f52_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f52_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f52_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f52_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f52_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f52_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f52_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f52_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f52_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f52_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f52_local2[18] = REGIST_FUNC(arg1, arg2, arg0.Kengeki18)
    f52_local2[19] = REGIST_FUNC(arg1, arg2, arg0.Kengeki19)
    f52_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f52_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f52_local2[31] = REGIST_FUNC(arg1, arg2, arg0.Kengeki31)
    f52_local2[32] = REGIST_FUNC(arg1, arg2, arg0.Kengeki32)
    f52_local2[33] = REGIST_FUNC(arg1, arg2, arg0.Kengeki33)
    f52_local2[34] = REGIST_FUNC(arg1, arg2, arg0.Kengeki34)
    f52_local2[35] = REGIST_FUNC(arg1, arg2, arg0.Kengeki35)
    f52_local2[36] = REGIST_FUNC(arg1, arg2, arg0.Kengeki36)
    f52_local2[37] = REGIST_FUNC(arg1, arg2, arg0.Kengeki37)
    f52_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f52_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f52_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f52_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f52_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f52_local2[26] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f52_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f52_local1, f52_local2, f52_local7, f52_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3060, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3061, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(4, 1)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3070, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 0)
    arg0:SetNumber(6, 3)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3063, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 4)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3004, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 5)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3066, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 6)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3067, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 7)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3068, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 2, TARGET_ENE_0, false, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Float(8, 10))
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3046, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 8)
    arg0:SetTimer(2, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3050, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 0)
    arg0:SetNumber(6, 9)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    local f62_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 30, 3064, TARGET_ENE_0, 9999, 0, 0)
    arg0:DeleteObserve(0)
    arg0:DeleteObserve(1)
    arg0:DeleteObserve(2)
    arg0:DeleteObserve(4)
    arg0:SetNumber(2, 0)
    arg0:SetNumber(6, 10)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3069, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 11)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3025, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3070, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki14 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3071, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki15 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki16 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3080, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3081, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki18 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 0)
    arg0:SetNumber(6, 12)
    
end

Goal.Kengeki19 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3037, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3091, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 1)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3030, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetTimer(2, 0)
    arg0:SetNumber(6, 31)
    
end

Goal.Kengeki31 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3026, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 31)
    
end

Goal.Kengeki32 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3027, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 32)
    
end

Goal.Kengeki33 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 32)
    
end

Goal.Kengeki34 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3096, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(6, 32)
    
end

Goal.Kengeki35 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3039, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3043, TARGET_ENE_0, 9999, 0)
    arg0:SetNumber(6, 32)
    
end

Goal.Kengeki36 = function (arg0, arg1, arg2)
    local f79_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if f79_local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3044, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3039, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3043, TARGET_ENE_0, 9999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3044, TARGET_ENE_0, 9999, 0)
    end
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Kengeki37 = function (arg0, arg1, arg2)
    local f80_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3044, TARGET_ENE_0, 9999, 0)
    arg0:SetNumber(5, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
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


