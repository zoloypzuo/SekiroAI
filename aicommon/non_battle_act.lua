REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 0, "?G????????ûÐ???ym?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 1, "?G??????I???H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 2, "????H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 3, "????yTYPE?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 4, "????????????ym?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 5, "??@???S?[??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 6, "?p???I?t?Z?b?g", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_NonBattleAct, 0.1, 0.2)
function NonBattleAct_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5000) then
        f1_local0 = false
    elseif f1_local0 == 0 then
        f1_local0 = true
    else
        f1_local0 = false
    end
    if arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false and not arg0:HasSpecialEffectId(TARGET_SELF, 5002) then
        local f1_local1 = arg0:GetPlatoonCommand()
        local f1_local2 = f1_local1:GetCommandNo()
        local f1_local3 = arg0:GetDist(TARGET_TEAM_FORMATION)
        if f1_local2 == 5 then
            if arg0:IsSearchTarget(TARGET_ENE_0) then
                local f1_local4 = arg1:GetParam(7)
                local f1_local5 = arg1:GetParam(6)
                arg1:AddSubGoal(GOAL_COMMON_BackToHome_With_Parry, arg1:GetLife())
            elseif f1_local3 < 1 then
                arg1:AddSubGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_TEAM_FORMATION)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, 0.1, TARGET_SELF, f1_local0, 0, nil, AI_CALC_DIST_TYPE__XYZ, arg1:GetParam(6), GUARD_GOAL_DESIRE_RET_Continue, false)
            end
        else
            NonBattleAct_Common(arg0, arg1)
        end
    elseif arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == true then
        NonBattleAct_Common(arg0, arg1)
    else
        NonBattleAct_Common(arg0, arg1)
    end
    
end

function NonBattleAct_Common(arg0, arg1)
    local f2_local0 = arg0:GetPrevMovePointNumber()
    local f2_local1 = arg0:GetMovePointWaitTime(f2_local0)
    local f2_local2 = arg0:GetMovePointAnimId(f2_local0)
    arg0:SetStringIndexedNumber("RouteMoveAction:prevPoint ", f2_local0)
    arg0:SetStringIndexedNumber("RouteMoveAction:AnimId  ", arg0:GetMovePointAnimId(f2_local0))
    arg0:SetStringIndexedNumber("RouteMoveAction:WaitTime", arg0:GetMovePointWaitTime(f2_local0))
    local f2_local3 = arg0:GetMovePointNumber()
    local f2_local4 = arg1:GetParam(2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5000) then
        f2_local4 = false
    elseif f2_local4 == 0 then
        f2_local4 = true
    else
        f2_local4 = false
    end
    if arg0:GetStringIndexedNumber("NonBattleAct_FailedPathMove") > 0 then
        local f2_local5 = arg0:GetActTypeOnNonBattleFailedPathEnd()
        if f2_local5 == AI_FAILED_PATH_NONBTL_ACT_TYPE__STAY then
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, turn_tgt)
        elseif f2_local5 == AI_FAILED_PATH_NONBTL_ACT_TYPE__WALK_AROUND then
            arg1:AddSubGoal(GOAL_COMMON_WalkAround, -1, 0.5, f2_local4)
        end
    elseif f2_local3 >= 0 then
        if not not arg0:HasSpecialEffectId(TARGET_SELF, 205070) or arg0:HasSpecialEffectId(TARGET_SELF, 205071) then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_SELF, 0, 0, 0)
        elseif arg0:IsSearchTarget(TARGET_ENE_0) then
            local f2_local5 = arg1:GetParam(7)
            local f2_local6 = arg1:GetParam(6)
            arg1:AddSubGoal(GOAL_COMMON_BackToHome_With_Parry, arg1:GetLife())
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5001) then
            if arg1:GetLastResult() == GOAL_RESULT_Success then
                local f2_local5 = arg0:GetPrevMovePointNumber()
                local f2_local6 = arg0:GetMovePointWaitTime(f2_local5)
                local f2_local7 = arg0:GetMovePointAnimId(f2_local5)
                if f2_local7 > 0 then
                    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 20, f2_local7, TARGET_SELF)
                end
                if f2_local6 > 0 then
                    arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local6)
                end
                arg0:SetStringIndexedNumber("RouteMoveAction:prevPoint ", f2_local5)
                arg0:SetStringIndexedNumber("RouteMoveAction:AnimId  ", arg0:GetMovePointAnimId(f2_local5))
                arg0:SetStringIndexedNumber("RouteMoveAction:WaitTime", arg0:GetMovePointWaitTime(f2_local5))
            end
            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_MOVE_POINT, 30, arg1:GetParam(6), 0, true)
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f2_local4, 0, 0, AI_CALC_DIST_TYPE__XYZ, arg1:GetParam(6), GUARD_GOAL_DESIRE_RET_Continue, false)
        else
            if arg1:GetLastResult() == GOAL_RESULT_Success then
                local f2_local5 = arg0:GetPrevMovePointNumber()
                local f2_local6 = arg0:GetMovePointWaitTime(f2_local5)
                local f2_local7 = arg0:GetMovePointAnimId(f2_local5)
                if f2_local7 > 0 then
                    arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 20, f2_local7, TARGET_SELF)
                end
                if f2_local6 > 0 then
                    arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local6)
                end
                if f2_local7 > 0 or f2_local6 > 0 then
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_MOVE_POINT, 45, -1, GOAL_RESULT_Success, true)
                end
                arg0:SetStringIndexedNumber("RouteMoveAction:prevPoint ", f2_local5)
                arg0:SetStringIndexedNumber("RouteMoveAction:AnimId  ", arg0:GetMovePointAnimId(f2_local5))
                arg0:SetStringIndexedNumber("RouteMoveAction:WaitTime", arg0:GetMovePointWaitTime(f2_local5))
            end
            local f2_local5 = arg0:GetMovePointNumber()
            local f2_local6 = arg0:GetMovePointWaitTime(f2_local5)
            local f2_local7 = arg0:GetMovePointAnimId(f2_local5)
            if f2_local7 > 0 or f2_local6 > 0 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f2_local4, 0, 0, AI_CALC_DIST_TYPE__XYZ, arg1:GetParam(6), GUARD_GOAL_DESIRE_RET_Continue, false)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f2_local4, 0, arg1:GetParam(6), GUARD_GOAL_DESIRE_RET_Continue, false)
            end
        end
    else
        local f2_local5 = arg0:GetMovePointEffectRange()
        local f2_local6 = arg1:GetParam(3)
        local f2_local7 = arg1:GetParam(4)
        local f2_local8 = arg0:GetSmallActAnimId()
        local f2_local9 = arg0:GetSmallActPreWaitTime()
        local f2_local10 = arg0:GetSmallActPostWaitTime()
        arg0:SetStringIndexedNumber("changePosition", arg0:IsChangeInitialPosition())
        if f2_local7 == 0 then
            f2_local7 = 1
        end
        if f2_local7 < f2_local5 then
            local f2_local11 = arg1:GetParam(7)
            if not not arg0:HasSpecialEffectId(TARGET_SELF, 205070) or arg0:HasSpecialEffectId(TARGET_SELF, 205071) then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_SELF, 0, 0, 0)
            else
                local f2_local12 = arg1:GetParam(7)
                local f2_local13 = arg1:GetParam(6)
                arg1:AddSubGoal(GOAL_COMMON_BackToHome_With_Parry, arg1:GetLife())
            end
        else
            arg0:SetStringIndexedNumber("SmallAct:toutatsu ", 1)
            if arg0:GetMovePointType() == 6 then
                arg1:AddSubGoal(GOAL_COMMON_WalkAround, -1, 0.5, true)
            elseif arg0:IsChangeInitialPosition() == false and f2_local8 >= 0 then
                arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_INIT_POSE, 15, -1, GOAL_RESULT_Success, true)
                arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local9)
                arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 20, f2_local8, TARGET_SELF)
                arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local10)
                arg0:SetStringIndexedNumber("SmallAct:animeId ", f2_local8)
                arg0:SetStringIndexedNumber("SmallAct:preWaitTime ", f2_local9)
                arg0:SetStringIndexedNumber("SmallAct:postWaitTime ", f2_local10)
            elseif arg1:IsExistParam(5) then
                local f2_local11 = arg1:GetParam(5)
                if f2_local11 > 0 then
                    arg1:AddSubGoal(f2_local11, arg1:GetLife())
                else
                    local f2_local12 = arg0:GetMovePointAnimId(f2_local0)
                    if f2_local12 > 0 and arg0:GetNumber(AI_NUMBER_LAST_POINT_ACTION) == 0 then
                        local f2_local13 = arg0:GetPrevMovePointNumber()
                        local f2_local14 = arg0:GetMovePointWaitTime(f2_local13)
                        if f2_local12 > 0 then
                            arg1:AddSubGoal(GOAL_COMMON_Turn, 3, POINT_INIT_POSE, 30, arg1:GetParam(6), 0, true)
                            local f2_local15 = arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, 20, f2_local12, POINT_INIT_POSE)
                            f2_local15:TimingSetNumber(AI_NUMBER_LAST_POINT_ACTION, 1, AI_TIMING_SET__ACTIVATE)
                        end
                        if f2_local14 > 0 then
                            arg1:AddSubGoal(GOAL_COMMON_Wait, f2_local14)
                        end
                        arg0:SetStringIndexedNumber("RouteMoveAction:prevPoint ", f2_local13)
                        arg0:SetStringIndexedNumber("RouteMoveAction:AnimId  ", arg0:GetMovePointAnimId(f2_local13))
                        arg0:SetStringIndexedNumber("RouteMoveAction:WaitTime", arg0:GetMovePointWaitTime(f2_local13))
                    end
                    if arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_NOT_TURN_TO_POINT_INITIAL) then
                        arg1:AddSubGoal(GOAL_COMMON_Wait, 10)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, f2_local6)
                    end
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_NOT_TURN_TO_POINT_INITIAL) then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 10)
            else
                arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, f2_local6)
            end
        end
    end
    
end

function NonBattleAct_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function NonBattleAct_Terminate(arg0, arg1)
    
end

function NonBattleAct_Interupt(arg0, arg1)
    local f5_local0 = false
    if not f5_local0 then
        f5_local0 = arg0:IsInterupt(INTERUPT_Damaged_Stranger)
    end
    if not f5_local0 then
        f5_local0 = arg0:IsInterupt(INTERUPT_Damaged)
    end
    if f5_local0 then
        arg1:SetTimer(1, 99999)
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and (arg0:IsValidPlatoon() ~= true or arg0:IsPlatoonLeader() ~= true) then
        arg0:ResetInitialPosition()
        arg0:SetStringIndexedNumber("NonBattleAct_FailedPathMove", 1)
        local f5_local1 = arg0:GetActTypeOnNonBattleFailedPathEnd()
        if f5_local1 == AI_FAILED_PATH_NONBTL_ACT_TYPE__WALK_AROUND then
            arg0:SetNonBattleWalkAroundMode(true)
        end
        arg0:Replanning()
        return true
    end
    return false
    
end


