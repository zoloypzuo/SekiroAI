RegisterTableGoal(GOAL_Ochimusha_hinawaju_101030_Battle, "GOAL_Ochimusha_hinawaju_101030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Ochimusha_hinawaju_101030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 5)
    arg1:SetStringIndexedNumber("Dist_Step_Large", 5)
    arg1:SetStringIndexedNumber("KengekiID", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200200)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200201)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200205)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200206)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200210)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200211)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200215)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200216)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 3101540) then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 10
        else
            f2_local0[28] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3101020) then
        f2_local0[1] = 30
        f2_local0[4] = 70
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[20] = 10
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 10
        else
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[20] = 10
        end
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110040) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110041) then
        f2_local0[5] = 90
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
        f2_local0[21] = 10
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310050) then
        f2_local0[1] = 10
    elseif f2_local5 >= 15 then
        if arg1:GetNumber(0) == 0 then
            f2_local0[1] = 10
            f2_local0[4] = 90
        elseif arg1:GetNumber(0) == 1 then
            f2_local0[1] = 20
            f2_local0[4] = 80
        elseif arg1:GetNumber(0) == 2 then
            f2_local0[1] = 50
            f2_local0[4] = 50
        elseif arg1:GetNumber(0) >= 3 then
            f2_local0[1] = 100
            f2_local0[4] = 0
        end
    elseif f2_local5 >= 7 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 0
    elseif f2_local5 >= 5 then
        f2_local0[1] = 50
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[26] = 50
    elseif f2_local5 >= 2 then
        f2_local0[1] = 1
        f2_local0[2] = 5
        f2_local0[3] = 5
        f2_local0[26] = 80
        if SpaceCheck(arg1, arg2, 180, 1) == false then
            f2_local0[1] = 50
        end
    else
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[26] = 80
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3101020) then
        f2_local0[26] = 0
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
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 3
    if f3_local1 < f3_local0 and not arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    end
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 9999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 0
    local f3_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3002
    local f4_local1 = 0
    local f4_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3003
    local f5_local1 = 0
    local f5_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, 9999, f5_local1, f5_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 1.5
    local f6_local7 = 3
    if f6_local1 < f6_local0 and not arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    end
    local f6_local8 = 3004
    local f6_local9 = 3001
    local f6_local10 = 9999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local11 = 0
    local f6_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local8, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, arg0:GetNumber(0) + 1)
    if arg0:GetNumber(0) == 4 then
        arg0:SetNumber(0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local3 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 1.5
    local f7_local7 = 3
    if f7_local1 < f7_local0 and not arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    end
    local f7_local8 = 3005
    local f7_local9 = 3001
    local f7_local10 = 9999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local11 = 0
    local f7_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f9_local0 = 3
    local f9_local1 = 45
    if arg0:IsTargetGuard(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, 9910, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, -1, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odd
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 0
    local f10_local2 = 3
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5202, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_L, f10_local2)
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5203, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_R, f10_local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetSp(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = arg0:GetRandam_Int(1, 100)
    local f11_local3 = -1
    local f11_local4 = 0
    if f11_local1 <= f11_local0 and f11_local2 <= 100 then
        f11_local3 = 9910
    end
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f11_local4 = 1
            else
                f11_local4 = 0
            end
        else
            f11_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f11_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f11_local5 = 1.8
    local f11_local6 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local5, TARGET_ENE_0, f11_local4, f11_local6, true, true, f11_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3
    local f12_local2 = 0
    local f12_local3 = 2
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local1, 5201, TARGET_ENE_0, f12_local2, AI_DIR_TYPE_B, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Float(3, 5)
    local f13_local1 = 5
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local0, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f15_local2 = f15_local1 / math.tan(math.deg(30))
    local f15_local3 = arg0:GetRandam_Int(0, 1)
    arg0:SetNumber(10, f15_local3)
    if f15_local1 >= 3 then
        if f15_local2 + 1 <= f15_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f15_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f15_local2, TARGET_SELF, true, -1)
            end
        elseif f15_local0 <= f15_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f15_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    local f15_local4 = 3000
    local f15_local5 = 3001
    local f15_local6 = 9999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local7 = 0
    local f15_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local4, TARGET_ENE_0, f15_local6, f15_local7, f15_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local5, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local3 = 40 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 1.5
    local f16_local7 = 3
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    local f16_local8 = 3000
    local f16_local9 = 3001
    local f16_local10 = 9999 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local11 = 0
    local f16_local12 = 0
    if f16_local0 <= 5 then
        if SpaceCheck(arg0, arg1, 180, 4) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5211, TARGET_ENE_0, 0, 0, AI_DIR_TYPE_B, 4)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local8, TARGET_ENE_0, f16_local10, f16_local11, f16_local12, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local9, TARGET_ENE_0, 9999, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local8, TARGET_ENE_0, f16_local10, f16_local11, f16_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local9, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f17_local0 = 3.5
    local f17_local1 = arg0:GetRandam_Int(30, 45)
    local f17_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f17_local2 = 0
            else
                f17_local2 = 1
            end
        else
            f17_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f17_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, TARGET_ENE_0, f17_local2, f17_local1, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetHpRate(TARGET_SELF)
    local f18_local1 = arg1:GetDist(TARGET_ENE_0)
    local f18_local2 = arg1:GetSp(TARGET_SELF)
    local f18_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then

    else

    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, PC_ATTACK_DIST_CROUCH) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, PC_ATTACK_DIST_THRUST) then
                if arg0:IsTargetGuard(TARGET_SELF) then
                    return false
                else
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                    return true
                end
            end
        elseif f19_local0 <= 2 and f19_local1 <= 30 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


