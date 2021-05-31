RegisterTableGoal(GOAL_NanbanArmor_113000_Battle, "GOAL_NanbanArmor_113000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_NanbanArmor_113000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = arg0:Kengeki_Activate(arg1, arg2)
    if f2_local0 then
        return 
    end
    f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3113000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3113020)
    arg1:DeleteObserve(1)
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif arg1:GetNumber(0) >= 4 then
        f2_local0[7] = 100
    elseif not arg1:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToB, f2_local5) and arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == true then
        f2_local0[40] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local5 > 7 then
            f2_local0[21] = 100
        elseif f2_local5 > 5 then
            f2_local0[21] = 100
        else
            f2_local0[21] = 100
        end
    elseif not arg1:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToB, f2_local5) and arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == true then
        f2_local0[40] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        f2_local0[3] = 100
    elseif f2_local5 >= 11 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 0
        f2_local0[5] = 100
        f2_local0[6] = 0
    elseif f2_local5 >= 9 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 100
        f2_local0[4] = 0
        f2_local0[5] = 200
        f2_local0[6] = 0
    elseif f2_local5 > 7 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
    elseif f2_local5 > 5 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 0
        f2_local0[5] = 100
    elseif f2_local5 > 3 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 100
        f2_local0[6] = 100
    else
        f2_local0[1] = 50
        f2_local0[2] = 50
        f2_local0[3] = 0
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 200
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[6] = 0
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3007, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[6], 1)
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
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 3003
    local f3_local11 = 6.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = arg0:GetRandam_Int(1, 100)
    if f3_local16 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 9999, f3_local14, f3_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 9999, f3_local14, f3_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local2 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3004
    local f4_local8 = 3005
    local f4_local9 = 3003
    local f4_local10 = 5.85 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 6.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 0
    local f4_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, 9999, f4_local12, f4_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local8, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 7.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local2 = 7.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3007
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = 3008
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 14.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 14.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 14.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7)
    local f7_local7 = 3009
    local f7_local8 = 3010
    local f7_local9 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 9999, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3011
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetTimer(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3094, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3092, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3095, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3093, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 3091
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f13_local0 = 3092
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 1
    local f14_local2 = false
    local f14_local3 = 0.1
    local f14_local4 = arg0:GetEventRequest()
    local f14_local5 = arg0:GetNinsatsuMaxNum()
    local f14_local6 = arg0:GetNinsatsuNum()
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local3, TARGET_ENE_0, f14_local1, TARGET_SELF, f14_local2, -1)
    if f14_local7 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    elseif f14_local7 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    elseif f14_local7 <= 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f15_local0 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f15_local2 = 6.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 1.5
    local f15_local6 = 3
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f16_local0 = 3
    local f16_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f16_local0, TARGET_ENE_0, f16_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetSp(TARGET_SELF)
    local f17_local2 = 20
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = -1
    local f17_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f17_local5 = 0
            else
                f17_local5 = 1
            end
        else
            f17_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f17_local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f17_local6 = 2.5
    local f17_local7 = arg0:GetRandam_Int(30, 45)
    local f17_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local6, TARGET_ENE_0, f17_local5, f17_local7, true, true, f17_local4)
    f17_local8:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
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
    arg0:SetNumber(10, f19_local3)
    if f19_local1 >= 3 then
        if f19_local2 + 1 <= f19_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f19_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f19_local2, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif f19_local0 <= f19_local2 - 1 then
            local f19_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f19_local2, TARGET_ENE_0, true, -1)
            f19_local4:SetTargetRange(0, -99, 12)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        local f19_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
        f19_local4:SetTargetRange(0, -99, 12)
    end
    local f19_local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    f19_local4:SetTargetRange(0, -99, 12)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetHpRate(TARGET_SELF)
    local f20_local1 = arg1:GetDist(TARGET_ENE_0)
    local f20_local2 = arg1:GetSp(TARGET_SELF)
    local f20_local3 = arg1:GetRandam_Int(1, 100)
    local f20_local4 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 3113000 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3113020 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 3, 20000, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            arg1:SetNumber(0, 0)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            arg1:SetNumber(0, 2)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5030 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 3)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 3)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5032 then
            if f20_local1 <= 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3092, TARGET_ENE_0, 9999, 0, 0)
                arg1:SetNumber(1, 0)
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3093, TARGET_ENE_0, 9999, 0, 0)
                arg1:SetNumber(1, 0)
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5033 and f20_local1 >= 4.5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3095, TARGET_ENE_0, 9999, 0, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3010, TARGET_ENE_0, 7.5 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
        arg1:DeleteObserve(1)
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f21_local0 = ReturnKengekiSpecialEffect(arg1)
    if f21_local0 == 0 then
        return false
    end
    local f21_local1 = {}
    local f21_local2 = {}
    local f21_local3 = {}
    Common_Clear_Param(f21_local1, f21_local2, f21_local3)
    local f21_local4 = arg1:GetDist(TARGET_ENE_0)
    local f21_local5 = arg1:GetSp(TARGET_SELF)
    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
    if f21_local0 == 200200 then
        if arg1:GetNumber(0) >= 4 then
            f21_local1[50] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f21_local1[3] = 100
            f21_local1[5] = 100
        else
            f21_local1[3] = 100
        end
    elseif f21_local0 == 200201 then
        if arg1:GetNumber(0) >= 4 then
            f21_local1[50] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f21_local1[4] = 100
            f21_local1[5] = 100
        else
            f21_local1[4] = 100
        end
    end
    if arg1:IsFinishTimer(0) == false then
        f21_local1[5] = 0
    end
    f21_local1[3] = SetCoolTime(arg1, arg2, 3060, 15, f21_local1[3], 1)
    f21_local1[4] = SetCoolTime(arg1, arg2, 3065, 20, f21_local1[4], 1)
    f21_local1[5] = SetCoolTime(arg1, arg2, 3006, 8, f21_local1[5], 1)
    f21_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f21_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f21_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f21_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f21_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f21_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f21_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f21_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f21_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f21_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Kengeki_Activate(arg1, arg2, f21_local1, f21_local2, f21_local6, f21_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    if arg0:GetNumber(2) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3090, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg0:SetNumber(2, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3094, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    end
    arg0:SetNumber(0, arg0:GetNumber(0) - 5)
    arg0:SetNumber(1, 1)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    if f26_local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    end
    arg0:SetTimer(0, 5)
    
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

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


