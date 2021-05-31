RegisterTableGoal(GOAL_Tokugawazamurai_kaenhoushaki_170020_Battle, "GOAL_Tokugawazamurai_kaenhoushaki_170020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Tokugawazamurai_kaenhoushaki_170020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg1:DeleteObserve(0)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110015) then
        f2_local0[24] = 10000
        f2_local0[23] = 100
        f2_local0[26] = 1
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_REVIVAL_AFTER_1) or arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_REVIVAL_AFTER_2) then
        TorimakiAct(arg1, arg2, 0, 0)
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            TorimakiAct(arg1, arg2, 0, 0)
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3170200) then
        f2_local0[3] = 100
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if arg1:IsVisibleTarget(TARGET_ENE_0) and f2_local3 <= 8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
                f2_local0[1] = 100
            else
                f2_local0[2] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            KankyakuAct(arg1, arg2)
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            TorimakiAct(arg1, arg2, -1, 0)
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false then
        if f2_local3 >= 12 then
            f2_local0[28] = 100
        elseif f2_local3 >= 6 then
            f2_local0[2] = 100
        elseif f2_local3 >= 2 then
            f2_local0[2] = 100
        elseif arg1:GetNumber(4) == 1 then
            f2_local0[10] = 100
            f2_local0[25] = 50
        elseif arg1:GetNumber(4) == 0 then
            f2_local0[11] = 100
            f2_local0[25] = 50
        end
    elseif f2_local3 >= 12 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            f2_local0[1] = 100
        else
            f2_local0[28] = 100
        end
    elseif f2_local3 >= 6 then
        f2_local0[1] = 100
    elseif f2_local3 >= 2 then
        f2_local0[1] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
        f2_local0[1] = 100
    elseif arg1:GetNumber(4) == 1 then
        f2_local0[10] = 100
        f2_local0[25] = 50
    elseif arg1:GetNumber(4) == 0 then
        f2_local0[11] = 100
        f2_local0[25] = 50
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
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
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    local f3_local7 = 90
    local f3_local8 = 5
    local f3_local9 = arg0:GetDist(TARGET_ENE_0)
    local f3_local10 = arg0:GetRandam_Int(1, 100)
    local f3_local11 = 3003
    local f3_local12 = ATT3025_DIST_MAX
    local f3_local13 = ATT3025_DIST_MAX
    local f3_local14 = 0
    local f3_local15 = 0
    if arg0:IsFinishTimer(0) then
        f3_local11 = 3001
    elseif f3_local9 >= 7 then
        f3_local11 = 3005
    elseif f3_local9 >= 5 then
        if SpaceCheck(arg0, arg1, -90, 1) == true then
            if SpaceCheck(arg0, arg1, 90, 1) == true then
                if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                    f3_local11 = 3008
                else
                    f3_local11 = 3007
                end
            else
                f3_local11 = 3007
            end
        elseif SpaceCheck(arg0, arg1, 90, 1) == true then
            f3_local11 = 3008
        end
    elseif SpaceCheck(arg0, arg1, 180, 4) == true then
        f3_local11 = 3006
    elseif SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f3_local11 = 3008
            else
                f3_local11 = 3007
            end
        else
            f3_local11 = 3007
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f3_local11 = 3008
    else
        f3_local11 = 3005
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local11, TARGET_ENE_0, 9999, f3_local14, f3_local15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 200
    local f4_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 200
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    f4_local9:TimingSetTimer(0, 15, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 200
    local f5_local2 = 30 - arg0:GetMapHitRadius(TARGET_SELF) + 200
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    local f5_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    f5_local9:TimingSetTimer(0, 15, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    local f6_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    f6_local9:TimingSetNumber(4, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    local f7_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    f7_local9:TimingSetNumber(4, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f8_local0, TARGET_ENE_0, f8_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f9_local0 = 3
    local f9_local1 = 0
    local f9_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f9_local2 = 5202
            else
                f9_local2 = 5203
            end
        else
            f9_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f9_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local0, f9_local2, TARGET_ENE_0, f9_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetSp(TARGET_SELF)
    local f10_local2 = 20
    local f10_local3 = arg0:GetRandam_Int(1, 100)
    local f10_local4 = -1
    local f10_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f10_local5 = 1
            else
                f10_local5 = 0
            end
        else
            f10_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f10_local5 = 1
    else

    end
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f10_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f10_local6, TARGET_ENE_0, f10_local5, f10_local7, true, true, f10_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 3
    local f11_local2 = 0
    local f11_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f11_local0 > 4 then

        else
            f11_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local3, TARGET_ENE_0, f11_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Float(2, 4)
    local f12_local1 = arg0:GetRandam_Float(5, 7)
    local f12_local2 = arg0:GetDist(TARGET_ENE_0)
    local f12_local3 = -1
    local f12_local4 = 90
    local f12_local5 = 2
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_ENE_0, true, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, false, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f14_local1 = 0
    local f14_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f14_local2 == 0 then
        f14_local1 = 0
    elseif f14_local2 == 1 then
        f14_local1 = 1
    elseif f14_local2 == 2 then
        if f14_local0 <= 50 then
            f14_local1 = 0
        else
            f14_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f14_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f14_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 1.5
    local f15_local2 = 1.5
    local f15_local3 = arg0:GetRandam_Int(30, 45)
    local f15_local4 = -1
    local f15_local5 = arg0:GetRandam_Int(0, 1)
    if f15_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local1, TARGET_ENE_0, f15_local5, f15_local3, true, true, f15_local4)
    elseif f15_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 3, TARGET_SELF, true, f15_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 8, TARGET_SELF, true, f15_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f16_local1 = arg1:GetRandam_Float(2, 4)
    local f16_local2 = arg1:GetRandam_Float(5, 7)
    local f16_local3 = arg1:GetDist(TARGET_ENE_0)
    local f16_local4 = 9910
    local f16_local5 = 270
    local f16_local6 = 6
    local f16_local7 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f16_local0 == 5025 then
            if f16_local3 <= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3017, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif f16_local0 == 5027 then
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, f16_local5, f16_local6)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        if arg1:IsFinishTimer(1) == false then
            arg1:DeleteObserve(0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:ClearSubGoal()
            local f16_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3036, TARGET_ENE_0, 9999, 0)
            f16_local8:TimingSetTimer(1, 7, AI_TIMING_SET__ACTIVATE)
            arg1:DeleteObserve(0)
            return true
        else
            arg2:ClearSubGoal()
            local f16_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3035, TARGET_ENE_0, 9999, 0)
            f16_local8:TimingSetTimer(1, 7, AI_TIMING_SET__ACTIVATE)
            arg1:DeleteObserve(0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetHpRate(TARGET_SELF)
    local f17_local1 = arg0:GetDist(TARGET_ENE_0)
    local f17_local2 = arg0:GetSp(TARGET_SELF)
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then

        elseif arg0:IsTargetGuard(TARGET_SELF) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

            else
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            return true
        else
            return true
        end
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f18_local0 = ReturnKengekiSpecialEffect(arg1)
    if f18_local0 == 0 then
        return false
    end
    local f18_local1 = {}
    local f18_local2 = {}
    local f18_local3 = {}
    Common_Clear_Param(f18_local1, f18_local2, f18_local3)
    local f18_local4 = arg1:GetDist(TARGET_ENE_0)
    local f18_local5 = arg1:GetSp(TARGET_SELF)
    if f18_local5 <= 0 then
        f18_local1[50] = 100
    elseif f18_local0 == 200200 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[3] = 100
        end
    elseif f18_local0 == 200201 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[4] = 100
        end
    elseif f18_local0 == 200205 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[1] = 100
        end
    elseif f18_local0 == 200206 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[2] = 100
        end
    elseif f18_local0 == 200210 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[7] = 100
        end
    elseif f18_local0 == 200211 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[8] = 100
        end
    elseif f18_local0 == 200215 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[5] = 100
        end
    elseif f18_local0 == 200216 then
        if f18_local4 >= 2 then
            f18_local1[50] = 100
        elseif f18_local4 <= 0.2 then
            f18_local1[50] = 100
        else
            f18_local1[6] = 100
        end
    else
        f18_local1[50] = 100
    end
    f18_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f18_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f18_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f18_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f18_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f18_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f18_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f18_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f18_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f18_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f18_local1, f18_local2, f18_local6, f18_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3075, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
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


