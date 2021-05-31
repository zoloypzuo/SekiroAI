RegisterTableGoal(GOAL_Rappa_136000_Battle, "GOAL_Rappa_136000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Rappa_136000_Battle, true)
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
    local f2_local5 = Check_ReachAttack(arg1, 0)
    local f2_local6 = arg1:GetSp(TARGET_SELF)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    arg1:DeleteObserve(2)
    arg1:DeleteObserve(3)
    arg1:DeleteObserve(4)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3136000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3136001)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif f2_local5 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local5 == UNREACH_ATTACK then
            f2_local0[27] = 50
            f2_local0[7] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[3] = 100
            f2_local0[7] = 100
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[3] = 100
            f2_local0[7] = 100
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 1
        f2_local0[7] = 100
        f2_local0[23] = 10
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[1] = 100
            f2_local0[2] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[25] = 1
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, 9999) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3136030) then
            if f2_local3 > 6 then
                f2_local0[1] = 100
                f2_local0[2] = 150
                f2_local0[7] = 200
                f2_local0[10] = 200
                f2_local0[14] = 150
            elseif f2_local3 >= 2 then
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[4] = 200
                f2_local0[9] = 150
                f2_local0[11] = 100
                f2_local0[14] = 150
                f2_local0[23] = 100
            else
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[4] = 50
                f2_local0[9] = 70
                f2_local0[11] = 100
                f2_local0[14] = 80
                f2_local0[23] = 1
                f2_local0[25] = 50
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 3136900) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3136901) then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 2002249) and arg1:IsInsideTargetRegion(TARGET_SELF, 2002249) then
                    f2_local0[32] = 100
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 2002250) and arg1:IsInsideTargetRegion(TARGET_SELF, 2002250) then
                    f2_local0[34] = 100
                else
                    f2_local0[27] = 1
                    if arg1:IsVisibleTarget(TARGET_ENE_0) then
                        f2_local0[13] = 0
                        f2_local0[18] = 1
                        f2_local0[33] = 150
                    end
                end
            elseif f2_local3 >= 5 then
                f2_local0[13] = 1
                f2_local0[18] = 100
                f2_local0[33] = 150
            else
                f2_local0[13] = 100
                f2_local0[18] = 100
                f2_local0[22] = 1
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 3136910) then
            f2_local0[3] = 100
            f2_local0[12] = 100
            f2_local0[18] = 50
        elseif not not arg1:IsLockOnTarget(TARGET_ENE_0, TARGET_SELF) or arg1:IsFinishTimer(4) == false then
            if f2_local3 >= 8 then
                if arg1:IsFinishTimer(4) == false then
                    f2_local0[7] = 100
                elseif arg1:IsFinishTimer(3) == true then
                    f2_local0[4] = 1
                    f2_local0[7] = 10
                    f2_local0[19] = 100
                    f2_local0[22] = 10
                    f2_local0[27] = 10
                else
                    f2_local0[4] = 1
                    f2_local0[23] = 100
                    f2_local0[27] = 1
                end
            elseif f2_local3 >= 4 then
                if arg1:IsFinishTimer(3) == true then
                    f2_local0[3] = 300
                    f2_local0[4] = 350
                    f2_local0[7] = 1
                    f2_local0[10] = 300
                    f2_local0[22] = 100
                else
                    f2_local0[3] = 100
                    f2_local0[4] = 100
                    f2_local0[7] = 1
                    f2_local0[23] = 50
                    f2_local0[27] = 1
                end
            elseif f2_local3 >= 2 then
                if arg1:IsFinishTimer(3) == true then
                    f2_local0[1] = 300
                    f2_local0[2] = 300
                    f2_local0[3] = 150
                    f2_local0[4] = 350
                    f2_local0[9] = 300
                    f2_local0[11] = 150
                    f2_local0[14] = 300
                    f2_local0[22] = 100
                    if f2_local6 <= 35 then
                        f2_local0[5] = 100
                        f2_local0[13] = 100
                        f2_local0[18] = 100
                    end
                else
                    f2_local0[23] = 100
                    f2_local0[27] = 1
                end
            else
                f2_local0[1] = 300
                f2_local0[2] = 300
                f2_local0[4] = 350
                f2_local0[9] = 100
                f2_local0[11] = 100
                f2_local0[12] = 100
                f2_local0[14] = 200
                if f2_local6 <= 35 then
                    f2_local0[5] = 100
                    f2_local0[13] = 100
                    f2_local0[18] = 100
                end
            end
        elseif arg1:IsFinishTimer(0) == false then
            if f2_local3 >= 5 then
                f2_local0[3] = 1
                f2_local0[19] = 100
            else
                f2_local0[3] = 1
                f2_local0[22] = 100
            end
        elseif f2_local3 >= 5 then
            f2_local0[19] = 500
            f2_local0[10] = 100
            f2_local0[1] = 1
            f2_local0[2] = 1
        elseif f2_local3 >= 3 then
            f2_local0[11] = 1
            f2_local0[12] = 1
            f2_local0[22] = 200
            f2_local0[4] = 100
            f2_local0[10] = 100
        else
            f2_local0[3] = 100
            f2_local0[11] = 1
            f2_local0[12] = 1
            f2_local0[18] = 1
            f2_local0[22] = 200
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3136900) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3136901) then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 2002249) and arg1:IsInsideTargetRegion(TARGET_SELF, 2002249) then
                f2_local0[32] = 100
            elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 2002250) and arg1:IsInsideTargetRegion(TARGET_SELF, 2002250) then
                f2_local0[34] = 100
            else
                f2_local0[27] = 1
                if arg1:IsVisibleTarget(TARGET_ENE_0) then
                    f2_local0[13] = 0
                    f2_local0[18] = 1
                    f2_local0[33] = 150
                end
            end
        elseif f2_local3 >= 5 then
            f2_local0[13] = 1
            f2_local0[18] = 100
            f2_local0[33] = 150
        else
            f2_local0[13] = 100
            f2_local0[18] = 100
            f2_local0[22] = 1
        end
    elseif arg1:IsFinishTimer(1) == false and arg1:IsFinishTimer(3) == false then
        f2_local0[1] = 300
        f2_local0[2] = 300
        f2_local0[3] = 200
        f2_local0[5] = 300
        f2_local0[9] = 100
        f2_local0[23] = 50
        f2_local0[27] = 1
    elseif arg1:IsFinishTimer(1) == false then
        if f2_local3 >= 5 then
            f2_local0[11] = 1
            f2_local0[12] = 1
            f2_local0[23] = 1000
            f2_local0[27] = 1
        else
            f2_local0[11] = 1
            f2_local0[12] = 1
            f2_local0[18] = 10000
            f2_local0[27] = 1
        end
    else
        f2_local0[20] = 100
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 3136900) or arg1:HasSpecialEffectId(TARGET_SELF, 3136901) then
        f2_local0[20] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 3) == false and SpaceCheck(arg1, arg2, -45, 3) == false then
        f2_local0[10] = 0
        f2_local0[19] = 0
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 1
    end
    if SpaceCheck(arg1, arg2, 180, 3) == false then
        f2_local0[5] = 0
        f2_local0[13] = 0
        f2_local0[18] = 1
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 1
    end
    if arg1:IsFinishTimer(2) == false then
        f2_local0[8] = 0
    end
    if 2.8 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local3 then
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 109012) then
        f2_local0[6] = 0
        f2_local0[12] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 5202, 5, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 5203, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3019, 5, f2_local0[14], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[18], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 5202, 3, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 5203, 3, f2_local0[22], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3010, 3, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3011, 3, f2_local0[33], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, arg0.Act18)
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
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0
    local f3_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    local f3_local9 = arg0:GetRandam_Int(0, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 0
    local f4_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    local f4_local9 = arg0:GetRandam_Int(0, 100)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 5.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local8 = 0
    local f5_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3038, TARGET_ENE_0, 9999, f5_local8, f5_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    local f6_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    f6_local2:TimingSetTimer(5, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 0
    local f7_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 0
    local f8_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 0
    local f8_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, f8_local7, f8_local8, f8_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    local f9_local2 = arg0:GetRandam_Int(0, 1)
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    local f9_local4 = 3011
    local f9_local5 = 3010
    if f9_local2 == 1 then
        local f9_local6 = 3010
        local f9_local7 = 3011
    else
        local f9_local6 = 3011
        local f9_local7 = 3010
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local4, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
    if f9_local3 >= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local5, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = 0
    local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
    f10_local2:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, f11_local7, f11_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(0, 1)
    if SpaceCheck(arg0, arg1, -45, 3) == true then
        if SpaceCheck(arg0, arg1, 45, 3) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f12_local0 = 1
            else
                f12_local0 = 0
            end
        else
            f12_local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 45, 3) == true then
        f12_local0 = 1
    else

    end
    local f12_local1 = 5202
    local f12_local2 = 3011
    local f12_local3 = 3010
    if f12_local0 == 0 then
        f12_local1 = 5203
        f12_local2 = 3010
        f12_local3 = 3011
    else
        f12_local1 = 5202
        f12_local2 = 3011
        f12_local3 = 3010
    end
    local f12_local4 = 1
    local f12_local5 = arg0:GetRandam_Int(30, 45)
    local f12_local6 = 0
    local f12_local7 = 0
    local f12_local8 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(10, f12_local0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local4, f12_local1, TARGET_ENE_0, f12_local6, AI_DIR_TYPE_L, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local2, TARGET_ENE_0, 9999, f12_local6, f12_local7, 0, 0)
    if f12_local8 >= 65 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local3, TARGET_ENE_0, 9999, 0)
    elseif f12_local8 >= 35 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local4, f12_local1, TARGET_ENE_0, f12_local6, AI_DIR_TYPE_L, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local2, TARGET_ENE_0, 9999, f12_local6, f12_local7, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 0
    local f13_local2 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    local f13_local7 = 0
    local f13_local8 = 0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f13_local7, f13_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 0
    local f14_local2 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 3
    local f14_local7 = arg0:GetSp(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local8 = 0
    local f14_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f14_local8, f14_local9, 0, 0)
    if f14_local7 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 9999, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 0
    local f15_local2 = 0
    local f15_local3 = arg0:GetRandam_Int(0, 1)
    local f15_local4 = arg0:GetRandam_Int(1, 100)
    local f15_local5 = 3010
    local f15_local6 = 3011
    if f15_local3 == 0 then
        local f15_local7 = 3010
        local f15_local8 = 3011
    else
        local f15_local7 = 3011
        local f15_local8 = 3010
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f15_local1, f15_local2, 0, 0)
    if f15_local0 <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, 0)
    end
    local f15_local7 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local5, TARGET_ENE_0, 9999, 0)
    f15_local7:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    if f15_local4 >= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local6, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 1.5
    local f16_local6 = 3
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 0
    local f16_local8 = 0
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, f16_local7, f16_local8, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f17_local0 = 0
    local f17_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f17_local0, f17_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    local f18_local0 = 0
    local f18_local1 = 0
    local f18_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f18_local0, f18_local1, 0, 0)
    f18_local2:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f19_local0 = 0
    local f19_local1 = 0
    local f19_local2 = 3022
    if arg0:IsFinishTimer(0) == true then
        arg0:SetTimer(0, 1.5)
        if SpaceCheck(arg0, arg1, -45, 3) == true then
            if SpaceCheck(arg0, arg1, 45, 3) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    f19_local2 = 3022
                    arg0:SetNumber(0, 0)
                else
                    f19_local2 = 3025
                    arg0:SetNumber(0, 1)
                end
            else
                f19_local2 = 3022
                arg0:SetNumber(0, 0)
            end
        elseif SpaceCheck(arg0, arg1, 45, 6) == true then
            f19_local2 = 3025
            arg0:SetNumber(0, 1)
        end
    else
        arg0:SetTimer(4, 2)
        if arg0:GetNumber(0) == 1 then
            f19_local2 = 3025
        else
            f19_local2 = 3022
        end
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136900) or not arg0:HasSpecialEffectId(TARGET_SELF, 3136901) then
        arg0:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 60, 8)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local2, TARGET_ENE_0, 9999, f19_local0, f19_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f20_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 0
    local f20_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 1.5
    local f20_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 0
    local f20_local8 = 0
    local f20_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f20_local7, f20_local8, 0, 0)
    f20_local9:TimingSetTimer(1, 9, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f21_local0 = 0.5
    local f21_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f21_local0, TARGET_ENE_0, f21_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f22_local0 = 3
    local f22_local1 = 0
    local f22_local2 = 5202
    local f22_local3 = 0
    if arg0:IsFinishTimer(0) == true then
        arg0:SetTimer(0, 1.5)
        if SpaceCheck(arg0, arg1, -45, 3) == true then
            if SpaceCheck(arg0, arg1, 45, 3) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    f22_local2 = 5202
                    arg0:SetNumber(0, 0)
                else
                    f22_local2 = 5203
                    arg0:SetNumber(0, 1)
                end
            else
                f22_local2 = 5202
                arg0:SetNumber(0, 0)
            end
        elseif SpaceCheck(arg0, arg1, 45, 3) == true then
            f22_local2 = 5203
            arg0:SetNumber(0, 1)
        end
    else
        arg0:SetTimer(4, 2)
        if arg0:GetNumber(0) == 1 then
            f22_local2 = 5203
        else
            f22_local2 = 5202
        end
    end
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3136900) or not arg0:HasSpecialEffectId(TARGET_SELF, 3136901) then
        arg0:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 60, 8)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local2, TARGET_ENE_0, 9999, f22_local1, f22_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    local f23_local1 = -1
    local f23_local2 = arg0:GetRandam_Int(0, 1)
    if SpaceCheck(arg0, arg1, -90, 0.5) == true then
        if SpaceCheck(arg0, arg1, 90, 0.5) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f23_local2 = 1
            else
                f23_local2 = 0
            end
        else
            f23_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 0.5) == true then
        f23_local2 = 1
    else

    end
    local f23_local3 = 2
    local f23_local4 = arg0:GetRandam_Int(15, 45)
    arg0:SetNumber(10, f23_local2)
    arg0:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4)
    arg0:AddObserveArea(3, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 10)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local3, TARGET_ENE_0, f23_local2, f23_local4, true, true, f23_local1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 3
    local f24_local2 = 0
    local f24_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 3) == true and SpaceCheck(arg0, arg1, 180, 3) == true then
        if f24_local0 > 4 then

        else
            f24_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local1, f24_local3, TARGET_ENE_0, f24_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Float(2, 4)
    local f25_local1 = arg0:GetRandam_Float(3, 7)
    local f25_local2 = arg0:GetDist(TARGET_ENE_0)
    local f25_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_ENE_0, true, f25_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200051) then
        arg0:AddObserveArea(4, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 6)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f27_local1 = 0
    local f27_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f27_local2 == 0 then
        f27_local1 = 0
    elseif f27_local2 == 1 then
        f27_local1 = 1
    elseif f27_local2 == 2 then
        if f27_local0 <= 50 then
            f27_local1 = 0
        else
            f27_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f27_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f27_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    return GET_WELL_SPACE_ODDS
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 1.5
    local f28_local2 = 1.5
    local f28_local3 = arg0:GetRandam_Int(30, 45)
    local f28_local4 = -1
    local f28_local5 = arg0:GetRandam_Int(0, 1)
    if f28_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local1, TARGET_ENE_0, f28_local5, f28_local3, true, true, f28_local4)
    elseif f28_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f29_local0 = 0
    local f29_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f29_local0, f29_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f30_local0 = 10
    local f30_local1 = 0
    local f30_local2 = 10
    local f30_local3 = 100
    local f30_local4 = 0
    local f30_local5 = 1.5
    local f30_local6 = 3
    Approach_Act_Flex(arg0, arg1, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6)
    local f30_local7 = 0
    local f30_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f30_local7, f30_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f31_local0 = 0
    local f31_local1 = 180
    local f31_local2 = arg0:GetRandam_Int(1, 100)
    local f31_local3 = 2002246
    f31_local3 = 2002246
    arg0:SetEventMoveTarget(f31_local3)
    local f31_local4 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 360) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f32_local0 = 0
    local f32_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f32_local0, f32_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f33_local0 = 0
    local f33_local1 = 180
    local f33_local2 = arg0:GetRandam_Int(1, 100)
    local f33_local3 = 2002247
    f33_local3 = 2002247
    arg0:SetEventMoveTarget(f33_local3)
    local f33_local4 = arg0:GetDist(POINT_EVENT)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 360) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, 0.3, TARGET_ENE_0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f34_local0 = 3.5
    local f34_local1 = arg0:GetRandam_Int(30, 45)
    local f34_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f34_local2 = 0
            else
                f34_local2 = 1
            end
        else
            f34_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f34_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f34_local0, TARGET_ENE_0, f34_local2, f34_local1, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f35_local0 = arg1:GetHpRate(TARGET_SELF)
    local f35_local1 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f35_local2 = arg1:GetDist(TARGET_ENE_0)
    local f35_local3 = arg1:GetSp(TARGET_SELF)
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2, 50, 0, -1)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg1:DeleteObserve(0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.8, 3016, TARGET_ENE_0, 9999, 0)
            return true
        end
        if arg1:IsInsideObserve(2) then
            arg1:DeleteObserve(2)
            arg2:ClearSubGoal()
            arg1:SetTimer(3, 0)
            arg1:SetTimer(5, 0)
            arg1:Replanning()
            return true
        end
        if arg1:IsInsideObserve(4) then
            arg1:DeleteObserve(4)
            arg2:ClearSubGoal()
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) and arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__OUTSIDE, 3) then
        arg1:DeleteObserve(3)
        arg2:ClearSubGoal()
        arg1:SetTimer(3, 0)
        arg1:SetTimer(5, 0)
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f35_local1 == 3136001 and arg1:HasSpecialEffectId(TARGET_SELF, 3136000) then
        arg2:ClearSubGoal()
        local f35_local5 = arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3007, TARGET_ENE_0, 9999, 0)
        f35_local5:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
        if arg1:IsFinishTimer(2) == true and f35_local3 <= 20 then
            f35_local5 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
            f35_local5 = f35_local5:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
            f35_local5:TimingSetTimer(3, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f36_local0 = 3
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3, arg4)
    local f37_local0 = arg0:GetDist(TARGET_ENE_0)
    local f37_local1 = GetDist_Parry(arg0)
    local f37_local2 = arg0:GetRandam_Int(1, 100)
    local f37_local3 = arg0:GetRandam_Int(1, 100)
    local f37_local4 = arg0:GetRandam_Int(1, 100)
    local f37_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f37_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f37_local7 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f37_local7 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f37_local7 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221002) then
        f37_local7 = 2
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if f37_local7 == -1 then
        return false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220062) then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg3 == nil then
        arg3 = 0
    end
    if arg4 == nil then
        arg4 = 0
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f37_local1) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 220063) and f37_local0 <= 4 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
            return true
        elseif f37_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        elseif f37_local5 then
            if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                return false
            else
                if f37_local7 == 2 then
                    return false
                elseif f37_local7 == 1 then
                    if f37_local2 <= 50 then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                        return true
                    end
                elseif f37_local7 == 0 and f37_local2 <= 100 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                end
                return false
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) and arg4 ~= -1 and f37_local7 == 0 then
            if arg4 == 1 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            end
        elseif f37_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f37_local1 + 1) then
        if arg4 ~= -1 and f37_local4 <= arg3 then
            if arg4 == 1 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                return true
            end
        else
            return false
        end
    else
        return false
    end
    
end

Goal.ShootReaction = function (arg0, arg1)
    local f38_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
        if f38_local0 <= 30 then
            if arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 3136030) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f39_local0 = ReturnKengekiSpecialEffect(arg1)
    if f39_local0 == 0 then
        return false
    end
    local f39_local1 = {}
    local f39_local2 = {}
    local f39_local3 = {}
    Common_Clear_Param(f39_local1, f39_local2, f39_local3)
    local f39_local4 = arg1:GetDist(TARGET_ENE_0)
    local f39_local5 = arg1:GetSp(TARGET_SELF)
    if f39_local0 == 200200 then
        if f39_local4 >= 1.5 then
            f39_local1[9] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[9] = 100
            end
        else
            f39_local1[1] = 100
            if f39_local5 <= 35 then
                f39_local1[9] = 100
            end
        end
    elseif f39_local0 == 200201 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[10] = 100
            end
        else
            f39_local1[2] = 100
            if f39_local5 <= 35 then
                f39_local1[10] = 100
            end
        end
    elseif f39_local0 == 200205 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[11] = 100
            end
        else
            f39_local1[3] = 100
            f39_local1[5] = 100
            f39_local1[7] = 200
            f39_local1[50] = 300
            if f39_local5 <= 35 then
                f39_local1[11] = 100
            end
        end
    elseif f39_local0 == 200206 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[10] = 100
            end
        else
            f39_local1[4] = 100
            f39_local1[6] = 100
            f39_local1[50] = 300
            if f39_local5 <= 35 then
                f39_local1[12] = 100
            end
        end
    elseif f39_local0 == 200210 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        else
            f39_local1[11] = 50
            f39_local1[2] = 200
            f39_local1[8] = 200
        end
    elseif f39_local0 == 200211 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        else
            f39_local1[12] = 50
            f39_local1[2] = 200
            f39_local1[8] = 200
        end
    elseif f39_local0 == 200215 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[11] = 10000
            end
        else
            f39_local1[3] = 100
            f39_local1[5] = 100
            f39_local1[7] = 200
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[11] = 10000
            end
        end
    elseif f39_local0 == 200216 then
        if f39_local4 >= 1.5 then
            f39_local1[50] = 100
        elseif f39_local4 <= 0.2 then
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[12] = 10000
            end
        else
            f39_local1[4] = 100
            f39_local1[6] = 100
            f39_local1[50] = 100
            if f39_local5 <= 35 then
                f39_local1[12] = 10000
            end
        end
    else
        f39_local1[50] = 100
    end
    if SpaceCheck(arg1, arg2, 180, 3) == false then
        f39_local1[8] = 0
        f39_local1[9] = 0
        f39_local1[10] = 0
        f39_local1[11] = 0
        f39_local1[12] = 0
    end
    f39_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f39_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f39_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f39_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f39_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f39_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f39_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f39_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f39_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f39_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f39_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f39_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f39_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f39_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f39_local1, f39_local2, f39_local6, f39_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3052, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    local f41_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3057, TARGET_ENE_0, 9999, 0)
    if f41_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3071, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3072, TARGET_ENE_0, 9999, 0)
    if sp <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3018, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3077, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3018, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3073, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3056, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    local f48_local0 = arg0:GetSp(TARGET_SELF)
    arg1:ClearSubGoal()
    local f48_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3051, TARGET_ENE_0, 9999, 0)
    f48_local1:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    if arg0:IsFinishTimer(2) == true and f48_local0 <= 15 then
        f48_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        f48_local1:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    local f49_local0 = arg0:GetSp(TARGET_SELF)
    arg1:ClearSubGoal()
    local f49_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3056, TARGET_ENE_0, 9999, 0)
    f49_local1:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    if arg0:IsFinishTimer(2) == true and f49_local0 <= 15 then
        f49_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        f49_local1:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    local f50_local0 = arg0:GetSp(TARGET_SELF)
    arg1:ClearSubGoal()
    local f50_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3070, TARGET_ENE_0, 9999, 0)
    f50_local1:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    if arg0:IsFinishTimer(2) == true and f50_local0 <= 15 then
        f50_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        f50_local1:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    local f51_local0 = arg0:GetSp(TARGET_SELF)
    arg1:ClearSubGoal()
    local f51_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3075, TARGET_ENE_0, 9999, 0)
    f51_local1:TimingSetTimer(3, 3, AI_TIMING_SET__ACTIVATE)
    if arg0:IsFinishTimer(2) == true and f51_local0 <= 15 then
        f51_local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        f51_local1:TimingSetTimer(2, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    end
    
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


