RegisterTableGoal(GOAL_Mihariban_112000_Battle, "GOAL_Mihariban_112000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Mihariban_112000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserve(2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        f2_local0[1] = 100
        f2_local0[2] = 100
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:GetNumber(0) == 0 then
        f2_local0[1] = 100
        f2_local0[2] = 100
    elseif f2_local3 >= 2 then
        f2_local0[2] = 100
    else
        f2_local0[2] = 1
        f2_local0[3] = 200
        f2_local0[4] = 200
        f2_local0[25] = 100
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[4], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    local f3_local0 = 0
    local f3_local1 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 3112500) then
        local f3_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f3_local0, f3_local1, 0, 0)
        f3_local2:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    else
        local f3_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local0, f3_local1, 0, 0)
        f3_local2:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    local f4_local0 = 0
    local f4_local1 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 3112500) then
        local f4_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
        f4_local2:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    else
        local f4_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
        f4_local2:TimingSetNumber(0, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3002
    local f5_local1 = 0
    local f5_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, 9999, f5_local1, f5_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 3003
    local f6_local1 = 0
    local f6_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, 9999, f6_local1, f6_local2, 0, 0)
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f7_local0 = 3
    local f7_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f7_local0, TARGET_ENE_0, f7_local1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 0
    if SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5202, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5203, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5202, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local0, 5203, TARGET_ENE_0, f8_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetSp(TARGET_SELF)
    local f9_local1 = 20
    local f9_local2 = arg0:GetRandam_Int(1, 100)
    local f9_local3 = -1
    if f9_local1 <= f9_local0 and f9_local2 <= 0 then
        f9_local3 = 9910
    end
    local f9_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f9_local4 = 0
            else
                f9_local4 = 1
            end
        else
            f9_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f9_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f9_local5 = 1.8
    local f9_local6 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local5, TARGET_ENE_0, f9_local4, f9_local6, true, true, f9_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local1, 5201, TARGET_ENE_0, f10_local2, AI_DIR_TYPE_B, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Float(3, 5)
    local f11_local1 = 5
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f11_local0, TARGET_ENE_0, f11_local1, TARGET_ENE_0, true, -1)
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

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


