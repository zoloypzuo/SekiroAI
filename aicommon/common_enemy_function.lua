function EmagencyEscapeStep(arg0, arg1, arg2)
    if (not not arg1:IsActiveGoal(GOAL_EnemyBeforeAttack) or not not arg1:IsActiveGoal(GOAL_EnemyAfterAttack) or arg1:IsActiveGoal(GOAL_EnemyAfterAction)) and (arg0.FindAttackDist == nil or arg0.FindAttackDist ~= nil and arg1:GetDist(TARGET_ENE_0) <= arg0.FindAttackDist) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_EnemyStepBLR, 2, 6)
    end
    
end

function GuardOnProbability(arg0, arg1, arg2)
    if arg0.GuardRateOnDamged == nil then
        arg0.GuardRateOnDamged = 0
    end
    local f2_local0 = arg1:GetIdTimer(8000)
    if f2_local0 == nil or f2_local0 <= 0 then
        f2_local0 = 100
    end
    local f2_local1 = nil
    f2_local1 = 5 - f2_local0
    if f2_local1 > 0 then
        arg0.GuardRateOnDamged = arg0.GuardRateOnDamged + f2_local1 * 10 / 2.5
        if arg0.GuardRateOnDamged > 60 then
            arg0.GuardRateOnDamged = 60
        end
    else
        arg0.GuardRateOnDamged = 0
    end
    if arg1:GetRandam_Float(0, 100) < arg0.GuardRateOnDamged then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
    end
    arg1:StartIdTimer(8000)
    
end

function Interrupt_FindAttack_Default(arg0, arg1, arg2)
    
end

function Update_FinishOnNoSubGoal(arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function Interrupt_FindAttack_Guard(arg0, arg1, arg2)
    local f5_local0 = arg1:GetDist(TARGET_ENE_0)
    if f5_local0 <= 3 then
        f5_local0 = 1
        if arg1:GetIdTimer(7000) < 3 then
            f5_local0 = 2
        end
        if arg1:GetRandam_Float(0, 100) < 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
        end
        arg1:StartIdTimer(7000)
    end
    
end

function Interrupt_GuardBreak_ClearSubGoal(arg0, arg1, arg2)
    arg2:ClearSubGoal()
    arg1:TurnTo(TARGET_SELF)
    
end

function GetDefaultParam(arg0, arg1, arg2, arg3, arg4)
    local f7_local0 = arg2:GetParam(arg3)
    if f7_local0 == nil then
        return arg4
    else
        return f7_local0
    end
    
end

function GetDistPos(arg0, arg1, arg2, arg3)
    if arg3 <= arg1:GetDistParam(DIST_Near) then
        return 0
    elseif arg3 <= arg1:GetDistParam(DIST_Middle) then
        return 1
    elseif arg3 <= arg1:GetDistParam(DIST_Far) then
        return 2
    else
        return 3
    end
    
end

function GetAttackRateByDist(arg0, arg1, arg2, arg3, arg4)
    local f9_local0 = 0
    if arg4 == 0 then
        f9_local0 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__SHORT_RANGE_TENDENCY)
    elseif arg4 == 1 then
        f9_local0 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__MIDDLE_RANGE_TENDENCY)
    elseif arg4 == 2 then
        f9_local0 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__FAR_RANGE_TENDENCY)
    elseif arg4 == 3 then
        f9_local0 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__OUT_RANGE_TENDENCY)
    end
    if f9_local0 < 0 then
        f9_local0 = 0
    end
    return f9_local0
    
end

function GetAttackIdOffset(arg0, arg1, arg2, arg3)
    local f10_local0 = nil
    if arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        arg3 = arg3 - 1000000
        f10_local0 = 1000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        arg3 = arg3 - 2000000
        f10_local0 = 2000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        arg3 = arg3 - 3000000
        f10_local0 = 3000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
        arg3 = arg3 - 4000000
        f10_local0 = 4000000
    else
        f10_local0 = 0
    end
    if arg3 < 0 or arg3 > 1000000 then
        arg3 = 9999999
    end
    return arg3, f10_local0
    
end

function IsValidEnemySelect(arg0, arg1, arg2, arg3, arg4)
    if 0 < arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY) then
        local f11_local0 = arg1:GetDist(arg4)
        local f11_local1 = GetDistPos(arg0, arg1, arg2, f11_local0)
        if 0 < GetAttackRateByDist(arg0, arg1, arg2, arg3, f11_local1) and arg1:IsOptimalAttackRangeH(TARGET_ENE_0, arg3) then
            if not not arg1:IsOptimalAttackDist(arg4, arg3) or arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE) == 1 and arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE) == 1 then
                return true
            elseif f11_local0 < arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) and arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE) then
                return true
            elseif arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) < f11_local0 and arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE) then
                return true
            end
        end
    end
    return false
    
end

function SelectDeriveAttack(arg0, arg1, arg2, arg3, arg4, arg5)
    local f12_local0 = arg1:GetDist(arg4)
    local f12_local1 = nil
    local f12_local2 = {}
    local f12_local3 = 0
    for f12_local4 = 1, 16, 1 do
        f12_local1 = arg1:GetDeriveAttackID(arg3, f12_local4)
        if f12_local1 <= 0 then
            break
        end
        local f12_local7, f12_local8 = GetAttackIdOffset(arg0, arg1, arg2, f12_local1)
        offset = f12_local8
        f12_local1 = f12_local7
        f12_local7 = print
        f12_local8 = "[SELECT DERIVE]"
        f12_local8 = f12_local8 .. "?h?????[" .. f12_local1 .. "]"
        f12_local7(f12_local8)
        if f12_local1 ~= 9999999 then
            f12_local7 = arg1:IsAIAttackParam(f12_local1)
            if f12_local7 then
                f12_local7 = 0
                if arg5 == 0 then
                    f12_local7 = 1
                elseif arg5 == 1 then
                    f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__IS_FIRST_ATTACK)
                    if f12_local8 == 1 then
                        f12_local7 = 1
                    end
                elseif arg5 == 2 then
                    f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__IS_FIRST_ATTACK)
                    if f12_local8 == 0 then
                        f12_local7 = 1
                    end
                else
                    f12_local8 = print
                    f12_local8("[SELECT DERIVE]" .. "?I???^?C?v???W????[" .. f12_local1 .. "]")
                end
                if f12_local7 == 1 then
                    for f12_local8 = 0, 15, 1 do
                        local f12_local11 = arg1:GetStringIndexedArray("DeriveAttackMemory", f12_local8)
                        if f12_local11 == 9999999 then
                            break
                        end
                        if f12_local1 == f12_local11 then
                            print("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?h???????o?????")
                            f12_local7 = 0
                        else
                            print("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?h??OK")
                        end
                    end
                end
                if f12_local7 == 1 then
                    f12_local8 = arg1:IsFinishAttackCoolTime(f12_local1)
                    if not f12_local8 then
                        f12_local8 = arg1:GetNumber(60)
                        if f12_local8 == 1 then
                            f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                            if f12_local8 <= f12_local0 then
                                f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                if f12_local0 <= f12_local8 then
                                    f12_local8 = arg1:IsOptimalAttackRangeH(TARGET_ENE_0, f12_local1)
                                    if f12_local8 then
                                        f12_local8 = arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN)
                                        if f12_local8 then
                                            f12_local8 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_TARGET_DOWN)
                                            if f12_local8 == 1 then
                                                f12_local3 = f12_local3 + 1
                                                f12_local2[f12_local3] = f12_local1
                                            else
                                                f12_local8 = print
                                                f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?v???C???[?_?E????")
                                            end
                                        end
                                        f12_local3 = f12_local3 + 1
                                        f12_local2[f12_local3] = f12_local1
                                    else
                                        f12_local8 = print
                                        f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?p?x?O")
                                    end
                                else
                                    f12_local8 = print
                                    f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]???O")
                                end
                            end
                            f12_local8 = print
                            f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]???O")
                        else
                            f12_local8 = print
                            f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?C???^?[?o???o?????????")
                        end
                    end
                    f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                    if f12_local8 <= f12_local0 then
                        f12_local8 = arg1:GetAIAttackParam(f12_local1, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                        if f12_local0 <= f12_local8 then
                            f12_local8 = arg1:IsOptimalAttackRangeH(TARGET_ENE_0, f12_local1)
                            if f12_local8 then
                                f12_local8 = arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN)
                                if f12_local8 then
                                    f12_local8 = arg1:GetAIAttackParam(arg3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_TARGET_DOWN)
                                    if f12_local8 == 1 then
                                        f12_local3 = f12_local3 + 1
                                        f12_local2[f12_local3] = f12_local1
                                    else
                                        f12_local8 = print
                                        f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?v???C???[?_?E????")
                                    end
                                end
                                f12_local3 = f12_local3 + 1
                                f12_local2[f12_local3] = f12_local1
                            else
                                f12_local8 = print
                                f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]?p?x?O")
                            end
                        else
                            f12_local8 = print
                            f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]???O")
                        end
                    end
                    f12_local8 = print
                    f12_local8("[SELECT DERIVE]" .. "[" .. f12_local1 .. "]???O")
                end
            else
                f12_local7 = print
                f12_local8 = "[SELECT DERIVE]"
                f12_local8 = f12_local8 .. "[" .. f12_local1 .. "]?f?[?^???"
                f12_local7(f12_local8)
            end
        end
        f12_local7 = print
        f12_local8 = "[SELECT DERIVE]"
        f12_local8 = f12_local8 .. "[" .. f12_local1 .. "]?f?[?^???"
        f12_local7(f12_local8)
    end
    local f12_local4 = {}
    local f12_local5 = 0
    local f12_local6 = 0
    if f12_local3 == 0 then
        print("[SELECT ENEMY]" .. "<<????>> ???I????[???]")
        return 9999999
    elseif f12_local3 > 1 then
        for f12_local7 = 1, f12_local3, 1 do
            local f12_local10 = arg1:GetAttackPassedTime(f12_local2[f12_local7])
            if f12_local10 <= 0 then
                f12_local10 = arg1:GetAIAttackParam(f12_local2[f12_local7], AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) * 2
            end
            f12_local10 = f12_local10 - arg1:GetAIAttackParam(f12_local2[f12_local7], AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC)
            if f12_local10 < 0 then
                f12_local10 = 1
            end
            print("[SELECT DERIVE]" .. "[" .. f12_local2[f12_local7] .. "]?@?o?????[" .. f12_local10 .. "]?@?I?????[?g[" .. arg1:GetAIAttackParam(f12_local2[f12_local7], AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY) .. "]")
            f12_local4[f12_local7] = f12_local10 * arg1:GetAIAttackParam(f12_local2[f12_local7], AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY)
            f12_local5 = f12_local4[f12_local7] + f12_local5
        end
        if f12_local5 > 0 then
            local f12_local7 = arg1:GetRandam_Float(0, f12_local5)
            local f12_local8 = 0
            for f12_local9 = 1, f12_local3, 1 do
                f12_local8 = f12_local8 + f12_local4[f12_local9]
                if f12_local7 <= f12_local8 then
                    print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f12_local2[f12_local9] .. "]")
                    return f12_local2[f12_local9]
                end
            end
        else
            return 9999999
            
        end
    else
        print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f12_local2[1] .. "]")
        return f12_local2[1]
    end
    return 9999999
    
end

RegisterTableGoal(GOAL_EnemyFuncDummy, "GOAL_EnemyFuncDummy")
Goal.Activate = function (arg0, arg1, arg2)
    
end


