RegisterTableGoal(GOAL_MurabitoZombie_sude_genkaku_151000_Battle, "GOAL_MurabitoZombie_sude_genkaku_151000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_MurabitoZombie_sude_genkaku_151000_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110124)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        KankyakuAct(arg1, arg2, 0)
    elseif Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110124) == true then
        f2_local0[35] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3150011) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
            if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                if f2_local3 >= 10 then
                    f2_local0[11] = 400
                    f2_local0[5] = 200
                    f2_local0[26] = 400
                elseif f2_local3 >= 6 then
                    f2_local0[5] = 100
                    f2_local0[11] = 350
                    f2_local0[22] = 200
                    f2_local0[28] = 300
                elseif f2_local3 > 4 then
                    f2_local0[5] = 100
                    f2_local0[11] = 250
                    f2_local0[22] = 200
                    f2_local0[28] = 150
                    f2_local0[29] = 300
                else
                    f2_local0[10] = 200
                    f2_local0[28] = 200
                    f2_local0[29] = 600
                end
            elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                if f2_local3 >= 10 then
                    f2_local0[11] = 600
                    f2_local0[5] = 200
                    f2_local0[26] = 200
                elseif f2_local3 >= 6 then
                    f2_local0[11] = 600
                    f2_local0[22] = 100
                    f2_local0[28] = 300
                elseif f2_local3 > 4 then
                    f2_local0[11] = 550
                    f2_local0[22] = 100
                    f2_local0[28] = 200
                    f2_local0[29] = 150
                else
                    f2_local0[10] = 300
                    f2_local0[28] = 200
                    f2_local0[29] = 400
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
                f2_local0[28] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                f2_local0[21] = 100
                f2_local0[22] = 1
            elseif f2_local3 >= 10 then
                f2_local0[11] = 1000
            elseif f2_local3 >= 5 then
                f2_local0[10] = 100
                f2_local0[11] = 500
                f2_local0[12] = 300
            elseif f2_local3 > 3 then
                f2_local0[10] = 700
                f2_local0[11] = 0
                f2_local0[12] = 300
            else
                f2_local0[3] = 100
                f2_local0[10] = 600
                f2_local0[11] = 0
                f2_local0[24] = 200
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 10 then
                f2_local0[2] = 1000
            elseif f2_local3 >= 6 then
                f2_local0[2] = 300
                f2_local0[5] = 100
                f2_local0[22] = 200
                f2_local0[28] = 300
            elseif f2_local3 > 4 then
                f2_local0[2] = 300
                f2_local0[5] = 100
                f2_local0[22] = 100
                f2_local0[24] = 100
                f2_local0[28] = 250
                f2_local0[29] = 150
            else
                f2_local0[1] = 200
                f2_local0[2] = 100
                f2_local0[24] = 300
                f2_local0[28] = 200
                f2_local0[29] = 300
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 10 then
                f2_local0[2] = 1000
            elseif f2_local3 >= 6 then
                f2_local0[2] = 500
                f2_local0[5] = 100
                f2_local0[22] = 200
                f2_local0[28] = 200
            elseif f2_local3 > 4 then
                f2_local0[2] = 350
                f2_local0[3] = 100
                f2_local0[5] = 100
                f2_local0[22] = 100
                f2_local0[24] = 100
                f2_local0[28] = 100
                f2_local0[29] = 100
            else
                f2_local0[1] = 150
                f2_local0[2] = 100
                f2_local0[3] = 100
                f2_local0[24] = 300
                f2_local0[28] = 150
                f2_local0[29] = 200
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
            f2_local0[28] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local3 >= 10 then
            f2_local0[2] = 1000
        elseif f2_local3 >= 5 then
            f2_local0[2] = 1000
        elseif f2_local3 > 3 then
            f2_local0[1] = 200
            f2_local0[2] = 500
            f2_local0[3] = 100
            f2_local0[24] = 200
        else
            f2_local0[1] = 400
            f2_local0[2] = 100
            f2_local0[3] = 0
            f2_local0[24] = 500
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 10 then
                f2_local0[28] = 1000
            elseif f2_local3 >= 7 then
                f2_local0[5] = 100
                f2_local0[10] = 50
                f2_local0[11] = 300
                f2_local0[22] = 250
                f2_local0[28] = 300
            elseif f2_local3 > 4 then
                f2_local0[5] = 100
                f2_local0[10] = 50
                f2_local0[11] = 150
                f2_local0[22] = 250
                f2_local0[28] = 150
                f2_local0[29] = 300
            else
                f2_local0[10] = 200
                f2_local0[11] = 0
                f2_local0[28] = 200
                f2_local0[29] = 600
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 10 then
                f2_local0[28] = 1000
            elseif f2_local3 >= 7 then
                f2_local0[10] = 0
                f2_local0[11] = 500
                f2_local0[12] = 100
                f2_local0[22] = 100
                f2_local0[28] = 300
            elseif f2_local3 > 4 then
                f2_local0[10] = 0
                f2_local0[11] = 350
                f2_local0[12] = 250
                f2_local0[22] = 100
                f2_local0[28] = 200
                f2_local0[29] = 100
            else
                f2_local0[10] = 400
                f2_local0[11] = 0
                f2_local0[28] = 200
                f2_local0[29] = 300
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
            f2_local0[28] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local3 >= 10 then
            f2_local0[10] = 0
            f2_local0[11] = 700
            f2_local0[12] = 200
        elseif f2_local3 >= 5 then
            f2_local0[10] = 100
            f2_local0[11] = 500
            f2_local0[12] = 300
        elseif f2_local3 > 3 then
            f2_local0[10] = 700
            f2_local0[11] = 0
            f2_local0[12] = 300
        else
            f2_local0[3] = 200
            f2_local0[10] = 600
            f2_local0[11] = 0
            f2_local0[24] = 200
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 10 then
            f2_local0[26] = 1000
        elseif f2_local3 >= 7 then
            f2_local0[2] = 200
            f2_local0[5] = 100
            f2_local0[22] = 300
            f2_local0[28] = 300
        elseif f2_local3 > 4 then
            f2_local0[1] = 100
            f2_local0[2] = 200
            f2_local0[5] = 100
            f2_local0[22] = 100
            f2_local0[24] = 100
            f2_local0[28] = 250
            f2_local0[29] = 150
        else
            f2_local0[1] = 200
            f2_local0[2] = 100
            f2_local0[24] = 300
            f2_local0[28] = 200
            f2_local0[29] = 300
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 >= 10 then
            f2_local0[28] = 1000
        elseif f2_local3 >= 7 then
            f2_local0[2] = 500
            f2_local0[5] = 100
            f2_local0[22] = 200
            f2_local0[28] = 200
        elseif f2_local3 > 4 then
            f2_local0[1] = 50
            f2_local0[2] = 300
            f2_local0[3] = 150
            f2_local0[5] = 100
            f2_local0[22] = 100
            f2_local0[24] = 100
            f2_local0[28] = 100
            f2_local0[29] = 100
        else
            f2_local0[1] = 150
            f2_local0[2] = 50
            f2_local0[3] = 200
            f2_local0[24] = 250
            f2_local0[28] = 150
            f2_local0[29] = 200
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 10 then
        f2_local0[1] = 100
        f2_local0[2] = 700
        f2_local0[3] = 200
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 600
        f2_local0[3] = 300
    elseif f2_local3 > 3 then
        f2_local0[1] = 300
        f2_local0[2] = 300
        f2_local0[3] = 200
        f2_local0[24] = 200
    else
        f2_local0[1] = 500
        f2_local0[2] = 100
        f2_local0[3] = 200
        f2_local0[24] = 200
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 12, f2_local0[3], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3012, 5, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
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
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f3_local1 = f3_local0 - 1
    local f3_local2 = f3_local0 + 1
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 0
    local f4_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f5_local1 = f5_local0
    local f5_local2 = f5_local0 + 15
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f7_local1 = f7_local0
    local f7_local2 = f7_local0 + 1
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f7_local8 = 0
    local f7_local9 = 0
    local f7_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, f7_local7, f7_local8, f7_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f8_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f8_local1 = f8_local0
    local f8_local2 = f8_local0 + 1
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 2
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3150011) then
        Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    end
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f9_local0 = 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f9_local1 = f9_local0
    local f9_local2 = f9_local0 + 1
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    local f9_local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, DistToAtt1, f9_local7, f9_local8, 0, 0)
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
    local f11_local2 = arg0:GetDist(TARGET_FRI_0)
    local f11_local3 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true and f11_local2 >= 2.5 then
        if f11_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5212, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5213, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -45, 2) == true and f11_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5212, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 45, 2) == true and f11_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5213, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true then
        if f11_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5212, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5213, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
        end
    elseif SpaceCheck(arg0, arg1, -45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5212, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5213, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetDist(TARGET_FRI_0)
    local f12_local2 = arg0:GetSp(TARGET_SELF)
    local f12_local3 = 20
    local f12_local4 = arg0:GetRandam_Int(1, 100)
    local f12_local5 = -1
    local f12_local6 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -90, 1) == true and f12_local1 <= 2.5 then
        f12_local6 = 0
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 90, 1) == true and f12_local1 <= 2.5 then
        f12_local6 = 1
    end
    local f12_local7 = 3
    local f12_local8 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f12_local6)
    local f12_local9 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local7, TARGET_ENE_0, f12_local6, f12_local8, true, true, f12_local5)
    f12_local9:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3
    local f13_local2 = 0
    local f13_local3 = 5211
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
    local f14_local1 = arg0:GetRandam_Float(1, 3)
    local f14_local2 = arg0:GetDist(TARGET_ENE_0)
    local f14_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_ENE_0, true, f14_local3)
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
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f16_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f16_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Float(1, 3.5)
    local f17_local2 = 1.5
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = -1
    local f17_local5 = arg0:GetRandam_Int(0, 1)
    if f17_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local1, TARGET_ENE_0, f17_local5, f17_local3, true, true, f17_local4)
    elseif f17_local0 <= 10 and not arg0:HasSpecialEffectId(TARGET_SELF, 3150011) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 7.9, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 9.9, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 7
    local f18_local2 = 0
    local f18_local3 = arg0:GetRandam_Float(1, 3.5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local3, TARGET_ENE_0, f18_local1, TARGET_ENE_0, true, -1)
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = arg0:GetRandam_Int(0, 1)
    local f19_local3 = arg0:GetRandam_Float(2, 3.5)
    local f19_local4 = 3
    local f19_local5 = 0
    local f19_local6 = arg0:GetDist(TARGET_FRI_0)
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    local f19_local8 = arg0:GetRandam_Float(6.5, 7.5)
    local f19_local9 = arg0:GetRandam_Float(5.5, 6.5)
    local f19_local10 = 999
    local f19_local11 = 100
    if f19_local0 >= 10 then
        Approach_Act(arg0, arg1, f19_local8, f19_local10, 0, 3)
    elseif f19_local0 >= 5 then

    elseif f19_local0 >= 3.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f19_local8, TARGET_ENE_0, false, 9910)
    elseif f19_local7 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    local f19_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local3, TARGET_ENE_0, f19_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    f19_local12:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
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
    local f22_local0 = arg0:GetHpRate(TARGET_SELF)
    local f22_local1 = arg0:GetDist(TARGET_ENE_0)
    local f22_local2 = arg0:GetSp(TARGET_SELF)
    local f22_local3 = arg0:GetRandam_Int(1, 100)
    local f22_local4 = 0
    if f22_local3 <= 33 then
        arg1:ClearSubGoal()
        local f22_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f22_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f22_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MurabitoZombie_sude_genkaku_151000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_MurabitoZombie_sude_genkaku_151000_AfterAttackAct, "GOAL_MurabitoZombie_sude_genkaku_151000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MurabitoZombie_sude_genkaku_151000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetDist(TARGET_ENE_0)
    local f26_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f26_local2 = arg1:GetHpRate(TARGET_SELF)
    local f26_local3 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        f26_local3[1] = 100
        f26_local3[2] = 0
        f26_local3[3] = 0
    elseif f26_local0 >= 7 then
        f26_local3[1] = 100
        f26_local3[2] = 0
        f26_local3[3] = 0
    elseif f26_local0 >= 3 then
        f26_local3[1] = 30
        f26_local3[2] = 45
        f26_local3[3] = 25
    else
        f26_local3[1] = 30
        f26_local3[2] = 20
        f26_local3[3] = 50
    end
    local f26_local4 = SelectOddsIndex(arg1, f26_local3)
    if f26_local4 == 1 then

    elseif f26_local4 == 2 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(0, 1), TARGET_ENE_0, arg1:GetRandam_Int(1.5, 3), arg1:GetRandam_Int(30, 45), true, true, -1)
    elseif f26_local4 == 3 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Int(1.5, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


