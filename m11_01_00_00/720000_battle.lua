RegisterTableGoal(GOAL_Ouji_720000_Battle, "GOAL_Ouji_720000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Ouji_720000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f2_local7 = arg1:GetDist(TARGET_EVENT)
    local f2_local8 = arg1:GetDist(TARGET_FRI_0)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 5020)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5020)
    arg1:AddObserveSpecialEffectAttribute(TARGET_LOCALPLAYER, 109012)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109220)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109221)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200000) then
        f2_local0[26] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        if f2_local6 >= 4 then
            if not not arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 109221) or arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 109220) then
                f2_local0[3] = 100
            else
                f2_local0[2] = 100
            end
        elseif f2_local6 >= 0.1 then
            f2_local0[3] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 109012) then
        f2_local0[20] = 100
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[26] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[28] = 200
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[28] = 200
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[21] = 100
    else
        f2_local0[26] = 100
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[3], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local10 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 2
    local f3_local1 = arg0:GetDist(TARGET_LOCALPLAYER)
    local f3_local2 = 0
    local f3_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_LOCALPLAYER, f3_local0, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_LOCALPLAYER)
    local f4_local1 = 0
    if arg0:CheckDoesExistPath(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 0, 0) == true then
        if arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 3, TARGET_SELF, false, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 30, 0, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3
    local f5_local1 = arg0:GetDist(TARGET_LOCALPLAYER)
    local f5_local2 = 0
    local f5_local3 = 0
    if not arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then

    else

    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_LOCALPLAYER, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_LOCALPLAYER)
    local f6_local1 = 0
    if f6_local0 >= 4 then
        f6_local1 = 0
    else
        f6_local1 = 1
    end
    if arg0:CheckDoesExistPath(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 0, 0) == true then
        if arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
            if f6_local0 <= 3 then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 2, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_LOCALPLAYER, 2, TARGET_SELF, false, -1)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 30, 0, 0, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_LOCALPLAYER, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3720000) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_LOCALPLAYER, 9999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 3720010) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_LOCALPLAYER, 9999, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_LOCALPLAYER, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    local f8_local2 = 9920
    local f8_local3 = arg0:GetDist(TARGET_LOCALPLAYER)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 10, f8_local2, TARGET_LOCALPLAYER, true, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    local f9_local2 = 9920
    local f9_local3 = arg0:GetDist(TARGET_LOCALPLAYER)
    if f9_local3 >= 3 then
        if arg0:CheckDoesExistPath(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 0, 0) == true then
            if arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_LOCALPLAYER, 3, TARGET_LOCALPLAYER, true, f9_local2)
            else
                arg1:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_LOCALPLAYER, 90, f9_local2, 0, true)
            end
        elseif arg0:IsInsideTarget(TARGET_LOCALPLAYER, AI_DIR_TYPE_F, 90) then
            arg1:AddSubGoal(GOAL_COMMON_Guard, 3, f9_local2, TARGET_LOCALPLAYER, true, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_LOCALPLAYER, 90, f9_local2, 0, true)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Guard, 3, f9_local2, TARGET_LOCALPLAYER, true, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 45
    local f10_local2 = 9910
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, TARGET_LOCALPLAYER, f10_local1, f10_local2, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, TARGET_LOCALPLAYER, f10_local1, -1, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 0
    local f11_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f11_local2 = 5202
            else
                f11_local2 = 5203
            end
        else
            f11_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f11_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, f11_local2, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetDist(TARGET_EVENT)
    local f12_local2 = arg0:GetSp(TARGET_SELF)
    local f12_local3 = 20
    local f12_local4 = arg0:GetRandam_Int(1, 100)
    local f12_local5 = -1
    local f12_local6 = arg0:GetRandam_Int(30, 45)
    local f12_local7 = 10
    local f12_local8 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_LOCALPLAYER, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f12_local8 = 1
            else
                f12_local8 = 0
            end
        else
            f12_local8 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f12_local8 = 1
    else

    end
    local f12_local9 = 3
    local f12_local10 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f12_local8)
    if arg0:IsInsideTargetEx(TARGET_LOCALPLAYER, TARGET_SELF, AI_DIR_TYPE_B, 90, 10) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    else
        if arg0:IsInsideTargetEx(TARGET_LOCALPLAYER, TARGET_SELF, AI_DIR_TYPE_L, 90, 999) then
            f12_local8 = 1
        else
            f12_local8 = 0
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local9, TARGET_LOCALPLAYER, f12_local8, f12_local10, true, true, f12_local5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetDist(TARGET_EVENT)
    local f13_local2 = arg0:GetDist(TARGET_LOCALPLAYER)
    local f13_local3 = 3
    local f13_local4 = 0
    local f13_local5 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f13_local0 > 3 then

        else
            f13_local5 = 5201
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local3, f13_local5, TARGET_ENE_0, f13_local4, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Float(2, 4)
    local f14_local1 = arg0:GetRandam_Float(5, 7)
    local f14_local2 = arg0:GetDist(TARGET_ENE_0)
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, TARGET_LOCALPLAYER, f14_local1, TARGET_LOCALPLAYER, true, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f16_local2 = f16_local1 / math.tan(math.deg(30))
    local f16_local3 = arg0:GetRandam_Int(0, 1)
    if f16_local1 >= 3 then
        if f16_local2 + 1 <= f16_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f16_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f16_local2, TARGET_SELF, true, -1)
            end
        elseif f16_local0 <= f16_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f16_local2, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f16_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            arg0:SetNumber(10, f16_local3)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f16_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(10, f16_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 1.5
    local f17_local2 = 1.5
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = -1
    local f17_local5 = arg0:GetRandam_Int(0, 1)
    if f17_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local1, TARGET_ENE_0, f17_local5, f17_local3, true, true, f17_local4)
    elseif f17_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f18_local1 = 0
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (f18_local0 == 109220 or f18_local0 == 109221) then
        arg1:Replanning()
        return true
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetHpRate(TARGET_SELF)
    local f19_local1 = arg0:GetDist(TARGET_ENE_0)
    local f19_local2 = arg0:GetSp(TARGET_SELF)
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    local f19_local4 = 0
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
    local f20_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
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


