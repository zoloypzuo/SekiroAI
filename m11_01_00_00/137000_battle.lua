RegisterTableGoal(GOAL_FireBull_137000_Battle, "GOAL_FireBull_137000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_FireBull_137000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(11, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = true
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3137000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3137004)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5270)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5271)
    arg1:DeleteObserve(1)
    arg1:DeleteObserve(2)
    arg1:SetNumber(5, 0)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(7, 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3137000) then
        f2_local5 = true
    else
        f2_local5 = false
    end
    if arg1:GetNumber(2) == 2 and (arg1:IsFinishTimer(1) == true or f2_local3 >= 10) then
        arg1:SetNumber(2, 1)
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[1] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3137001) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[31] = 0
    elseif f2_local5 == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) == true or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) == true then
            if f2_local3 >= 10 then
                f2_local0[1] = 50
                f2_local0[31] = 8
                if arg1:GetNumber(1) > 5 then
                    f2_local0[31] = 50
                end
            elseif f2_local3 >= 4 then
                f2_local0[1] = 50
                if arg1:GetNumber(1) > 5 then
                    f2_local0[31] = 50
                end
            else
                f2_local0[1] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[2] = 100
            if arg1:GetNumber(1) > 5 then
                f2_local0[31] = 50
            end
        else
            f2_local0[1] = 50
            if arg1:GetNumber(1) > 5 and f2_local3 > 5 then
                f2_local0[31] = 50
            end
        end
        if arg1:IsFinishTimer(4) == true then
            f2_local0[1] = f2_local0[1] * 0.1
            f2_local0[31] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) == true or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) == true then
        if f2_local3 >= 10 then
            f2_local0[27] = 50
            f2_local0[21] = 100
        elseif f2_local3 >= 4 then
            f2_local0[1] = 100
            f2_local0[6] = 100
            f2_local0[21] = 100
        else
            f2_local0[5] = 100
            f2_local0[8] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if f2_local3 >= 10 then
            f2_local0[2] = 100
            f2_local0[21] = 100
        elseif arg1:GetNumber(2) == 2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) == true or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) == true then
                f2_local0[5] = 10000
            end
            f2_local0[2] = 100
            f2_local0[21] = 100
        else
            f2_local0[2] = 10
            f2_local0[21] = 100
            if f2_local3 < 4.5 then
                f2_local0[5] = 1000
                f2_local0[21] = 1
            end
            f2_local0[1] = 100
        end
    elseif f2_local3 >= 10 then
        f2_local0[1] = 100
        f2_local0[2] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 100
        f2_local0[31] = 0
    elseif arg1:GetNumber(2) == 2 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[5] = 1
        f2_local0[6] = 0
        if f2_local3 <= 6 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[6] = 200
        end
        if f2_local3 <= 4.5 and (arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) == true or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) == true) then
            f2_local0[5] = 1000
        end
        f2_local0[7] = 100
        f2_local0[8] = 0
        f2_local0[31] = 0
    else
        f2_local0[1] = 1
        f2_local0[2] = 0
        f2_local0[5] = 0
        f2_local0[6] = 100
        f2_local0[7] = 100
        f2_local0[8] = 100
        f2_local0[31] = 0
    end
    if arg1:GetNumber(2) == 1 and f2_local5 == false then
        f2_local0[1] = 1
        f2_local0[2] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 100
        f2_local0[31] = 0
        arg1:SetNumber(2, 0)
    end
    if SpaceCheck(arg1, arg2, 0, 8) == false then
        f2_local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3138040) then
        if not arg1:IsInsideTargetRegion(TARGET_SELF, 2502571) then
            if arg1:GetNumber(9) == 0 then
                arg1:SetNumber(9, 1)
                arg1:SetTimer(5, arg1:GetRandam_Float(1, 3))
            end
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[21] = 0
            f2_local0[26] = 0
            f2_local0[27] = 0
            if f2_local5 == true then
                f2_local0[31] = 100
            elseif arg1:IsFinishTimer(5) == true then
                f2_local0[30] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[6] = 100
                f2_local0[7] = 100
            else
                f2_local0[5] = 100
                f2_local0[21] = 10
            end
        elseif not arg1:IsInsideTargetRegion(TARGET_ENE_0, 2502571) then
            arg1:SetNumber(9, 0)
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[21] = 0
            f2_local0[26] = 0
            f2_local0[27] = 0
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 2502570) and f2_local3 > 20 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    f2_local0[1] = 50
                    f2_local0[8] = 50
                else
                    f2_local0[2] = 50
                end
            elseif f2_local5 == true then
                f2_local0[31] = 100
            elseif f2_local3 < 4 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    f2_local0[6] = 100
                    f2_local0[7] = 100
                else
                    f2_local0[5] = 100
                    f2_local0[21] = 10
                end
            else
                if f2_local3 > 20 then
                    f2_local0[1] = 50
                end
                f2_local0[32] = 100
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    f2_local0[26] = 100
                    f2_local0[29] = 100
                else
                    f2_local0[21] = 100
                end
            end
        else
            arg1:SetNumber(9, 0)
        end
        if arg1:GetNumber(11) == 1 then
            f2_local0[33] = 100000000000000
        end
    end
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 3, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 3, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[7], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    arg0:SetNumber(2, 0)
    arg0:SetTimer(1, 0)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 0.5
    local f3_local7 = 0.5
    local f3_local8 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 0, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local9 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local10 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local11 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 180, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local12 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local13 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f3_local14 = 10
    local f3_local15 = AI_DIR_TYPE_B
    arg0:DeleteObserve(2)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 10)
    arg0:SetNumber(5, 0)
    arg0:SetNumber(6, 0)
    arg0:SetNumber(7, 0)
    if f3_local10 < f3_local9 and f3_local11 < f3_local9 then
        arg0:SetNumber(6, 3)
        f3_local15 = AI_DIR_TYPE_R
    elseif f3_local9 < f3_local10 and f3_local11 < f3_local10 then
        arg0:SetNumber(6, 2)
        f3_local15 = AI_DIR_TYPE_L
    elseif f3_local9 < f3_local11 and f3_local10 < f3_local11 then
        arg0:SetNumber(6, 1)
    else
        arg0:SetNumber(6, 1)
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3137000) then
        arg0:SetTimer(4, 15)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if f3_local8 <= 10 then
        if f3_local12 - f3_local13 <= 5 and f3_local13 - f3_local12 <= 5 then
            arg0:SetNumber(7, 1)
            if arg0:GetNumber(6) == 3 then
                if f3_local9 > 10 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                end
            elseif arg0:GetNumber(6) == 2 then
                if f3_local10 > 10 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_NE_0, 9999, 0, 0, 0, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                end
            elseif f3_local11 > 10 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f3_local7, TARGET_ENE_0, f3_local1, TARGET_SELF, false, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f3_local7, TARGET_ENE_0, f3_local1, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 0.5
    local f4_local7 = 0.5
    local f4_local8 = 90
    local f4_local9 = 9
    local f4_local10 = 9
    local f4_local11 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 0, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local12 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local13 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local14 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 180, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local15 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local16 = arg0:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f4_local17 = AI_DIR_TYPE_B
    arg0:DeleteObserve(2)
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 10)
    arg0:SetNumber(5, 0)
    arg0:SetNumber(7, 0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
        arg0:SetNumber(5, 1)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 40) then
        arg0:SetNumber(5, 2)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 40) then
        arg0:SetNumber(5, 3)
    else
        arg0:SetNumber(5, 4)
    end
    if f4_local13 < f4_local12 and f4_local14 < f4_local12 then
        arg0:SetNumber(6, 3)
        f4_local17 = AI_DIR_TYPE_R
    elseif f4_local12 < f4_local13 and f4_local14 < f4_local13 then
        arg0:SetNumber(6, 2)
        f4_local17 = AI_DIR_TYPE_L
    elseif f4_local12 < f4_local14 and f4_local13 < f4_local14 then
        arg0:SetNumber(6, 1)
        f4_local17 = AI_DIR_TYPE_B
    else
        arg0:SetNumber(6, 1)
        f4_local17 = AI_DIR_TYPE_B
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3137000) then
        arg0:SetTimer(4, 15)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    if f4_local0 <= 8 then
        if f4_local11 < 10 then
            if f4_local15 - f4_local16 <= 5 and f4_local16 - f4_local15 <= 5 then
                arg0:SetNumber(7, 1)
                if arg0:GetNumber(6) == 3 then
                    if f4_local12 > 10 then
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    end
                elseif arg0:GetNumber(6) == 2 then
                    if f4_local13 > 10 then
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    end
                elseif f4_local14 > 10 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_F, 20)
                else
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 1, TARGET_ENE_0, false, -1, f4_local17, 20)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_ENE_0, 1, TARGET_ENE_0, false, -1, f4_local17, 20)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    local f5_local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3020, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    local f6_local2 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 1
    local f8_local7 = 3
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 0
    local f8_local9 = 10
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f8_local8, f8_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f9_local3 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 1
    local f9_local7 = 3
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    arg0:SetNumber(2, 0)
    arg0:SetTimer(1, 0)
    arg0:SetTimer(4, 15)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3013, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f11_local0, TARGET_ENE_0, f11_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetSp(TARGET_SELF)
    local f12_local2 = 20
    local f12_local3 = arg0:GetRandam_Int(1, 100)
    local f12_local4 = -1
    local f12_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f12_local5 = 1
            else
                f12_local5 = 0
            end
        else
            f12_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f12_local5 = 1
    else

    end
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f12_local5)
    local f12_local8 = 3005
    if f12_local5 == 1 then
        f12_local8 = 3006
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f14_local2 = f14_local1 / math.tan(math.deg(30))
    local f14_local3 = arg0:GetRandam_Int(0, 1)
    if f14_local1 >= 3 then
        if f14_local2 + 1 <= f14_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f14_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f14_local2, TARGET_SELF, true, -1)
            end
        elseif f14_local0 <= f14_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f14_local2, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f14_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            arg0:SetNumber(10, f14_local3)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f14_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(10, f14_local3)
    end
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
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f16_local0 = 0
    arg0:SetEventMoveTarget(2502572)
    f16_local0 = arg0:GetDist_Point(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 35, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f17_local0 = 0
    arg0:SetEventMoveTarget(2502572)
    f17_local0 = arg0:GetDist_Point(POINT_EVENT)
    if not arg0:IsInsideTargetEx(TARGET_SELF, POINT_EVENT, AI_DIR_TYPE_F, 60, 20) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    end
    arg0:SetNumber(11, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 0
    local f19_local2 = arg0:GetRandam_Int(1, 100)
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    arg0:SetEventMoveTarget(2502572)
    f19_local1 = arg0:GetDist_Point(POINT_EVENT)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3137000) then
        if f19_local1 > 30 and f19_local2 > 50 and f19_local0 < 15 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_SELF, 9999, 0, 0, 0, 0)
        elseif f19_local1 > 15 and f19_local2 > 50 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, arg0:GetRandam_Float(15, 25), TARGET_SELF, false, -1)
        else
            arg0:SetNumber(1, 0)
            if f19_local3 > 50 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_SELF, 9999, 0, 0, 0, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_SELF, 9999, 0, 0, 0, 0)
            end
        end
    elseif f19_local3 > 75 and f19_local0 < 15 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_SELF, 9999, 0, 0, 0, 0)
    elseif f19_local3 > 50 then
        if f19_local0 > 35 then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, arg0:GetRandam_Float(15, 25), TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, arg0:GetRandam_Float(15, 25), TARGET_SELF, false, -1)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, arg0:GetRandam_Float(5, 15), TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f20_local0 = 0
    arg0:SetEventMoveTarget(2502573)
    f20_local0 = arg0:GetDist_Point(POINT_EVENT)
    if not arg0:IsInsideTargetEx(TARGET_SELF, POINT_EVENT, AI_DIR_TYPE_F, 60, 20) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    end
    arg0:SetNumber(11, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f21_local1 = arg1:GetRandam_Int(1, 100)
    local f21_local2 = arg1:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = arg1:GetDist(TARGET_ENE_0)
    local f21_local4 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 0, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local5 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local6 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 90, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local7 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 180, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local8 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, -30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local9 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 30, 60, AI_SPA_DIR_TYPE_TargetF)
    local f21_local10 = arg1:GetSpRate(TARGET_SELF)
    local f21_local11 = 0
    local f21_local12 = 0
    local f21_local13 = arg1:GetDist(TARGET_ENE_0)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(7, 0)
    if f21_local5 < f21_local6 and f21_local7 < f21_local6 then
        arg1:SetNumber(6, 3)
        d_direction = AI_DIR_TYPE_R
    elseif f21_local6 < f21_local5 and f21_local7 < f21_local5 then
        arg1:SetNumber(6, 2)
        d_direction = AI_DIR_TYPE_L
    elseif f21_local6 < f21_local7 and f21_local5 < f21_local7 then
        arg1:SetNumber(6, 1)
    else
        arg1:SetNumber(6, 1)
    end
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 109031 then
        arg1:Replanning()
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3138040) and not arg1:IsInsideTargetRegion(TARGET_SELF, 2502571) then
        return false
    end
    local f21_local14 = 3000
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f21_local10 > 0.25 then
            if f21_local13 > 10 then
                f21_local14 = 3013
            elseif f21_local13 >= 5 then
                f21_local14 = 3000
            elseif f21_local1 >= 50 then
                f21_local14 = 3012
            else
                f21_local14 = 3013
            end
            if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 90, 5) then
                f21_local14 = 3010
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 90, 5) then
                f21_local14 = 3011
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, f21_local14, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f21_local11, f21_local12, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptType(0) == 3137004 then
        arg1:DeleteObserve(1)
        arg1:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 12)
        return true
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 3137004 then
        arg1:DeleteObserve(2)
        arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 10)
        return true
    end
    local f21_local15 = arg1:GetNumber(1)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(2) then
            if arg1:GetNumber(2) <= 1 and arg1:HasSpecialEffectId(TARGET_SELF, 3137004) then
                arg1:DeleteObserve(1)
                arg1:DeleteObserve(2)
                arg2:ClearSubGoal()
                if f21_local13 <= 3.4 or f21_local15 > 5 and f21_local1 <= 15 then
                    arg1:SetNumber(2, 2)
                    arg1:SetTimer(1, 10)
                    arg1:SetNumber(1, 0)
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3033, TARGET_ENE_0, 9999, 0)
                else
                    arg1:SetNumber(1, f21_local15 + 1)
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3000, TARGET_ENE_0, 9999, 0)
                    if f21_local15 > 5 and f21_local1 <= 70 then
                        arg1:SetNumber(1, 0)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3033, TARGET_ENE_0, 9999, 0)
                    end
                end
                return true
            end
        elseif arg1:IsInsideObserve(1) and arg1:GetNumber(2) <= 1 and arg1:HasSpecialEffectId(TARGET_SELF, 3137000) then
            if arg1:IsFinishTimer(2) == true then
                arg1:SetTimer(2, 4)
                arg1:DeleteObserve(1)
                arg1:DeleteObserve(2)
                if f21_local4 < 14 then
                    arg1:SetTimer(2, 3)
                    if arg1:GetNumber(6) == 3 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3017, TARGET_ENE_0, 9999, 0)
                        return true
                    elseif arg1:GetNumber(6) == 2 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3018, TARGET_ENE_0, 9999, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg1:SetNumber(1, f21_local15 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3000, TARGET_ENE_0, 9999, 0)
                        return true
                    end
                else
                    arg2:ClearSubGoal()
                    if f21_local13 <= 4 then
                        arg1:SetNumber(1, 0)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3033, TARGET_ENE_0, 9999, 0)
                    elseif f21_local13 <= 6 then
                        arg1:SetNumber(1, f21_local15 + 1)
                        if f21_local8 > 7 == true and f21_local1 <= 40 and f21_local15 > 2 then
                            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3017, TARGET_ENE_0, 9999, 0)
                        elseif f21_local9 > 7 == true and f21_local1 <= 40 and f21_local15 > 2 then
                            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3018, TARGET_ENE_0, 9999, 0)
                        else
                            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3000, TARGET_ENE_0, 9999, 0)
                        end
                    elseif f21_local1 <= 70 then
                        arg1:SetNumber(1, f21_local15 + 1)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3000, TARGET_ENE_0, 9999, 0)
                    else
                        arg1:SetNumber(1, 0)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.5, 3000, TARGET_ENE_0, 9999, 0)
                        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3033, TARGET_ENE_0, 9999, 0)
                    end
                    return true
                end
            else
                arg1:SetNumber(1, 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3033, TARGET_ENE_0, 9999, 0)
                return true
            end
        end
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetHpRate(TARGET_SELF)
    local f22_local1 = arg0:GetDist(TARGET_ENE_0)
    local f22_local2 = arg0:GetSp(TARGET_SELF)
    local f22_local3 = arg0:GetRandam_Int(1, 100)
    local f22_local4 = 0
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f24_local0 = ReturnKengekiSpecialEffect(arg1)
    if f24_local0 == 0 then
        return false
    end
    local f24_local1 = {}
    local f24_local2 = {}
    local f24_local3 = {}
    Common_Clear_Param(f24_local1, f24_local2, f24_local3)
    local f24_local4 = arg1:GetDist(TARGET_ENE_0)
    local f24_local5 = arg1:GetSp(TARGET_SELF)
    if f24_local0 == 200200 then
        if f24_local4 >= 2 then
            f24_local1[1] = 100
        else
            f24_local1[1] = 100
        end
    elseif f24_local0 == 200201 then
        if f24_local4 >= 2 then
            f24_local1[2] = 100
        else
            f24_local1[2] = 100
        end
    else
        f24_local1[50] = 100
    end
    f24_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f24_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f24_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f24_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f24_local1, f24_local2, f24_local6, f24_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3017, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3018, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


