RegisterTableGoal(GOAL_Yamori_110000_Battle, "GOAL_Yamori_110000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Yamori_110000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = 300
    local f2_local9 = 4
    local f2_local10 = 60
    local f2_local11 = 6.8 - arg1:GetMapHitRadius(TARGET_SELF)
    arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, f2_local8, f2_local9)
    arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f2_local10, f2_local11)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200060) == true then
        f2_local0[8] = 999
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:HasSpecialEffectId(TARGET_SELF, 5450) == true then
        f2_local0[26] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true then
        f2_local0[1] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) == true then
        f2_local0[2] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) == true then
        f2_local0[3] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg1:GetNumber(0) == 0 then
            f2_local0[7] = 100
        else
            f2_local0[34] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[6] = 100
        f2_local0[26] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local5 > 7 then
            f2_local0[21] = 100
        elseif f2_local5 > 5 then
            f2_local0[21] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:IsFinishTimer(0) == true then
        f2_local0[7] = 10000
        f2_local0[8] = 10
        f2_local0[33] = 50
    elseif f2_local5 >= 11 then
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[33] = 50
    elseif f2_local5 >= 5 then
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[33] = 100
    elseif f2_local5 > 3 then
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[33] = 100
    else
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[8] = 100
        f2_local0[33] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
            f2_local0[7] = 100
        else
            f2_local0[7] = 0
            f2_local0[8] = 100
        end
    end
    if SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false and SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[8] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[8], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    local f2_local12 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetRandam_Float(0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, f3_local0, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetRandam_Float(0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, f4_local0, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetRandam_Float(0, 2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, f5_local0, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f6_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3020
    local f6_local8 = 0
    local f6_local9 = 0
    local f6_local10 = arg0:GetRandam_Int(1, 100)
    local f6_local11 = 360
    local f6_local12 = 2
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, f6_local11, f6_local12)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f7_local0 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local2 = 6.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    local f7_local9 = arg0:GetRandam_Int(1, 100)
    arg0:DeleteObserve(0)
    arg0:DeleteObserve(1)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    end
    arg0:SetTimer(0, 5)
    if arg0:HasSpecialEffectId(TARGET_SELF, 220020) then
        arg0:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f8_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3021
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = arg0:GetRandam_Int(1, 100)
    arg0:DeleteObserve(0)
    arg0:DeleteObserve(1)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, 9999, f8_local8, f8_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f9_local0 = 3
    local f9_local1 = 45
    arg0:DeleteObserve(1)
    arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, -1, GOAL_RESULT_Success, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Float(5, 8)
    arg1:AddSubGoal(GOAL_COMMON_Wait, f10_local0, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f11_local0 = 0
    local f11_local1 = 0
    local f11_local2 = arg0:GetRandam_Int(1, 100)
    local f11_local3 = arg0:GetRandam_Int(1, 100)
    local f11_local4 = arg0:GetRandam_Float(0.5, 1.5)
    local f11_local5 = arg0:GetRandam_Float(0.5, 1.5)
    local f11_local6 = 3031
    local f11_local7 = 3032
    arg0:DeleteObserve(1)
    if f11_local2 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f11_local4, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 10)
        if f11_local3 <= 33 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local6, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
        elseif f11_local3 <= 66 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f11_local4, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 10)
        end
        arg1:AddSubGoal(GOAL_COMMON_Wait, f11_local5, TARGET_NONE, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f11_local4, TARGET_ENE_0, 0, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 10)
        if f11_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local6, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_Wait, f11_local5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f12_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3031
    local f12_local8 = 3032
    local f12_local9 = 0
    local f12_local10 = 0
    local f12_local11 = arg0:GetRandam_Int(1, 100)
    if f12_local11 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, 9999, f12_local9, f12_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, TARGET_ENE_0, 9999, f12_local9, f12_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 9999
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = arg0:GetRandam_Int(2, 5)
    local f13_local5 = arg0:GetRandam_Int(1, 100)
    local f13_local6 = arg0:GetRandam_Float(1.5, 2.5)
    local f13_local7 = arg0:GetRandam_Float(1.5, 2)
    local f13_local8 = 3
    local f13_local9 = 3031
    local f13_local10 = 3032
    arg0:DeleteObserve(1)
    if f13_local5 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f13_local6, TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 10)
        arg1:AddSubGoal(GOAL_COMMON_Wait, f13_local7, TARGET_NONE, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f13_local6, TARGET_ENE_0, 5, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 10)
        arg1:AddSubGoal(GOAL_COMMON_Wait, f13_local7, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f14_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f14_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 3
    local f14_local7 = 3031
    local f14_local8 = 3032
    local f14_local9 = 3030
    local f14_local10 = 0
    local f14_local11 = 0
    local f14_local12 = arg0:GetRandam_Int(1, 100)
    local f14_local13 = arg0:GetRandam_Int(1, 100)
    if f14_local12 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, f14_local10, f14_local11, 0, 0)
    elseif f14_local12 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, f14_local10, f14_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, f14_local10, f14_local11, 0, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220020) then
        arg0:SetNumber(0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = arg1:GetHpRate(TARGET_SELF)
    local f15_local1 = arg1:GetDist(TARGET_ENE_0)
    local f15_local2 = arg1:GetSp(TARGET_SELF)
    local f15_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 5026) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5027) or arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1.5, 3030, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 2.5, 3006, TARGET_ENE_0, 9999, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 2.5, 3005, TARGET_ENE_0, 9999, 0, 0)
            end
            return true
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


