RegisterTableGoal(GOAL_Genan_Kane_118020_Battle, "GOAL_Genan_Kane_118020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Genan_Kane_118020_Battle, true)
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
    local f2_local7 = Check_ReachAttack(arg1, 0)
    local f2_local8 = arg1:GetEventRequest()
    local f2_local9 = arg1:GetDistY(TARGET_ENE_0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:SetNumber(6, 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3118061) then
        f2_local0[10] = 100
    elseif Common_ActivateAct(arg1, arg2) then

    elseif f2_local7 ~= POSSIBLE_ATTACK then
        if f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local7 == UNREACH_ATTACK then
            f2_local0[27] = 100
        elseif f2_local7 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[1] = 100
        elseif f2_local7 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[1] = 100
            f2_local0[4] = 100
        else
            f2_local0[27] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) and arg1:GetTimer(5) <= 0 then
        arg1:SetTimer(5, 15)
        f2_local0[31] = 100
    elseif arg1:GetNumber(5) == 0 and f2_local3 <= 0.5 then
        arg1:SetTimer(5, 15)
        f2_local0[31] = 100
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local5 > 10 then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local5 > 5 then
            f2_local0[2] = 0
            f2_local0[21] = 100
        else
            f2_local0[2] = 100
            f2_local0[21] = 100
        end
    elseif f2_local9 > 1.8 or f2_local9 < -1.8 then
        f2_local0[5] = 100
        f2_local0[29] = 10
    elseif not arg1:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToB, f2_local5) and arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == true then
        f2_local0[5] = 100
        f2_local0[29] = 10
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        if f2_local5 >= 10 then
            f2_local0[3] = 100
        else
            f2_local0[1] = 100
        end
    elseif f2_local5 >= 15 then
        f2_local0[3] = 100
    elseif f2_local5 >= 10 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[3] = 1000
        f2_local0[4] = 0
        f2_local0[5] = 0
    elseif f2_local5 >= 5 then
        f2_local0[1] = 200
        f2_local0[2] = 100
        f2_local0[3] = 500
        f2_local0[4] = 0
        f2_local0[5] = 200
    elseif f2_local9 > 1.2 or f2_local9 < -1.2 then
        f2_local0[20] = 2000
    elseif f2_local5 >= 2.5 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 100
    else
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 200
        f2_local0[5] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[5], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local10 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, 1)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 5.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local12, f3_local13, 0, 0)
    if f3_local14 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, 9999, 0, 0)
    elseif f3_local14 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local9, TARGET_ENE_0, f3_local10, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3003
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 9999
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local1 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local2 = 15.2 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, 1)
    local f5_local7 = 3004
    local f5_local8 = 0
    local f5_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, DistToAtt1, f5_local8, f5_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local2 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3008
    local f6_local8 = 3010
    local f6_local9 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    local f6_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 9999, f6_local10, f6_local11, 0, 0)
    if f6_local12 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3009
    local f7_local8 = 0
    local f7_local9 = 0
    local f7_local10 = 9999
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3006
    local f8_local2 = 3007
    local f8_local3 = 0
    local f8_local4 = 0
    if f8_local0 <= 8.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local2, TARGET_ENE_0, 9999, 0, 0)
        return true
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local1, TARGET_ENE_0, 9999, 0, 0)
        return true
    end
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f9_local0 = 0.5
    local f9_local1 = 100
    local f9_local2 = 0
    local f9_local3 = 10
    local f9_local4 = 10
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0.5, TARGET_SELF, true, -1)
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, TARGET_ENE_0, f10_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetSp(TARGET_SELF)
    local f11_local2 = 20
    local f11_local3 = arg0:GetRandam_Int(1, 100)
    local f11_local4 = -1
    local f11_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f11_local5 = 0
            else
                f11_local5 = 1
            end
        else
            f11_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f11_local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f11_local5)
    local f11_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local6, TARGET_ENE_0, f11_local5, f11_local7, true, true, f11_local4)
    f11_local8:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Float(2, 4)
    local f12_local1 = arg0:GetRandam_Float(1, 3)
    local f12_local2 = arg0:GetDist(TARGET_ENE_0)
    local f12_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local0, TARGET_ENE_0, f12_local1, TARGET_ENE_0, true, f12_local3)
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
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
    local f14_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
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
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
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
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f16_local0 = 1
    local f16_local1 = 100
    local f16_local2 = 0
    local f16_local3 = 10
    local f16_local4 = 10
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, f16_local0, TARGET_SELF, true, -1)
    arg0:SetNumber(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f18_local0 = 3.5
    local f18_local1 = arg0:GetRandam_Int(30, 45)
    local f18_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f18_local2 = 0
            else
                f18_local2 = 1
            end
        else
            f18_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f18_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local0, TARGET_ENE_0, f18_local2, f18_local1, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f19_local0 = arg1:GetHpRate(TARGET_SELF)
    local f19_local1 = arg1:GetDist(TARGET_ENE_0)
    local f19_local2 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNumber(6) == 1 then
        arg1:SetNumber(6, 0)
        arg1:Replanning()
        return true
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f19_local2 == 5028 then
        arg1:ClearEnemyTarget()
        arg1:ClearSoundTarget()
        arg1:Replanning()
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) and arg1:GetSpRate() <= 0.5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 0.5, 3030, TARGET_SELF, 9999, 0, 0, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 5028 then
        arg1:ClearEnemyTarget()
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


