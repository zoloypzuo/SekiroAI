RegisterTableGoal(GOAL_NingunOsa_506001_Battle, "GOAL_NingunOsa_506001_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_NingunOsa_506001_Battle, true)
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
    local f2_local5 = arg1:GetSpRate(TARGET_SELF)
    local f2_local6 = arg1:GetDist(TARGET_ENE_0)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local9 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110125)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3506000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3506030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506021)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506080)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506082)
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

    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
        f2_local0[40] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local6 > 7 then
            f2_local0[21] = 1
            f2_local0[30] = 100
        elseif f2_local6 > 5 then
            f2_local0[21] = 1
            f2_local0[30] = 100
        else
            f2_local0[21] = 1
            f2_local0[30] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3506081) then
        if f2_local5 < 0.75 then
            f2_local0[14] = 400
        end
        f2_local0[2] = 100
        f2_local0[6] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 5031) or arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[6] = 100
            f2_local0[9] = 200
        else
            f2_local0[6] = 100
            f2_local0[8] = 200
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        f2_local0[11] = 300
        f2_local0[8] = 100
        f2_local0[9] = 100
    elseif f2_local6 >= 10 then
        f2_local0[2] = 100
        f2_local0[6] = 200
        f2_local0[8] = 100
        f2_local0[9] = 100
    elseif f2_local6 >= 7 then
        f2_local0[2] = 50
        f2_local0[6] = 100
        f2_local0[8] = 100
        f2_local0[9] = 200
    elseif f2_local6 > 3 then
        f2_local0[1] = 250
        f2_local0[4] = 150
        f2_local0[11] = 100
    else
        f2_local0[1] = 100
        f2_local0[4] = 250
        f2_local0[11] = 50
        f2_local0[30] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 9050) then
        f2_local0[9] = f2_local0[9] * 1.5
        f2_local0[11] = f2_local0[11] * 2
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f2_local0[11] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 5) == false and SpaceCheck(arg1, arg2, -45, 5) == false then
        f2_local0[31] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[2], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3064, 15, f2_local0[7], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[6], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3030, 12, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 12, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 4, f2_local0[4], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3031, 5, f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3031, 5, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[11], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3045, 30, f2_local0[14], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
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
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, arg0.Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, arg0.Act50)
    local f2_local10 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 999
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f3_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f3_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    local f3_local9 = arg0:GetRandam_Int(1, 100)
    local f3_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), f3_local7, f3_local8, 0, 0)
    f3_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    f3_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    f3_local10:TimingSetNumber(5, arg0:GetNumber(5) + 7, AI_TIMING_SET__ACTIVATE)
    if f3_local9 <= 50 then
        f3_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
        f3_local10:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    else
        f3_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3063, TARGET_ENE_0, 9999, 0, 0)
        f3_local10:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 999
    local f4_local3 = 30
    local f4_local4 = 0
    local f4_local5 = 1
    local f4_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f4_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f4_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    f4_local9:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 999
    local f5_local3 = 30
    local f5_local4 = 0
    local f5_local5 = 1
    local f5_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f5_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f5_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    local f5_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    f5_local9:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 999
    local f6_local3 = 30
    local f6_local4 = 0
    local f6_local5 = 1
    local f6_local6 = 2
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f6_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f6_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    local f6_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    f6_local9:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 999
    local f7_local3 = 30
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f7_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f7_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    local f7_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), f7_local7, f7_local8, 0, 0)
    f7_local9:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local1 = 10.7 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local2 = 999
    local f8_local3 = 30
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f8_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f8_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), f8_local8, f8_local9, 0, 0)
    f8_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    f8_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 9999, 0)
    f8_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    f8_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    f8_local10:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 999
    local f9_local3 = 30
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f9_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f9_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    local f9_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF), f9_local7, f9_local8, 0, 0)
    f9_local9:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 999
    local f10_local3 = 30
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f10_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f10_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local8 = 0
    local f10_local9 = 0
    local f10_local10 = arg0:GetDist(TARGET_ENE_0)
    local f10_local11 = 3011
    local f10_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local11, TARGET_ENE_0, 9999, f10_local8, f10_local9, 0, 0)
    f10_local12:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    if f10_local7 <= 50 then
        f10_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
        f10_local12:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    else
        f10_local12 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
        f10_local12:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 999
    local f11_local3 = 30
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f11_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f11_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local8 = 0
    local f11_local9 = 0
    local f11_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f11_local8, f11_local9, 0, 0)
    f11_local10:TimingSetNumber(5, arg0:GetNumber(5) + 5, AI_TIMING_SET__ACTIVATE)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f11_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3063, TARGET_ENE_0, 9999, 0, 0)
        f11_local10:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    else
        f11_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
        f11_local10:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5)
    local f12_local3 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5)
    if f12_local2 then
        if f12_local3 then
            if f12_local1 <= 50 then
                f12_local0 = 0
            else
                f12_local0 = 1
            end
        else
            f12_local0 = 0
        end
    elseif f12_local3 then
        f12_local0 = 1
    else
        f12_local0 = 2
    end
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 1.5
    local f12_local7 = 5
    if f12_local0 == 2 then
        local f12_local8 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local9 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local10 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
        Approach_Act_Flex(arg0, arg1, f12_local8, f12_local9, f12_local10, f12_local4, f12_local5, f12_local6, f12_local7)
        local f12_local11 = 0
        local f12_local12 = 0
        local f12_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3047, TARGET_ENE_0, 9999, f12_local11, f12_local12, 0, 0)
        f12_local13:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    elseif f12_local0 == 0 then
        local f12_local8 = arg0:GetRandam_Int(70, 90)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 0, f12_local8, false, true, -1)
        local f12_local9 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local10 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local11 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        Approach_Act_Flex(arg0, arg1, f12_local9, f12_local10, f12_local11, f12_local4, f12_local5, f12_local6, f12_local7)
        local f12_local12 = 0
        local f12_local13 = 0
        local f12_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3046, TARGET_ENE_0, 9999, f12_local12, f12_local13, 0, 0)
        f12_local14:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    else
        local f12_local8 = arg0:GetRandam_Int(70, 90)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, 1, f12_local8, false, true, -1)
        local f12_local9 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local10 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local11 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF)
        Approach_Act_Flex(arg0, arg1, f12_local9, f12_local10, f12_local11, f12_local4, f12_local5, f12_local6, f12_local7)
        local f12_local12 = 0
        local f12_local13 = 0
        local f12_local14 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3046, TARGET_ENE_0, 9999, f12_local12, f12_local13, 0, 0)
        f12_local14:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f13_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local8 = 0
    local f13_local9 = 0
    local f13_local10 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, f13_local8, f13_local9, 0, 0)
    f13_local10:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    local f14_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    f14_local2:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 999
    local f15_local3 = 30
    local f15_local4 = 0
    local f15_local5 = 1.5
    local f15_local6 = 3
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f15_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f15_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 0
    local f15_local8 = 0
    local f15_local9 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f15_local7, f15_local8, 0, 0)
    f15_local9:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 0
    local f16_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f16_local0, f16_local1, 0, 0)
    return 0
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 999
    local f17_local3 = 30
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3506090) then
        f17_local3 = 100
    end
    if arg0:IsFinishTimer(2) == false then
        f17_local3 = 100
    end
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local8 = 0
    local f17_local9 = 0
    local f17_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 4.5 - arg0:GetMapHitRadius(TARGET_SELF), f17_local8, f17_local9, 0, 0)
    f17_local10:TimingSetNumber(5, arg0:GetNumber(5) + 5, AI_TIMING_SET__ACTIVATE)
    f17_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3032, TARGET_ENE_0, 9999, 0, 0)
    f17_local10:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f18_local0, TARGET_ENE_0, f18_local1, -1, GOAL_RESULT_Success, true)
    return 0
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f19_local0 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f19_local0 = 0
            else
                f19_local0 = 1
            end
        else
            f19_local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f19_local0 = 1
    else

    end
    local f19_local1 = 2.5
    if arg2 == nil then
        f19_local1 = 2.5
    else
        f19_local1 = arg2
    end
    local f19_local2 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local1, TARGET_ENE_0, f19_local0, f19_local2, true, true, -1)
    return 0
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f20_local0 = 3
    local f20_local1 = 0
    local f20_local2 = 4.5
    local f20_local3 = arg0:GetRandam_Int(30, 45)
    local f20_local4 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5201, TARGET_ENE_0, f20_local1, AI_DIR_TYPE_B, 0)
    f20_local4:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    f20_local2 = 3.5
    f20_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f20_local4 = 0
            else
                f20_local4 = 1
            end
        else
            f20_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f20_local4 = 1
    else

    end
    return 0
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(2, 4)
    local f21_local1 = arg0:GetRandam_Float(1, 3)
    local f21_local2 = -1
    local f21_local3 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local0, TARGET_ENE_0, f21_local1, TARGET_ENE_0, true, f21_local2)
    f21_local3:SetTargetRange(0, -99, 10)
    arg0:SetTimer(1, 10)
    return 0
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    return 0
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f23_local2 = f23_local1 / math.tan(math.deg(30))
    local f23_local3 = arg0:GetRandam_Int(0, 1)
    arg0:SetNumber(10, f23_local3)
    if f23_local1 >= 3 then
        if f23_local2 + 1 <= f23_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f23_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f23_local2, TARGET_SELF, true, -1)
            end
        elseif f23_local0 <= f23_local2 - 1 then
            local f23_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f23_local2, TARGET_ENE_0, true, -1)
            f23_local4:SetTargetRange(0, -99, 12)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        local f23_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
        f23_local4:SetTargetRange(0, -99, 12)
    end
    local f23_local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f23_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    f23_local4:SetTargetRange(0, -99, 12)
    return 0
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Float(3, 3.5)
    local f24_local2 = arg0:GetRandam_Int(30, 45)
    local f24_local3 = -1
    local f24_local4 = arg0:GetRandam_Int(0, 1)
    if f24_local0 <= 5 then
        if SpaceCheck(arg0, arg1, 180, 1) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, f24_local3)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local4, f24_local2, true, true, f24_local3)
        end
    elseif f24_local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local4, f24_local2, true, true, f24_local3)
    elseif f24_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    return 0
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 3
    local f25_local2 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f25_local2 = 0
            else
                f25_local2 = 1
            end
        else
            f25_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f25_local2 = 1
    else

    end
    local f25_local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f25_local1, 5202 + f25_local2, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    f25_local3:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = -1
    local f26_local3 = 0
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if f26_local1 <= 50 then
                f26_local3 = 0
            else
                f26_local3 = 1
            end
        else
            f26_local3 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f26_local3 = 1
    else

    end
    local f26_local4 = 1.8
    local f26_local5 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f26_local4, TARGET_ENE_0, f26_local3, f26_local5, false, true, f26_local2)
    arg0:SetNumber(10, f26_local3)
    return 0
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = 0
    local f27_local2 = 0
    local f27_local3 = arg0:GetNumber(10)
    if f27_local0 <= 10 then
        if f27_local3 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), f27_local2, f27_local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), f27_local2, f27_local1, 0, 0)
            local f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
            f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
            local f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), f27_local2, f27_local1, 0, 0)
            f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
            f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
            f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 11, AI_TIMING_SET__ACTIVATE)
        end
    elseif f27_local3 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9 - arg0:GetMapHitRadius(TARGET_SELF), f27_local2, f27_local1, 0, 0)
        local f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        local f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), f27_local2, f27_local1, 0, 0)
        f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
        f27_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, f27_local2, f27_local1, 0, 0)
        f27_local4:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f28_local0 = 0
    local f28_local1 = 0
    local f28_local2 = arg0:GetNumber(10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f28_local1, f28_local0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, f28_local1, f28_local0, 0, 0)
    local f28_local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), f28_local1, f28_local0, 0, 0)
    f28_local3:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
    f28_local3 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, f28_local1, f28_local0, 0, 0)
    f28_local3:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f29_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f29_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 6
    local f29_local6 = 10
    local f29_local7 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    local f29_local8 = 0
    local f29_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f29_local8, f29_local9, 0, 0)
    return 0
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f30_local0 = 3
    local f30_local1 = 0
    local f30_local2 = 4.5
    local f30_local3 = arg0:GetRandam_Int(30, 45)
    if SpaceCheck(arg0, arg1, 180, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, 5201, TARGET_ENE_0, f30_local1, AI_DIR_TYPE_B, 0)
        f30_local2 = 3.5
    end
    local f30_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f30_local4 = 0
            else
                f30_local4 = 1
            end
        else
            f30_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f30_local4 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f30_local2, TARGET_ENE_0, f30_local4, f30_local3, true, true, -1)
    return 0
    
end

Goal.Act49 = function (arg0, arg1, arg2)
    local f31_local0 = 0
    local f31_local1 = 0
    if arg0:GetNumber(2) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, f31_local1, f31_local0, 0, 0)
        arg0:SetNumber(2, 1)
    elseif arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f31_local1, f31_local0, 0, 0)
        arg0:SetNumber(2, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 9999, f31_local1, f31_local0, 0, 0)
        arg0:SetNumber(2, 0)
    end
    return 0
    
end

Goal.Act50 = function (arg0, arg1, arg2)
    local f32_local0 = 2.2
    local f32_local1 = 999
    local f32_local2 = 999
    local f32_local3 = 100
    local f32_local4 = 0
    local f32_local5 = 1.5
    local f32_local6 = 3
    Approach_Act_Flex(arg0, arg1, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6)
    local f32_local7 = 0
    local f32_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3041, TARGET_ENE_0, 9999, f32_local7, f32_local8, 0, 0)
    return 0
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetRandam_Int(1, 100)
    local f33_local2 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f33_local3 = arg1:GetSpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) and arg0.Parry(arg1, arg2, 50, 0) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if Interupt_PC_Break(arg1) and f33_local0 <= 8 then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) and arg1:GetTimer(1) <= 17.5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20006, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f33_local2 == 3506080 then
            arg1:SetTimer(1, 20)
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2)
            arg1:Replanning()
            return true
        elseif f33_local2 == 3506000 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
                arg2:ClearSubGoal()
                local f33_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3030, TARGET_ENE_0, 9999, 0, 0)
                f33_local4:TimingSetNumber(5, arg1:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
                return true
            else
                arg2:ClearSubGoal()
                local f33_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, 9999, 0, 0)
                f33_local4:TimingSetNumber(5, arg1:GetNumber(5) + 5, AI_TIMING_SET__ACTIVATE)
                return true
            end
        elseif f33_local2 == 3506082 then
            if arg1:GetNumber(3) >= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20008, TARGET_ENE_0, 9999, 0)
                arg1:DeleteObserve(0)
                return true
            else
                arg1:SetNumber(3, arg1:GetNumber(3) + 1)
                return false
            end
        end
    end
    if Interupt_Use_Item(arg1, 4, 20) then
        if f33_local0 <= 5 then
            arg1:Replanning()
            return true
        elseif f33_local0 <= 10.7 - arg1:GetMapHitRadius(TARGET_SELF) - 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) then
        if arg1:GetSpecialEffectInactivateInterruptType(0) == 110125 then
            arg1:Replanning()
            return true
        elseif arg1:GetSpecialEffectInactivateInterruptType(0) == 110010 then
            arg1:Replanning()
            return true
        end
        return false
    end
    if arg1:IsInterupt(INTERUPT_LoseSightTarget) and arg1:IsActiveGoal(GOAL_COMMON_SidewayMove) then
        if arg1:GetNumber(10) == 0 then
            arg2:ClearSubGoal()
            local f33_local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, arg1:GetRandam_Int(30, 45), true, true, -1)
            f33_local4:SetTargetRange(0, -99, 10)
            return true
        elseif arg1:GetNumber(10) == 1 then
            arg2:ClearSubGoal()
            local f33_local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, arg1:GetRandam_Int(30, 45), true, true, -1)
            f33_local4:SetTargetRange(0, -99, 10)
            return true
        else
            arg1:Replanning()
            return false
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg1:Replanning()
        return false
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = GetDist_Parry(arg0)
    local f34_local2 = arg0:GetRandam_Int(1, 100)
    local f34_local3 = arg0:GetRandam_Int(1, 100)
    local f34_local4 = arg0:GetRandam_Int(1, 100)
    local f34_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f34_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
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
    if arg0:HasSpecialEffectId(TARGET_SELF, 3506080) then
        if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 360, f34_local1) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20007, TARGET_ENE_0, 9999, 0)
            arg0:DeleteObserve(0)
            return true
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f34_local1) then
        if f34_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3103, TARGET_ENE_0, 9999, 0)
            return true
        elseif f34_local5 then
            if arg0:HasSpecialEffectId(TARGET_SELF, 3506070) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3041, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        elseif f34_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 3506070) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    else
        return false
    end
    
end

Goal.ShootReaction = function (arg0, arg1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3506080) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20007, TARGET_ENE_0, 9999, 0)
        return true
    else
        arg1:ClearSubGoal()
        local f35_local0 = arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3103, TARGET_ENE_0, 9999, 0)
        f35_local0:TimingSetTimer(2, 2, AI_TIMING_SET__ACTIVATE)
        return true
    end
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f36_local0 = ReturnKengekiSpecialEffect(arg1)
    if f36_local0 == 0 then
        return false
    end
    local f36_local1 = {}
    local f36_local2 = {}
    local f36_local3 = {}
    Common_Clear_Param(f36_local1, f36_local2, f36_local3)
    local f36_local4 = arg1:GetDist(TARGET_ENE_0)
    local f36_local5 = arg1:GetSp(TARGET_SELF)
    if f36_local0 == 200226 then
        f36_local1[9] = 200
        f36_local1[10] = 100
    elseif f36_local0 == 200210 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        else
            f36_local1[1] = 150
            f36_local1[12] = 300
        end
    elseif f36_local0 == 200211 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        else
            f36_local1[2] = 150
            f36_local1[4] = 300
            f36_local1[8] = 800
            f36_local1[12] = 200
        end
    elseif arg1:GetNumber(5) >= 25 - 3 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        elseif f36_local0 == 200201 or f36_local0 == 200211 or f36_local0 == 200216 then
            f36_local1[8] = 300
            f36_local1[24] = 100
        else
            f36_local1[24] = 100
        end
    elseif f36_local0 == 200200 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        elseif arg1:GetNumber(5) >= 25 then
            f36_local1[1] = 200
            f36_local1[3] = 100
            f36_local1[26] = 100
        else
            f36_local1[1] = 100
            f36_local1[6] = 100
            f36_local1[3] = 100
            f36_local1[26] = 100
        end
    elseif f36_local0 == 200201 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        else
            f36_local1[2] = 100
            f36_local1[7] = 100
            f36_local1[8] = 1500
            f36_local1[26] = 100
        end
    elseif f36_local0 == 200215 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        elseif arg1:GetNumber(5) >= 25 then
            f36_local1[1] = 200
            f36_local1[6] = 200
        else
            f36_local1[1] = 200
            f36_local1[6] = 200
        end
    elseif f36_local0 == 200216 then
        if f36_local4 >= 4 then
            f36_local1[26] = 100
        else
            f36_local1[2] = 100
            f36_local1[7] = 100
            f36_local1[8] = 1500
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200051) == false then
        f36_local1[8] = 0
    end
    f36_local1[1] = SetCoolTime(arg1, arg2, 3061, 2, f36_local1[1], 1)
    f36_local1[2] = SetCoolTime(arg1, arg2, 3066, 2, f36_local1[2], 1)
    f36_local1[3] = SetCoolTime(arg1, arg2, 3064, 5, f36_local1[3], 1)
    f36_local1[3] = SetCoolTime(arg1, arg2, 3010, 5, f36_local1[3], 1)
    f36_local1[4] = SetCoolTime(arg1, arg2, 3068, 12, f36_local1[4], 1)
    f36_local1[5] = SetCoolTime(arg1, arg2, 3063, 5, f36_local1[5], 1)
    f36_local1[6] = SetCoolTime(arg1, arg2, 3060, 2, f36_local1[6], 1)
    f36_local1[7] = SetCoolTime(arg1, arg2, 3065, 2, f36_local1[7], 1)
    f36_local1[8] = SetCoolTime(arg1, arg2, 3069, 25, f36_local1[8], 1)
    f36_local1[12] = SetCoolTime(arg1, arg2, 3030, 12, f36_local1[12], 1)
    f36_local1[12] = SetCoolTime(arg1, arg2, 3007, 12, f36_local1[12], 1)
    f36_local1[12] = SetCoolTime(arg1, arg2, 3005, 4, f36_local1[12], 1)
    f36_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f36_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f36_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f36_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f36_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f36_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f36_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f36_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f36_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f36_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f36_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f36_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f36_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f36_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f36_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f36_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f36_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f36_local2[26] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    f36_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    local f36_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f36_local1, f36_local2, f36_local6, f36_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f37_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    f37_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f38_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3066, TARGET_ENE_0, 9999, 0, 0)
    f38_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f39_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3064, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    f39_local0:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f40_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3068, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    f40_local0:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    f40_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0, 0)
    f40_local0:TimingSetNumber(5, arg0:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f41_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3063, TARGET_ENE_0, 9999, 0, 0)
    f41_local0:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f42_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    f42_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f43_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3065, TARGET_ENE_0, 9999, 0, 0)
    f43_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f44_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3069, TARGET_ENE_0, 9999, 0, 0)
    f44_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f45_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3090, TARGET_ENE_0, 9999, 0, 0)
    f45_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f46_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3091, TARGET_ENE_0, 9999, 0, 0)
    f46_local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f47_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3026, TARGET_ENE_0, 9999, 0, 0)
    f47_local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f48_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3005, TARGET_ENE_0, 9999, 0, 0)
    f48_local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    local f49_local0 = arg0:GetDist(TARGET_ENE_0)
    local f49_local1 = 3
    local f49_local2 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f49_local2 = 0
            else
                f49_local2 = 1
            end
        else
            f49_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f49_local2 = 1
    else

    end
    local f49_local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f49_local1, 5202 + f49_local2, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    f49_local3:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    
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


