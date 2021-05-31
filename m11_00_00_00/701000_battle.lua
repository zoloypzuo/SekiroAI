RegisterTableGoal(GOAL_NPCBusshi_701000_Battle, "GOAL_NPCBusshi_701000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_NPCBusshi_701000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 0)
    arg1:SetStringIndexedNumber("Dist_Step_Large", 0)
    arg1:SetStringIndexedNumber("KengekiID", 0)
    arg1:SetStringIndexedNumber("KaihukuSp", 30)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if f2_local8 == 10 then
        f2_local0[1] = 100
    else
        f2_local0[2] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 5
    local f3_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_LOCALPLAYER, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Turn, f3_local0, TARGET_LOCALPLAYER, f3_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 5
    local f4_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, POINT_INIT_POSE, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Turn, f4_local0, POINT_INIT_POSE, f4_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f5_local0 = 3
    local f5_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f5_local0, TARGET_ENE_0, f5_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f6_local0 = 3
    local f6_local1 = 0
    if SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local0, 5202, TARGET_ENE_0, f6_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local0, 5203, TARGET_ENE_0, f6_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local0, 5202, TARGET_ENE_0, f6_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local0, 5203, TARGET_ENE_0, f6_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetSp(TARGET_SELF)
    local f7_local1 = 20
    local f7_local2 = arg0:GetRandam_Int(1, 100)
    local f7_local3 = -1
    if f7_local1 <= f7_local0 and f7_local2 <= 0 then
        f7_local3 = 9910
    end
    local f7_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f7_local4 = 0
            else
                f7_local4 = 1
            end
        else
            f7_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f7_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f7_local5 = 1.8
    local f7_local6 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f7_local5, TARGET_ENE_0, f7_local4, f7_local6, true, true, f7_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3
    local f8_local2 = 0
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local1, 5201, TARGET_ENE_0, f8_local2, AI_DIR_TYPE_B, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Float(3, 5)
    local f9_local1 = 5
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f9_local0, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, -1)
    else

    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f11_local2 = f11_local1 / math.tan(math.deg(30))
    local f11_local3 = arg0:GetRandam_Int(0, 1)
    arg0:SetNumber(10, f11_local3)
    if f11_local1 >= 3 then
        if f11_local2 + 1 <= f11_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f11_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f11_local2, TARGET_SELF, true, -1)
            end
        elseif f11_local0 <= f11_local2 - 1 then
            local f11_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f11_local2, TARGET_ENE_0, true, -1)
            f11_local4:SetTargetRange(0, -99, 12)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        local f11_local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
        f11_local4:SetTargetRange(0, -99, 12)
    end
    local f11_local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f11_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    f11_local4:SetTargetRange(0, -99, 12)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Float(3, 3.5)
    local f12_local2 = arg0:GetRandam_Int(30, 45)
    local f12_local3 = -1
    local f12_local4 = arg0:GetRandam_Int(0, 1)
    if f12_local0 <= 5 then
        if SpaceCheck(arg0, arg1, 180, 6 - f12_local0) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, f12_local3)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local1, TARGET_ENE_0, f12_local4, f12_local2, true, true, f12_local3)
        end
    elseif f12_local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local1, TARGET_ENE_0, f12_local4, f12_local2, true, true, f12_local3)
    elseif f12_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 100
    local f13_local3 = 0
    local f13_local4 = 1.5
    local f13_local5 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local5, TARGET_ENE_0, f13_local1, TARGET_SELF, false, Guard)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.NinsatsuReaction = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 20100
    local f14_local3 = 0
    local f14_local4 = 0
    if f14_local0 <= 2 then
        f14_local2 = 20100
    else
        f14_local2 = 20105
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 0.5, f14_local2, TARGET_ENE_0, 9999, f14_local3, f14_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetHpRate(TARGET_SELF)
    local f16_local1 = arg0:GetDist(TARGET_ENE_0)
    local f16_local2 = arg0:GetSp(TARGET_SELF)
    local f16_local3 = arg0:GetRandam_Int(1, 100)
    local f16_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then
                if f16_local3 < 67 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                else
                    return false
                end
            elseif arg0:IsTargetGuard(TARGET_SELF) then
                return false
            elseif not not arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) or not arg0:IsFinishTimer(5) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 5) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then
                if f16_local3 <= 67 and arg0:GetHpRate(TARGET_SELF) < 0.5 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                else
                    return false
                end
            elseif f16_local3 <= 67 and arg0:GetHpRate(TARGET_SELF) < 0.5 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3007, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            else
                return false
            end
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetHpRate(TARGET_SELF)
    local f17_local1 = arg0:GetDist(TARGET_ENE_0)
    local f17_local2 = arg0:GetSp(TARGET_SELF)
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    local f17_local4 = 0
    local f17_local5 = -1
    local f17_local6 = 1
    if f17_local3 <= 75 then
        f17_local5 = 9910
    end
    f17_local3 = arg0:GetRandam_Int(1, 100)
    if f17_local3 <= 33 then
        if SpaceCheck(arg0, arg1, 180, 1) == true then
            arg1:ClearSubGoal()
            local f17_local7 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 9999, TARGET_ENE_0, true, f17_local5)
            f17_local7:SetTargetRange(0, -99, 10)
            return true
        else
            arg1:ClearSubGoal()
            local f17_local7 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local6, TARGET_ENE_0, direction, SuccessAngle, true, true, f17_local5)
            f17_local7:SetTargetRange(0, -99, 10)
            arg0:SetTimer(2, 4)
            return true
        end
    elseif f17_local3 <= 67 then
        if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
            arg1:ClearSubGoal()
            local f17_local7 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
            f17_local7:TimingSetTimer(3, 6, UPDATE_SUCCESS)
            return true
        else
            return false
        end
    else
        return false
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


