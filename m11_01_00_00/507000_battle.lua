RegisterTableGoal(GOAL_Fukuro_506000_Battle, "GOAL_Fukuro_506000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Fukuro_506000_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3507000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3507001)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3507002)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:GetEventRequest(1)
    if f2_local6 == 20 then
        f2_local0[20] = 100
    elseif f2_local5 == 10 then
        if arg1:GetNumber(15) == 1 then
            f2_local0[11] = 100
        elseif f2_local3 >= 12 then
            f2_local0[5] = 50
            f2_local0[7] = 0
            f2_local0[8] = 100
            f2_local0[9] = 100
            f2_local0[12] = 0
        elseif f2_local3 >= 8 then
            f2_local0[5] = 100
            f2_local0[7] = 0
            f2_local0[8] = 100
            f2_local0[9] = 100
            f2_local0[12] = 200
        elseif f2_local3 >= 4 then
            f2_local0[5] = 50
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 200
        else
            f2_local0[5] = 50
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[12] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3507010) then
        f2_local0[10] = 500
    else
        f2_local0[10] = 100
        f2_local0[31] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[13], 1)
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
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 0
    local f3_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local0, f3_local1, 0, 0)
    return 0
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 0
    local f4_local1 = 0
    local f4_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
    f4_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
    return 0
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    local f5_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    f5_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    return 0
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    local f6_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    f6_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    return 0
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    if arg0:GetNumber(1) == 1 then
        if arg0:GetNumber(0) == 1 then
            local f7_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
            f7_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        else
            local f7_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
            f7_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        end
    end
    local f7_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    f7_local2 = f7_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f7_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    return 0
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    local f8_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f8_local0, f8_local1, 0, 0)
    f8_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f8_local0, f8_local1, 0, 0)
    return 0
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    if arg0:GetNumber(1) == 1 then
        if arg0:GetNumber(0) == 1 then
            local f9_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
            f9_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        else
            local f9_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
            f9_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        end
    end
    local f9_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
    f9_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = 0
    if arg0:GetNumber(1) == 1 then
        if arg0:GetNumber(0) == 1 then
            local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
            f10_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        else
            local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
            f10_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        end
    end
    local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
    f10_local2 = f10_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f10_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
    return 0
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 0
    local f11_local1 = 0
    if arg0:GetNumber(1) == 1 then
        if arg0:GetNumber(0) == 1 then
            local f11_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
            f11_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        else
            local f11_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
            f11_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        end
    end
    local f11_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
    f11_local2 = f11_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f11_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
    return 0
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Float(1, 2)
    local f12_local1 = arg0:GetNumber(0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3507010) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, turnTime, frontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 5)
        local f12_local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f12_local0, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 20)
        f12_local2:TimingSetNumber(0, 2, AI_TIMING_SET__ACTIVATE)
    elseif f12_local1 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_SELF, 2, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 5)
        local f12_local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f12_local0, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 20)
        f12_local2:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
    elseif f12_local1 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 5)
        local f12_local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f12_local0, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 20)
        f12_local2:TimingSetNumber(0, 2, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.1, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3046, TARGET_ENE_0, 9999, turnTime, frontAngle, 0, 0)
        local f12_local2 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f12_local0, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 20)
        f12_local2:TimingSetNumber(0, 2, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 0
    local f13_local1 = 0
    local f13_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f13_local0, f13_local1, 0, 0)
    f13_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f13_local0, f13_local1, 0, 0)
    return 0
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    if arg0:GetNumber(1) == 1 then
        if arg0:GetNumber(0) == 1 then
            local f14_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
            f14_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        else
            local f14_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
            f14_local2:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
        end
    end
    local f14_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    f14_local2 = f14_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    f14_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    return 0
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = 0
    local f15_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, f15_local0, f15_local1, 0, 0)
    f15_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f15_local0, f15_local1, 0, 0)
    return 0
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 0
    local f16_local1 = 0
    local f16_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 9999, f16_local0, f16_local1, 0, 0)
    f16_local2:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f16_local0, f16_local1, 0, 0)
    return 0
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = 0
    local f17_local2 = arg0:GetNumber(0)
    if f17_local2 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f17_local0, f17_local1, 0, 0)
    elseif f17_local2 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f17_local0, f17_local1, 0, 0)
    end
    local f17_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3047, TARGET_ENE_0, 9999, f17_local0, f17_local1, 0, 0)
    f17_local3:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f18_local0 = 0
    local f18_local1 = 0
    local f18_local2 = arg0:GetNumber(0)
    if f18_local2 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3043, TARGET_ENE_0, 9999, f18_local0, f18_local1, 0, 0)
    elseif f18_local2 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3046, TARGET_ENE_0, 9999, f18_local0, f18_local1, 0, 0)
    end
    local f18_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3048, TARGET_ENE_0, 9999, f18_local0, f18_local1, 0, 0)
    f18_local3:TimingSetNumber(0, 2, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    return 0
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    return 0
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = 0
    local f21_local2 = arg0:GetNumber(0)
    local f21_local3 = 7.5
    if f21_local2 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, f21_local3, TARGET_SELF, true, -1)
        local f21_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3043, TARGET_ENE_0, 9999, f21_local0, f21_local1, 0, 0)
        f21_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 20)
        arg0:SetNumber(0, 2)
    elseif f21_local2 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, f21_local3, TARGET_SELF, false, -1)
        local f21_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f21_local0, f21_local1, 0, 0)
        f21_local4:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, true, -1, AI_DIR_TYPE_F, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 20)
        arg0:SetNumber(0, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    end
    return 0
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_EventRequest) then
        local f22_local1 = arg1:GetEventRequest()
        if f22_local1 == 10 or f22_local1 == 20 then
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f22_local1 = arg1:GetRandam_Int(1, 100)
        local f22_local2 = arg1:GetDist(TARGET_ENE_0)
        if f22_local0 == 3507002 then
            arg1:SetEventFlag(11005933, true)
            return false
        elseif f22_local0 == 3507000 then
            if f22_local1 <= 50 then
                arg1:SetEventFlag(11005933, true)
            end
            return false
        elseif f22_local0 == 3507001 then
            if f22_local2 <= 15 and f22_local1 <= 50 then
                arg1:SetEventFlag(11005933, true)
            end
            return false
        end
    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


