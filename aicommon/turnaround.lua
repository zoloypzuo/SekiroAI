REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 0, "??????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 1, "????????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 2, "?p?x?y?x?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 3, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 4, "??????????H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 5, "?K?[?hEzState???", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_TurnAround, 0.1, 0.2)
function TurnAround_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(3)
    local f1_local3 = arg1:GetParam(5)
    if f1_local3 > 0 then
        arg1:AddSubGoal(GOAL_COMMON_Guard, arg1:GetLife(), f1_local3, f1_local0, 0, 0)
    end
    arg0:TurnTo(f1_local0)
    local f1_local4 = arg0:GetTurnAroundOptimizedDirection(f1_local0, f1_local1)
    arg0:SetMoveLROnly(true)
    arg0:MoveTo(TARGET_SELF, f1_local4, 10, f1_local2, 0)
    if f1_local4 == AI_DIR_TYPE_L then
        arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, f1_local0, 0)
    elseif f1_local4 == AI_DIR_TYPE_R then
        arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, f1_local0, 0)
    end
    
end

function TurnAround_Update(arg0, arg1, arg2)
    local f2_local0 = arg1:GetParam(1)
    local f2_local1 = arg1:GetParam(2)
    local f2_local2 = arg1:GetParam(4)
    local f2_local3 = 999
    if arg0:IsInsideTargetEx(targetType, TARGET_SELF, f2_local0, f2_local1, f2_local3) then
        return GOAL_RESULT_Success
    end
    if f2_local2 ~= 0 and arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg0:CannotMove() then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function TurnAround_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TurnAround, true)
function TurnAround_Interupt(arg0, arg1)
    return false
    
end


