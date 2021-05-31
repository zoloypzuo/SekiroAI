RegisterTableGoal(GOAL_MurabitoZombie_hocho_150020_Battle, "GOAL_MurabitoZombie_hocho_150020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_MurabitoZombie_hocho_150020_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 106020)
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[10] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 750
        f2_local0[3] = 150
        f2_local0[10] = 100
    elseif f2_local3 >= 3.2 then
        f2_local0[1] = 0
        f2_local0[2] = 300
        f2_local0[3] = 400
        f2_local0[10] = 150
        f2_local0[30] = 150
    else
        f2_local0[1] = 250
        f2_local0[2] = 0
        f2_local0[3] = 500
        f2_local0[10] = 200
        f2_local0[30] = 50
    end
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1502250) and not arg1:IsInsideTargetRegion(TARGET_SELF, 1502250) then
        f2_local0[36] = 300
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 22, f2_local0[10], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 20000, 10, f2_local0[36], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
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
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f3_local8 = 0
    local f3_local9 = 0
    local f3_local10 = arg0:GetRandam_Int(1, 100)
    if f3_local10 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local8, f3_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local8, f3_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f4_local8 = 0
    local f4_local9 = 0
    local f4_local10 = arg0:GetRandam_Int(1, 100)
    if f4_local10 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local8, f4_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local7, f4_local8, f4_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f6_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f7_local0 = 3
    local f7_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f7_local0, TARGET_ENE_0, f7_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 0
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5202, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5203, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5202, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5203, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetSp(TARGET_SELF)
    local f9_local2 = 20
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    local f9_local4 = -1
    if f9_local2 <= f9_local1 and f9_local3 <= 50 then
        f9_local4 = 9910
    end
    local f9_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f9_local5 = 0
            else
                f9_local5 = 1
            end
        else
            f9_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f9_local5 = 1
    else

    end
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f9_local5)
    local f9_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local6, TARGET_ENE_0, f9_local5, f9_local7, true, true, f9_local4)
    f9_local8:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f10_local0 > 4 then

        else
            f10_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local1, f10_local3, TARGET_ENE_0, f10_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Float(2, 4)
    local f11_local1 = arg0:GetRandam_Float(1, 3)
    local f11_local2 = arg0:GetDist(TARGET_ENE_0)
    local f11_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_ENE_0, true, f11_local3)
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
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f13_local2 = f13_local1 / math.tan(math.deg(30))
    local f13_local3 = arg0:GetRandam_Int(0, 1)
    if f13_local1 >= 3 then
        if f13_local2 + 1 <= f13_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f13_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f13_local2, TARGET_SELF, true, -1)
            end
        elseif f13_local0 <= f13_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f13_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f13_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f13_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 1.5
    local f14_local2 = 1.5
    local f14_local3 = arg0:GetRandam_Int(30, 45)
    local f14_local4 = -1
    local f14_local5 = arg0:GetRandam_Int(0, 1)
    if f14_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local1, TARGET_ENE_0, f14_local5, f14_local3, true, true, f14_local4)
    elseif f14_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 9999
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = arg0:GetRandam_Int(1, 100)
    local f15_local6 = arg0:GetRandam_Float(2.5, 3.5)
    local f15_local7 = arg0:GetRandam_Float(2.5, 3.5)
    local f15_local8 = 3
    if f15_local4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToL), 10)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToR), 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f16_local0 = 3.5
    local f16_local1 = arg0:GetRandam_Int(30, 45)
    local f16_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f16_local2 = 0
            else
                f16_local2 = 1
            end
        else
            f16_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f16_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local0, TARGET_ENE_0, f16_local2, f16_local1, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = arg0:GetRandam_Int(0, 1)
    local f17_local3 = arg0:GetRandam_Float(2, 3.5)
    local f17_local4 = 3
    local f17_local5 = 0
    local f17_local6 = arg0:GetDist(TARGET_FRI_0)
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = arg0:GetRandam_Float(6.5, 7.5)
    local f17_local9 = arg0:GetRandam_Float(5.5, 6.5)
    local f17_local10 = 999
    local f17_local11 = 100
    if f17_local0 >= 10 then
        Approach_Act(arg0, arg1, f17_local8, f17_local10, 0, 3)
    elseif f17_local0 >= 5 then

    elseif f17_local0 >= 3.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f17_local8, TARGET_ENE_0, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    local f17_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local3, TARGET_ENE_0, f17_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    f17_local12:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f18_local0 = -0.5
    arg0:SetEventMoveTarget(1502251)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, f18_local0, POINT_EVENT, false, -1)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetHpRate(TARGET_SELF)
    local f20_local1 = arg0:GetDist(TARGET_ENE_0)
    local f20_local2 = arg0:GetSp(TARGET_SELF)
    local f20_local3 = arg0:GetRandam_Int(1, 100)
    local f20_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then

        elseif arg0:IsTargetGuard(TARGET_SELF) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetHpRate(TARGET_SELF)
    local f21_local1 = arg0:GetDist(TARGET_ENE_0)
    local f21_local2 = arg0:GetSp(TARGET_SELF)
    local f21_local3 = arg0:GetRandam_Int(1, 100)
    local f21_local4 = 0
    if f21_local3 <= 33 then
        arg1:ClearSubGoal()
        local f21_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f21_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f21_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MurabitoZombie_hocho_150020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_MurabitoZombie_hocho_150020_AfterAttackAct, "GOAL_MurabitoZombie_hocho_150020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MurabitoZombie_hocho_150020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetDist(TARGET_ENE_0)
    local f25_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f25_local2 = arg1:GetHpRate(TARGET_SELF)
    local f25_local3 = arg1:GetRandam_Int(1, 100)
    local f25_local4 = arg1:GetRandam_Int(1, 2)
    local f25_local5 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        f25_local5[1] = 100
        f25_local5[2] = 0
        f25_local5[3] = 0
    elseif f25_local0 >= 7 then
        f25_local5[1] = 100
        f25_local5[2] = 0
        f25_local5[3] = 0
    elseif f25_local0 >= 3 then
        f25_local5[1] = 50
        f25_local5[2] = 20
        f25_local5[3] = 30
    else
        f25_local5[1] = 50
        f25_local5[2] = 20
        f25_local5[3] = 30
    end
    local f25_local6 = SelectOddsIndex(arg1, f25_local5)
    if f25_local6 == 1 then

    elseif f25_local6 == 2 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    elseif f25_local6 == 3 then
        if f25_local3 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg1:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToL), 10)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg1:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToR), 10)
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


