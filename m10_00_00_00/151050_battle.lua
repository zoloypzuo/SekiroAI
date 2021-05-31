RegisterTableGoal(GOAL_MurabitoZombie_hataoriki_genkaku_151050_Battle, "GOAL_MurabitoZombie_hataoriki_genkaku_151050_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_MurabitoZombie_hataoriki_genkaku_151050_Battle, true)
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
    local f2_local5 = arg1:GetDist(TARGET_EVENT)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110124)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        KankyakuAct(arg1, arg2, 0)
    elseif Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110124) == true then
        f2_local0[35] = 1000
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 7 then
            f2_local0[1] = 400
            f2_local0[28] = 600
            f2_local0[29] = 0
        elseif f2_local3 >= 4 then
            f2_local0[1] = 500
            f2_local0[28] = 300
            f2_local0[29] = 200
        else
            f2_local0[1] = 600
            f2_local0[28] = 200
            f2_local0[29] = 200
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 7 then
            f2_local0[1] = 500
            f2_local0[28] = 500
            f2_local0[29] = 0
        elseif f2_local3 >= 4 then
            f2_local0[1] = 600
            f2_local0[28] = 200
            f2_local0[29] = 200
        else
            f2_local0[1] = 700
            f2_local0[28] = 150
            f2_local0[29] = 150
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 8 then
        f2_local0[1] = 1000
    elseif f2_local3 >= 4 then
        f2_local0[1] = 600
        f2_local0[23] = 400
    else
        f2_local0[1] = 1000
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
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f3_local1 = f3_local0
    local f3_local2 = f3_local0 + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f3_local8 = 0
    local f3_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local8, f3_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f4_local0 = 3
    local f4_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f4_local0, TARGET_ENE_0, f4_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f5_local0 = 3
    local f5_local1 = 0
    local f5_local2 = arg0:GetDist(TARGET_FRI_0)
    local f5_local3 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true and f5_local2 >= 2.5 then
        if f5_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5212, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5213, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -45, 2) == true and f5_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5212, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 45, 2) == true and f5_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5213, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true then
        if f5_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5212, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5213, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_R, 0)
        end
    elseif SpaceCheck(arg0, arg1, -45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5212, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local0, 5213, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetDist(TARGET_FRI_0)
    local f6_local2 = arg0:GetSp(TARGET_SELF)
    local f6_local3 = 20
    local f6_local4 = arg0:GetRandam_Int(1, 100)
    local f6_local5 = -1
    local f6_local6 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -90, 1) == true and f6_local1 <= 2.5 then
        f6_local6 = 0
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 90, 1) == true and f6_local1 <= 2.5 then
        f6_local6 = 1
    end
    local f6_local7 = 3
    local f6_local8 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f6_local6)
    local f6_local9 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f6_local7, TARGET_ENE_0, f6_local6, f6_local8, true, true, f6_local5)
    f6_local9:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3
    local f7_local2 = 0
    local f7_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f7_local0 > 4 then

        else
            f7_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f7_local1, f7_local3, TARGET_ENE_0, f7_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Float(2, 4)
    local f8_local1 = arg0:GetRandam_Float(1, 3)
    local f8_local2 = arg0:GetDist(TARGET_ENE_0)
    local f8_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f8_local0, TARGET_ENE_0, f8_local1, TARGET_ENE_0, true, f8_local3)
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
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f10_local2 = f10_local1 / math.tan(math.deg(30))
    local f10_local3 = arg0:GetRandam_Int(0, 1)
    if f10_local1 >= 3 then
        if f10_local2 + 1 <= f10_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f10_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f10_local2, TARGET_SELF, true, -1)
            end
        elseif f10_local0 <= f10_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f10_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f10_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f10_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Float(1, 3.5)
    local f11_local2 = 1.5
    local f11_local3 = arg0:GetRandam_Int(30, 45)
    local f11_local4 = -1
    local f11_local5 = arg0:GetRandam_Int(0, 1)
    if f11_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local1, TARGET_ENE_0, f11_local5, f11_local3, true, true, f11_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local2, TARGET_ENE_0, 7.9, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 7
    local f12_local2 = 0
    local f12_local3 = arg0:GetRandam_Float(1, 3.5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local3, TARGET_ENE_0, f12_local1, TARGET_ENE_0, true, -1)
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = arg0:GetRandam_Int(0, 1)
    local f13_local3 = arg0:GetRandam_Float(2, 3.5)
    local f13_local4 = 3
    local f13_local5 = 0
    local f13_local6 = arg0:GetDist(TARGET_FRI_0)
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    local f13_local8 = arg0:GetRandam_Float(6.5, 7.5)
    local f13_local9 = arg0:GetRandam_Float(5.5, 6.5)
    local f13_local10 = 999
    local f13_local11 = 100
    if f13_local0 >= 10 then
        Approach_Act(arg0, arg1, f13_local8, f13_local10, 0, 3)
    elseif f13_local0 >= 5 then

    elseif f13_local0 >= 3.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f13_local8, TARGET_ENE_0, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    local f13_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local3, TARGET_ENE_0, f13_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    f13_local12:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f14_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 110124 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return false
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetHpRate(TARGET_SELF)
    local f15_local1 = arg0:GetDist(TARGET_ENE_0)
    local f15_local2 = arg0:GetSp(TARGET_SELF)
    local f15_local3 = arg0:GetRandam_Int(1, 100)
    local f15_local4 = 0
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
    local f16_local0 = arg0:GetHpRate(TARGET_SELF)
    local f16_local1 = arg0:GetDist(TARGET_ENE_0)
    local f16_local2 = arg0:GetSp(TARGET_SELF)
    local f16_local3 = arg0:GetRandam_Int(1, 100)
    local f16_local4 = 0
    if f16_local3 <= 33 then
        arg1:ClearSubGoal()
        local f16_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f16_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f16_local3 <= 67 then

    else

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


