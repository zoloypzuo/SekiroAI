RegisterTableGoal(GOAL_Syokusyu_531000_Battle, "GOAL_Syokusyu_531000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Syokusyu_531000_Battle, true)
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
    local f2_local5 = arg1:GetEventRequest(0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f2_local0[11] = 100
    elseif f2_local5 == 10 then
        f2_local0[1] = 100
    elseif f2_local5 == 20 then
        f2_local0[2] = 100
    elseif f2_local5 == 30 then
        f2_local0[3] = 100
    elseif f2_local5 == 31 then
        f2_local0[4] = 100
    elseif f2_local5 == 32 then
        f2_local0[5] = 100
    else
        f2_local0[11] = 100
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
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 0
    local f3_local1 = 0
    local f3_local2 = arg0:GetEventRequest(1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3531000)
    attack0 = 3001
    attack1 = 3022
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, attack0, TARGET_ENE_0, 9999, f3_local0, f3_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, attack1, TARGET_ENE_0, 9999)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 0
    local f4_local1 = 0
    local f4_local2 = arg0:GetEventRequest(1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3531000)
    attack0 = 3000
    attack1 = 3020
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, attack0, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, attack1, TARGET_ENE_0, 9999)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3531000)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3032, TARGET_ENE_0, 9999)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3531000)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3034, TARGET_ENE_0, 9999)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    local f8_local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f9_local0 = -1
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = arg0:GetDist(TARGET_ENE_0)
    local f9_local4 = arg0:GetRandam_Int(1, 4)
    local f9_local5 = arg0:GetRandam_Int(3, 5)
    local f9_local6 = arg0:GetRandam_Int(1, 2)
    local f9_local7 = arg0:GetRandam_Int(10, 40)
    local f9_local8 = arg0:GetEventRequest(2)
    if f9_local8 == 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
    end
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
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = -1
    local f12_local3 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f12_local3 = 1
            else
                f12_local3 = 0
            end
        else
            f12_local3 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f12_local3 = 1
    else

    end
    local f12_local4 = 3
    local f12_local5 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f12_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local4, TARGET_ENE_0, f12_local3, f12_local5, true, true, f12_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3
    local f13_local2 = 0
    local f13_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f13_local0 > 4 then

        else
            f13_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local1, f13_local3, TARGET_ENE_0, f13_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Float(2, 4)
    local f14_local1 = arg0:GetRandam_Float(5, 7)
    local f14_local2 = arg0:GetDist(TARGET_ENE_0)
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_ENE_0, true, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_SELF, 0, 0, 0)
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

Goal.Act30 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 2)
    local f18_local2 = arg0:GetRandam_Float(2, 5)
    local f18_local3 = arg0:GetRandam_Int(20, 60)
    if f18_local1 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_MoveTargetRelationPos, 5, TARGET_ENE_0, AI_DIR_TYPE_R, f18_local2, TARGET_SELF, true, 2, f18_local3)
    else
        arg1:AddSubGoal(GOAL_COMMON_MoveTargetRelationPos, 5, TARGET_ENE_0, AI_DIR_TYPE_L, f18_local2, TARGET_SELF, true, 2, f18_local3)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f19_local0 = -1
    local f19_local1 = 0
    local f19_local2 = 0
    local f19_local3 = arg0:GetDist(TARGET_ENE_0)
    local f19_local4 = arg0:GetRandam_Int(1, 4)
    local f19_local5 = arg0:GetRandam_Int(3, 5)
    local f19_local6 = arg0:GetRandam_Int(1, 2)
    local f19_local7 = arg0:GetRandam_Int(10, 40)
    local f19_local8 = arg0:GetEventRequest(2)
    if f19_local8 == 10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f20_local1 = arg1:GetEventRequest(0)
    local f20_local2 = arg1:GetEventRequest(1)
    local f20_local3 = arg1:GetRandam_Int(1, 2)
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f20_local0 == 3531000 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
        end
        return true
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetHpRate(TARGET_SELF)
    local f21_local1 = arg0:GetDist(TARGET_ENE_0)
    local f21_local2 = arg0:GetSp(TARGET_SELF)
    local f21_local3 = arg0:GetRandam_Int(1, 100)
    local f21_local4 = 0
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
    local f22_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) == false then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f22_local0, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
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


