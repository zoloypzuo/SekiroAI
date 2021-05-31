REGISTER_GOAL_USE_AVOID_CHR(GOAL_COMMON_SidewayMoveAvoidChr, true)
function _COMMON_GetEzStateAnimId(arg0, arg1)
    ret = {}
    local f1_local0 = 1
    for f1_local1 = 1, 30, 1 do
        local f1_local4 = ret
        f1_local4[f1_local1] = arg0:GetEzStateAnimId(arg1, f1_local1 - 1)
    end
    local f1_local1 = ret
    return f1_local1
    
end

function _COMMON_GetMinDist(arg0, arg1)
    ret = {}
    local f2_local0 = 1
    for f2_local1 = 1, 30, 1 do
        local f2_local4 = ret
        f2_local4[f2_local1] = arg0:GetMinDist(arg1, f2_local1 - 1)
    end
    local f2_local1 = ret
    return f2_local1
    
end

function _COMMON_GetMaxDist(arg0, arg1)
    ret = {}
    local f3_local0 = 0
    for f3_local1 = 0, 29, 1 do
        local f3_local4 = ret
        f3_local4[f3_local1] = arg0:GetMaxDist(arg1, f3_local1 - 1)
    end
    local f3_local1 = ret
    return f3_local1
    
end

function _COMMON_GetAtkDistType(arg0, arg1)
    ret = {}
    local f4_local0 = 1
    for f4_local1 = 1, 30, 1 do
        local f4_local4 = ret
        f4_local4[f4_local1] = arg0:GetAtkDistType(arg1, f4_local1 - 1)
        if ret[f4_local1] == 0 then
            ret[f4_local1] = DIST_Near
        elseif ret[f4_local1] == 1 then
            ret[f4_local1] = DIST_Middle
        elseif ret[f4_local1] == 2 then
            ret[f4_local1] = DIST_Far
        elseif ret[f4_local1] == 3 then
            ret[f4_local1] = DIST_Out
        elseif ret[f4_local1] == 4 then
            ret[f4_local1] = DIST_None
        end
    end
    local f4_local1 = ret
    return f4_local1
    
end

function _COMMON_GetOddsParam(arg0, arg1)
    ret = {}
    local f5_local0 = arg0:GetOddsParamIdOffset(100)
    local f5_local1 = 0
    for f5_local2 = 0, 99, 1 do
        local f5_local5 = ret
        f5_local5[f5_local2] = arg0:GetOddsParam(f5_local0 + arg1, f5_local2)
    end
    local f5_local2 = ret
    return f5_local2
    
end

function _COMMON_MulOddsXWeight(arg0, arg1)
    local f6_local0 = 0
    local f6_local1 = true
    local f6_local2 = table.getn(arg1)
    if f6_local2 == 0 then
        f6_local1 = false
    end
    f6_local2 = 0
    local f6_local3 = 0
    for f6_local4 = 0, 99, 1 do
        if f6_local1 == false then
            arg1[f6_local4] = 1
        end
        arg0[f6_local4] = arg0[f6_local4] * arg1[f6_local4]
        if arg0[f6_local4] < 0 then
            arg0[f6_local4] = 0
        end
        arg0[f6_local4] = arg0[f6_local4] + f6_local2
        f6_local2 = arg0[f6_local4]
        if f6_local3 < arg0[f6_local4] then
            f6_local3 = arg0[f6_local4]
        end
    end
    return f6_local3
    
end

function _COMMON_MulWeightParam(arg0, arg1, arg2)
    local f7_local0 = false
    if table.getn(arg1) == 0 then
        f7_local0 = true
    end
    local f7_local1 = arg0:GetOddsParamIdOffset(100)
    local f7_local2 = 0
    for f7_local3 = 0, 99, 1 do
        if f7_local0 then
            arg1[f7_local3] = 1
        end
        arg1[f7_local3] = arg1[f7_local3] * arg0:GetOddsParam(f7_local1 + arg2, f7_local3)
    end
    
end

function _COMMON_SetEnemyActRate(arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("ActRate01", arg3)
    arg1:SetStringIndexedNumber("ActRate02", arg3)
    arg1:SetStringIndexedNumber("ActRate03", arg3)
    arg1:SetStringIndexedNumber("ActRate04", arg3)
    arg1:SetStringIndexedNumber("ActRate05", arg3)
    arg1:SetStringIndexedNumber("ActRate06", arg3)
    arg1:SetStringIndexedNumber("ActRate07", arg3)
    arg1:SetStringIndexedNumber("ActRate08", arg3)
    arg1:SetStringIndexedNumber("ActRate09", arg3)
    arg1:SetStringIndexedNumber("ActRate10", arg3)
    arg1:SetStringIndexedNumber("ActRate11", arg3)
    arg1:SetStringIndexedNumber("ActRate12", arg3)
    arg1:SetStringIndexedNumber("ActRate13", arg3)
    arg1:SetStringIndexedNumber("ActRate14", arg3)
    arg1:SetStringIndexedNumber("ActRate15", arg3)
    arg1:SetStringIndexedNumber("ActRate16", arg3)
    arg1:SetStringIndexedNumber("ActRate17", arg3)
    arg1:SetStringIndexedNumber("ActRate18", arg3)
    arg1:SetStringIndexedNumber("ActRate19", arg3)
    arg1:SetStringIndexedNumber("ActRate20", arg3)
    
end

function _COMMON_InitEnemyAct(arg0, arg1, arg2)
    _COMMON_SetEnemyActRate(arg0, arg1, arg2, 1)
    for f9_local0 = 1, 15, 1 do
        arg1:StartIdTimer(f9_local0 + 10000000)
    end
    for f9_local0 = 7000, 7008, 1 do
        arg1:StartIdTimer(f9_local0 + 7100000)
    end
    for f9_local0 = 3000, 3030, 1 do
        if arg1:IsAIAttackParam(f9_local0) then
            if arg1:GetAIAttackParam(f9_local0, AI_ATTACK_PARAM_TYPE__IS_SELECTABLE_ON_BATTLE_START) == 0 then
                arg1:StartAttackPassedTimer(f9_local0, 0)
            else
                arg1:StartAttackPassedTimer(f9_local0, arg1:GetAIAttackParam(f9_local0, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC))
            end
        end
    end
    for f9_local0 = 7000, 7010, 1 do
        if arg1:IsAIAttackParam(f9_local0) then
            if arg1:GetAIAttackParam(f9_local0, AI_ATTACK_PARAM_TYPE__IS_SELECTABLE_ON_BATTLE_START) == 0 then
                arg1:StartAttackPassedTimer(f9_local0, 0)
            else
                arg1:StartAttackPassedTimer(f9_local0, arg1:GetAIAttackParam(f9_local0, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC))
            end
        end
    end
    
end

function _COMMON_SelectEnemyAct(arg0, arg1, arg2, arg3, arg4, arg5)
    local f10_local0 = 30
    local f10_local1 = {}
    local f10_local2 = 0
    local f10_local3 = nil
    local f10_local4 = 0
    local f10_local5 = {arg0.Act01, arg0.Act02, arg0.Act03, arg0.Act04, arg0.Act05, arg0.Act06, arg0.Act07, arg0.Act08, arg0.Act09, arg0.Act10, arg0.Act11, arg0.Act12, arg0.Act13, arg0.Act14, arg0.Act15, arg0.Act16, arg0.Act17, arg0.Act18, arg0.Act19, arg0.Act20, arg0.Act21, arg0.Act22, arg0.Act23, arg0.Act24, arg0.Act25, arg0.Act26, arg0.Act27, arg0.Act28, arg0.Act29, arg0.Act30}
    local f10_local6 = {arg1:GetStringIndexedNumber("ActRate01"), arg1:GetStringIndexedNumber("ActRate02"), arg1:GetStringIndexedNumber("ActRate03"), arg1:GetStringIndexedNumber("ActRate04"), arg1:GetStringIndexedNumber("ActRate05"), arg1:GetStringIndexedNumber("ActRate06"), arg1:GetStringIndexedNumber("ActRate07"), arg1:GetStringIndexedNumber("ActRate08"), arg1:GetStringIndexedNumber("ActRate09"), arg1:GetStringIndexedNumber("ActRate10"), arg1:GetStringIndexedNumber("ActRate11"), arg1:GetStringIndexedNumber("ActRate12"), arg1:GetStringIndexedNumber("ActRate13"), arg1:GetStringIndexedNumber("ActRate14"), arg1:GetStringIndexedNumber("ActRate15"), arg1:GetStringIndexedNumber("ActRate16"), arg1:GetStringIndexedNumber("ActRate17"), arg1:GetStringIndexedNumber("ActRate18"), arg1:GetStringIndexedNumber("ActRate19"), arg1:GetStringIndexedNumber("ActRate20"), arg1:GetStringIndexedNumber("ActRate21"), arg1:GetStringIndexedNumber("ActRate22"), arg1:GetStringIndexedNumber("ActRate23"), arg1:GetStringIndexedNumber("ActRate24"), arg1:GetStringIndexedNumber("ActRate25"), arg1:GetStringIndexedNumber("ActRate26"), arg1:GetStringIndexedNumber("ActRate27"), arg1:GetStringIndexedNumber("ActRate28"), arg1:GetStringIndexedNumber("ActRate29"), arg1:GetStringIndexedNumber("ActRate30")}
    local f10_local7 = {arg0.ActBase01, arg0.ActBase02, arg0.ActBase03, arg0.ActBase04, arg0.ActBase05, arg0.ActBase06, arg0.ActBase07, arg0.ActBase08, arg0.ActBase09, arg0.ActBase10, arg0.ActBase11, arg0.ActBase12, arg0.ActBase13, arg0.ActBase14, arg0.ActBase15, arg0.ActBase16, arg0.ActBase17, arg0.ActBase18, arg0.ActBase19, arg0.ActBase20, arg0.ActBase21, arg0.ActBase22, arg0.ActBase23, arg0.ActBase24, arg0.ActBase25, arg0.ActBase26, arg0.ActBase27, arg0.ActBase28, arg0.ActBase29, arg0.ActBase30}
    local f10_local8 = arg3
    if f10_local8 == nil then
        f10_local8 = TARGET_ENE_0
    end
    local f10_local9 = nil
    if arg4 == nil or arg4 <= 0 then
        f10_local9 = arg1:GetDist(f10_local8)
    else
        if arg5 == nil then
            arg5 = 1
        end
        arg1:SetAIPredictionMoveTargetSpecifyTargetDir(arg4, AI_DIR_TYPE_L, 0, arg5)
        f10_local9 = arg1:GetDist(POINT_AIPredictionTargetPos)
    end
    local f10_local10 = false
    local f10_local11 = GetDistPos(arg0, arg1, arg2, f10_local9)
    for f10_local12 = 1, 1, 1 do
        if f10_local12 == 2 and f10_local2 > 0 then
            break
        end
        for f10_local15 = 1, f10_local0, 1 do
            f10_local3 = f10_local7[f10_local15]
            if f10_local3 ~= nil and f10_local3 ~= 9999999 then
                local f10_local18, f10_local19 = GetAttackIdOffset(arg0, arg1, arg2, f10_local3)
                f10_local4 = f10_local19
                f10_local3 = f10_local18
                if f10_local3 ~= 9999999 then
                    f10_local18 = arg1:IsAIAttackParam(f10_local3)
                    if f10_local18 then
                        f10_local18 = arg1:IsFinishAttackCoolTime(f10_local3)
                        if not f10_local18 then
                            f10_local18 = arg1:GetNumber(60)
                            if f10_local18 == 1 then
                                f10_local18 = false
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                                if f10_local19 <= f10_local9 then
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                    if f10_local9 > f10_local19 then
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                        if f10_local19 == 1 then
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                            if f10_local19 == 1 then
                                                f10_local18 = true
                                            end
                                        end
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                                        if f10_local9 < f10_local19 then
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                            if f10_local19 == 1 then
                                                f10_local18 = true
                                            else
                                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                                if f10_local19 < f10_local9 then
                                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                                    if f10_local19 == 1 then
                                                        f10_local18 = true
                                                    else
                                                        f10_local19 = print
                                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                                    end
                                                end
                                                f10_local19 = print
                                                f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                            end
                                        end
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                        if f10_local19 < f10_local9 then
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                            if f10_local19 == 1 then
                                                f10_local18 = true
                                            else
                                                f10_local19 = print
                                                f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                            end
                                        end
                                        f10_local19 = print
                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                    else
                                        f10_local18 = true
                                    end
                                else
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                    if f10_local19 == 1 then
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                        if f10_local19 == 1 then
                                            f10_local18 = true
                                        end
                                    end
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                                    if f10_local9 < f10_local19 then
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                        if f10_local19 == 1 then
                                            f10_local18 = true
                                        else
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                            if f10_local19 < f10_local9 then
                                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                                if f10_local19 == 1 then
                                                    f10_local18 = true
                                                else
                                                    f10_local19 = print
                                                    f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                                end
                                            end
                                            f10_local19 = print
                                            f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                        end
                                    end
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                    if f10_local19 < f10_local9 then
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                        if f10_local19 == 1 then
                                            f10_local18 = true
                                        else
                                            f10_local19 = print
                                            f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                        end
                                    end
                                    f10_local19 = print
                                    f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                end
                                if f10_local18 then
                                    f10_local19 = f10_local6[f10_local15]
                                    if f10_local19 > 0 then
                                        f10_local19 = GetAttackRateByDist
                                        f10_local19 = f10_local19(arg0, arg1, arg2, f10_local3, f10_local11)
                                        if f10_local19 > 0 then
                                            f10_local19 = arg1:IsOptimalAttackRangeH(TARGET_ENE_0, f10_local3)
                                            if f10_local19 then
                                                f10_local19 = arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN)
                                                if f10_local19 then
                                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_TARGET_DOWN)
                                                    if f10_local19 == 1 then
                                                        f10_local2 = f10_local2 + 1
                                                        f10_local1[f10_local2] = f10_local15
                                                    else
                                                        f10_local19 = print
                                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@?v???C???[?_?E?????U???s??[" .. f10_local3 .. "]")
                                                    end
                                                end
                                                f10_local2 = f10_local2 + 1
                                                f10_local1[f10_local2] = f10_local15
                                            else
                                                f10_local19 = print
                                                f10_local19("[SELECT ENEMY]" .. "?@?@?@???p?x?O[" .. f10_local3 .. "]")
                                            end
                                        else
                                            f10_local19 = print
                                            f10_local19("[SELECT ENEMY]" .. "?@?@?@?????[?g0[" .. f10_local3 .. "]")
                                        end
                                    else
                                        f10_local19 = print
                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@Act???[?g0[" .. f10_local3 .. "]")
                                    end
                                end
                            else
                                f10_local18 = print
                                f10_local19 = "[SELECT ENEMY]"
                                f10_local19 = f10_local19 .. "?@?@?@?C???^?[?o????[" .. f10_local3 .. "]"
                                f10_local18(f10_local19)
                            end
                        end
                        f10_local18 = false
                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                        if f10_local19 <= f10_local9 then
                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                            if f10_local9 > f10_local19 then
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                if f10_local19 == 1 then
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                    if f10_local19 == 1 then
                                        f10_local18 = true
                                    end
                                end
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                                if f10_local9 < f10_local19 then
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                    if f10_local19 == 1 then
                                        f10_local18 = true
                                    else
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                        if f10_local19 < f10_local9 then
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                            if f10_local19 == 1 then
                                                f10_local18 = true
                                            else
                                                f10_local19 = print
                                                f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                            end
                                        end
                                        f10_local19 = print
                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                    end
                                end
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                if f10_local19 < f10_local9 then
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                    if f10_local19 == 1 then
                                        f10_local18 = true
                                    else
                                        f10_local19 = print
                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                    end
                                end
                                f10_local19 = print
                                f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                            else
                                f10_local18 = true
                            end
                        else
                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                            if f10_local19 == 1 then
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                if f10_local19 == 1 then
                                    f10_local18 = true
                                end
                            end
                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
                            if f10_local9 < f10_local19 then
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE)
                                if f10_local19 == 1 then
                                    f10_local18 = true
                                else
                                    f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                                    if f10_local19 < f10_local9 then
                                        f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                        if f10_local19 == 1 then
                                            f10_local18 = true
                                        else
                                            f10_local19 = print
                                            f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                        end
                                    end
                                    f10_local19 = print
                                    f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                end
                            end
                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE)
                            if f10_local19 < f10_local9 then
                                f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE)
                                if f10_local19 == 1 then
                                    f10_local18 = true
                                else
                                    f10_local19 = print
                                    f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                                end
                            end
                            f10_local19 = print
                            f10_local19("[SELECT ENEMY]" .. "?@?@?@???O[" .. f10_local3 .. "]?@?@????F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) .. "?@?@???F" .. arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) .. "?@?@????????F" .. f10_local9)
                        end
                        if f10_local18 then
                            f10_local19 = f10_local6[f10_local15]
                            if f10_local19 > 0 then
                                f10_local19 = GetAttackRateByDist
                                f10_local19 = f10_local19(arg0, arg1, arg2, f10_local3, f10_local11)
                                if f10_local19 > 0 then
                                    f10_local19 = arg1:IsOptimalAttackRangeH(TARGET_ENE_0, f10_local3)
                                    if f10_local19 then
                                        f10_local19 = arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN)
                                        if f10_local19 then
                                            f10_local19 = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_TARGET_DOWN)
                                            if f10_local19 == 1 then
                                                f10_local2 = f10_local2 + 1
                                                f10_local1[f10_local2] = f10_local15
                                            else
                                                f10_local19 = print
                                                f10_local19("[SELECT ENEMY]" .. "?@?@?@?v???C???[?_?E?????U???s??[" .. f10_local3 .. "]")
                                            end
                                        end
                                        f10_local2 = f10_local2 + 1
                                        f10_local1[f10_local2] = f10_local15
                                    else
                                        f10_local19 = print
                                        f10_local19("[SELECT ENEMY]" .. "?@?@?@???p?x?O[" .. f10_local3 .. "]")
                                    end
                                else
                                    f10_local19 = print
                                    f10_local19("[SELECT ENEMY]" .. "?@?@?@?????[?g0[" .. f10_local3 .. "]")
                                end
                            else
                                f10_local19 = print
                                f10_local19("[SELECT ENEMY]" .. "?@?@?@Act???[?g0[" .. f10_local3 .. "]")
                            end
                        end
                    end
                end
            end
        end
    end
    local f10_local12 = {}
    local f10_local13 = 0
    local f10_local14 = 0
    if f10_local2 == 0 then
        print("[SELECT ENEMY]" .. "<<????>> ???I????[???]")
        return nil
    elseif f10_local2 > 1 then
        for f10_local15 = 1, f10_local2, 1 do
            f10_local3 = f10_local7[f10_local1[f10_local15]] - f10_local4
            local f10_local18 = 1
            if f10_local6[f10_local1[f10_local15]] ~= nil then
                f10_local18 = f10_local6[f10_local1[f10_local15]]
            end
            local f10_local19 = arg1:GetAttackPassedTime(f10_local3)
            if f10_local19 <= 0 then

            else

            end
            f10_local19 = f10_local19 - arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC)
            if f10_local19 < 0 then
                f10_local19 = 1
                print("[SELECT ENEMY]" .. "*****?@?o??????")
            end
            local f10_local20 = arg1:GetIdTimer(f10_local1[f10_local15] + 10000000)
            if f10_local20 <= 0 then
                arg1:StartIdTimer(f10_local1[f10_local15] + 10000000)
            end
            f10_local12[f10_local15] = arg1:GetAIAttackParam(f10_local3, AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY) * f10_local18 * GetAttackRateByDist(arg0, arg1, arg2, f10_local3, f10_local11)
            print("[SELECT ENEMY]" .. "?@?@?@?@?@?@?@?@?@?@?@?I?????U??[" .. f10_local3 .. "][" .. f10_local1[f10_local15] .. "]?@?U?????[?g[" .. f10_local12[f10_local15] .. "]    ACT???[?g[" .. f10_local20 .. "]?@?o?????[" .. f10_local19 .. "]?@?X?N???v?g???[?g[" .. f10_local18 .. "]?@?v?l???[?g?F" .. GetAttackRateByDist(arg0, arg1, arg2, f10_local3, f10_local11) .. "?@???????[?g?F" .. f10_local14)
            f10_local13 = f10_local12[f10_local15] + f10_local13
        end
        if f10_local13 > 0 then
            local f10_local15 = arg1:GetRandam_Float(0, f10_local13)
            local f10_local16 = 0
            for f10_local17 = 1, f10_local2, 1 do
                f10_local16 = f10_local16 + f10_local12[f10_local17]
                if f10_local15 <= f10_local16 then
                    print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f10_local1[f10_local17] .. "]" .. f10_local7[f10_local1[f10_local17]])
                    arg1:StartIdTimer(f10_local1[f10_local17] + 10000000)
                    return f10_local5[f10_local1[f10_local17]]
                end
            end
        else
            return nil
            
        end
    else
        print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f10_local1[1] .. "]" .. f10_local7[f10_local1[1]])
        arg1:StartIdTimer(f10_local1[1] + 10000000)
        return f10_local5[f10_local1[1]]
    end
    return nil
    
end


