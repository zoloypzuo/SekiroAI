RegisterTableGoal(GOAL_Tokugawazamurai_shouiju_170030_Battle, "GOAL_Tokugawazamurai_shouiju_170030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Tokugawazamurai_shouiju_170030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        arg2:AddSubGoal(GOAL_Tokugawazamurai_katana_170000_Battle, -1)
        return true
    end
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = 90
    local f2_local7 = 3
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
                f2_local0[21] = 100
            elseif f2_local3 >= 5 then
                if arg1:IsVisibleTarget(TARGET_ENE_0) then
                    f2_local0[1] = 100
                    f2_local0[5] = 80
                else
                    f2_local0[26] = 100
                end
            elseif f2_local3 >= 3 then
                if arg1:IsVisibleTarget(TARGET_ENE_0) then
                    f2_local0[1] = 100
                    f2_local0[5] = 80
                else
                    f2_local0[26] = 100
                end
            else
                f2_local0[3] = 80
                f2_local0[23] = 100
                f2_local0[25] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 100
        elseif arg1:IsVisibleTarget(TARGET_ENE_0) then
            f2_local0[1] = 100
            f2_local0[5] = 80
        else
            f2_local0[27] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 10
        else
            f2_local0[1] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 135) then
            f2_local0[21] = 10
        else
            f2_local0[28] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if arg1:IsVisibleTarget(TARGET_ENE_0) == false then
            f2_local0[26] = 100
        elseif f2_local3 >= 7 then
            f2_local0[1] = 100
            f2_local0[5] = 80
        elseif f2_local3 >= 5 then
            f2_local0[1] = 100
            f2_local0[5] = 80
        elseif f2_local3 > 3 then
            f2_local0[1] = 100
            f2_local0[5] = 80
        else
            f2_local0[5] = 80
            f2_local0[23] = 100
            f2_local0[25] = 100
        end
    elseif arg1:IsVisibleTarget(TARGET_ENE_0) == false then
        f2_local0[27] = 100
    elseif f2_local3 >= 7 then
        f2_local0[1] = 100
        f2_local0[5] = 80
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[5] = 80
    elseif f2_local3 > 3 then
        f2_local0[3] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3170100) then
        f2_local0[4] = 100
    else
        f2_local0[3] = 100
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
    if arg1:IsFinishTimer(0) == false then
        f2_local0[5] = 1
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 100 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 100 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 100 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    local f3_local7 = 0
    local f3_local8 = 0
    local f3_local9 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5025) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f4_local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f5_local0 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF, 0, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
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
    local f8_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f8_local2 = 5202
            else
                f8_local2 = 5203
            end
        else
            f8_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f8_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, f8_local2, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetSp(TARGET_SELF)
    local f9_local2 = 20
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    local f9_local4 = -1
    local f9_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f9_local5 = 1
            else
                f9_local5 = 0
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
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local6, TARGET_ENE_0, f9_local5, f9_local7, true, true, f9_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 5201
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
    local f11_local1 = arg0:GetRandam_Float(5, 7)
    local f11_local2 = arg0:GetDist(TARGET_ENE_0)
    local f11_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_ENE_0, true, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, false, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f13_local1 = 0
    local f13_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f13_local2 == 0 then
        f13_local1 = 0
    elseif f13_local2 == 1 then
        f13_local1 = 1
    elseif f13_local2 == 2 then
        if f13_local0 <= 50 then
            f13_local1 = 0
        else
            f13_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f13_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f13_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
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

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3006, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 3502520) then
            return false
        else
            return Common_Parry(arg1, arg2, 0, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f16_local0 = ReturnKengekiSpecialEffect(arg1)
    if f16_local0 == 0 then
        return false
    end
    local f16_local1 = {}
    local f16_local2 = {}
    local f16_local3 = {}
    Common_Clear_Param(f16_local1, f16_local2, f16_local3)
    local f16_local4 = arg1:GetDist(TARGET_ENE_0)
    local f16_local5 = arg1:GetSp(TARGET_SELF)
    if f16_local5 <= 0 then
        f16_local1[50] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f16_local1[50] = 100
    elseif f16_local0 == 200200 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200201 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200205 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200206 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200210 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200211 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200215 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    elseif f16_local0 == 200216 then
        if f16_local4 >= 2 then
            f16_local1[50] = 100
        elseif f16_local4 <= 0.2 then
            f16_local1[50] = 100
        else
            f16_local1[1] = 100
        end
    else
        f16_local1[50] = 100
    end
    f16_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f16_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f16_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Kengeki_Activate(arg1, arg2, f16_local1, f16_local2, f16_local6, f16_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3006, TARGET_ENE_0, 9999, 0, 0)
    
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


