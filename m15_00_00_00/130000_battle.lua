RegisterTableGoal(GOAL_Innsmouth_130000_Battle, "GOAL_Innsmouth_130000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Innsmouth_130000_Battle, true)
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
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    arg1:DeleteObserve(3)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3130000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 9620)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        f2_local0[5] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        f2_local0[2] = 10000
    elseif Common_ActivateAct(arg1, arg2, 1) then

    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if not arg1:IsVisibleTarget(TARGET_ENE_0) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3130000) then
                if arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
                    f2_local0[27] = 100
                elseif 3 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
                    f2_local0[10] = 100
                    f2_local0[28] = 1
                else
                    f2_local0[11] = 100
                    f2_local0[28] = 1
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 9620) then
                f2_local0[27] = 100
            elseif f2_local5 >= 4 then
                f2_local0[29] = 100
            else
                f2_local0[26] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 3130000) then
            if arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
                f2_local0[27] = 100
            elseif 3 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
                f2_local0[10] = 100
                f2_local0[28] = 1
            else
                f2_local0[11] = 100
                f2_local0[28] = 1
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 9620) then
            if f2_local5 >= 1 then
                f2_local0[3] = 100
            else
                f2_local0[2] = 500
                f2_local0[3] = 100
            end
        elseif f2_local5 >= 1 then
            f2_local0[1] = 100
        else
            f2_local0[1] = 100
            f2_local0[2] = 10000
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            KankyakuAct(arg1, arg2)
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            TorimakiAct(arg1, arg2, -1, 0)
        elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
            f2_local0[27] = 100
        elseif f2_local5 >= 10 then
            f2_local0[5] = 100
            f2_local0[27] = 100
        elseif f2_local5 >= 6 then
            f2_local0[5] = 200
            f2_local0[4] = 200
            f2_local0[27] = 100
        else
            f2_local0[2] = 100
            f2_local0[4] = 200
        end
    else
        f2_local0[26] = 100
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[4], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[10], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[11], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 45 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 45 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    local f3_local9 = 90
    local f3_local10 = 45 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f3_local9, f3_local10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), f3_local7, f3_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 45 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 0
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 10
    local f5_local1 = 10
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0 + 5, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = arg0:GetRandam_Float(1, 2.5)
    local f7_local8 = 90
    local f7_local9 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + f7_local7
    arg0:AddObserveArea(3, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f7_local8, f7_local9)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 999, f7_local10, f7_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f8_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 90
    local f8_local8 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f8_local7, f8_local8)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f9_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local8 = 0
    local f9_local9 = 0
    local f9_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, TARGET_ENE_0, f10_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f12_local2 = f12_local1 / math.tan(math.deg(30))
    local f12_local3 = arg0:GetRandam_Int(0, 1)
    local f12_local4 = arg0:GetRandam_Int(1, 100)
    local f12_local5 = arg0:GetRandam_Float(3, 5)
    arg0:SetNumber(10, f12_local3)
    if f12_local1 >= 3 then
        if f12_local2 + 1 <= f12_local0 then
            if SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f12_local2, TARGET_SELF, true, -1)
            end
        elseif f12_local0 <= f12_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f12_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f12_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    if f12_local4 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, f12_local5, TARGET_ENE_0, 0, 0, 0)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 1.7 - arg0:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 1.5
    local f13_local2 = 1.5
    local f13_local3 = arg0:GetRandam_Int(30, 45)
    local f13_local4 = -1
    local f13_local5 = 0
    local f13_local6 = arg0:GetRandam_Int(1, 100)
    local f13_local7 = 4
    if f13_local0 <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local2, TARGET_ENE_0, 6, TARGET_ENE_0, true, f13_local4)
    elseif f13_local0 <= f13_local7 then
        if f13_local6 <= 30 then
            if SpaceCheck(arg0, arg1, -90, 1) == true then
                if SpaceCheck(arg0, arg1, 90, 1) == true then
                    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                        f13_local5 = 1
                    else
                        f13_local5 = 0
                    end
                else
                    f13_local5 = 0
                end
            elseif SpaceCheck(arg0, arg1, 90, 1) == true then
                f13_local5 = 1
            else

            end
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local1, TARGET_ENE_0, f13_local5, f13_local3, true, true, -1)
        elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 1), TARGET_SELF, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local2, TARGET_ENE_0, f13_local7, TARGET_SELF, true, -1)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 1.7 - arg0:GetMapHitRadius(TARGET_SELF))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f15_local3 == 9620 and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3003, TARGET_ENE_0, 9999, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.5, 3008, TARGET_ENE_0, 9999, 0)
            arg1:DeleteObserve(1)
            return true
        elseif arg1:IsInsideObserve(2) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.5, 3004, TARGET_ENE_0, 9999, 0)
            arg1:DeleteObserve(2)
            return true
        elseif arg1:IsInsideObserve(3) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.5, 3016, TARGET_ENE_0, 9999, 0)
            arg1:DeleteObserve(3)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and not arg1:HasSpecialEffectId(TARGET_SELF, 3130000) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 9620) and arg1:HasSpecialEffectId(TARGET_SELF, 3130030) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3002, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_LoseSightTarget) and not arg1:HasSpecialEffectId(TARGET_SELF, 3130000) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 9620) and arg1:HasSpecialEffectId(TARGET_SELF, 3130030) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3002, TARGET_ENE_0, 9999, 0)
        return true
    else

    end
    return false
    
end

Goal.NoAction = function (arg0, arg1, arg2)
    arg0:Replanning()
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


