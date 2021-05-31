RegisterTableGoal(GOAL_Orochi_nest_501030_Battle, "GOAL_Orochi_nest_501030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Orochi_nest_501030_Battle, true)
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
    arg1:AddObserveRegion(0, TARGET_LOCALPLAYER, 1702621)
    arg1:AddObserveRegion(1, TARGET_LOCALPLAYER, 1702626)
    arg1:AddObserveRegion(2, TARGET_LOCALPLAYER, 1702627)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5022)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109031)
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5036) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702626) then
            f2_local0[12] = 100
        else
            f2_local0[26] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5037) then
            f2_local0[26] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5023) and arg1:HasSpecialEffectId(TARGET_SELF, 5036) == false then
            f2_local0[13] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5038) then
            f2_local0[26] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
            f2_local0[11] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5036) then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702627) then
                f2_local0[14] = 100
            elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702626) and arg1:IsEventFlag(11700621) == false then
                f2_local0[12] = 100
            else
                f2_local0[26] = 100
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702621) then
            f2_local0[10] = 100
        else
            f2_local0[26] = 100
        end
    else
        f2_local0[26] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    if arg0:IsInsideTargetRegion(TARGET_ENE_0, 1702625) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 20012, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20011, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 20016, TARGET_ENE_0, 9999, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5038) then
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20020, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20022, TARGET_ENE_0, 999, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20018, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20023, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 10, 20001, TARGET_NONE)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5038) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f9_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 109031 then
        arg1:Replanning()
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        if arg1:IsInsideObserve(1) then
            if arg1:IsEventFlag(11700621) == false then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5038) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20020, TARGET_ENE_0, 999, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 5036) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20022, TARGET_ENE_0, 999, 0)
                    return true
                end
            end
        elseif arg1:IsInsideObserve(2) then
            if not arg1:HasSpecialEffectId(TARGET_SELF, 5038) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20023, TARGET_ENE_0, 999, 0)
                return true
            end
        elseif arg1:IsInsideObserve(0) then
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f9_local0 == 5025 and arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702622) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20015, TARGET_ENE_0, 999, 0)
            return true
        elseif f9_local0 == 5022 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20016, TARGET_ENE_0, 999, 0)
            return true
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        return true
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5021) and arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20019, TARGET_ENE_0, 9999, 0, 0, 0, 0)
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


