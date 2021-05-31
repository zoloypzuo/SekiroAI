function TeamReplyHelp_Activate(arg0, arg1)
    local f1_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MinWaitTime)
    local f1_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MaxWaitTime)
    local f1_local2 = arg0:GetRandam_Float(f1_local0, f1_local1)
    arg1:AddSubGoal(GOAL_COMMON_Wait, f1_local2, TARGET_SELF)
    arg0:TeamHelp_Reply()
    local f1_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyActionId)
    if f1_local3 ~= -1 then
        arg1:AddSubGoal(GOAL_COMMON_Attack, arg1:GetLife(), f1_local3, TARGET_FRI_0, DIST_None)
    end
    local f1_local4 = 0
    local f1_local5 = 1
    local f1_local6 = 2
    local f1_local7 = 3
    local f1_local8 = 4
    local f1_local9 = 5
    local f1_local10 = 6
    local f1_local11 = 7
    local f1_local12 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyBehaviorType)
    if f1_local12 == f1_local4 then
        local f1_local13 = arg0:GetDist(TARGET_FRI_0)
        if f1_local13 > 3 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif f1_local12 == f1_local5 then
        local f1_local13 = arg0:GetDist(TARGET_FRI_0)
        if f1_local13 > 3 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif f1_local12 == f1_local6 then
        local f1_local13 = arg0:GetDist(TARGET_FRI_0)
        if f1_local13 > 3 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif f1_local12 == f1_local7 then
        local f1_local13 = arg0:GetDist(TARGET_FRI_0)
        if f1_local13 > 3 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_FRI_0)
        end
    elseif f1_local12 == f1_local8 then

    elseif f1_local12 == f1_local9 then

    elseif f1_local12 == f1_local10 then
        local f1_local13 = arg0:GetDist(POINT_AI_FIXED_POS)
        if f1_local13 > 2 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, POINT_AI_FIXED_POS)
        end
    elseif f1_local12 == f1_local11 then
        local f1_local13 = arg0:GetDist(POINT_AI_FIXED_POS)
        if f1_local13 > 2 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, POINT_AI_FIXED_POS)
        end
    end
    
end

function TeamReplyHelp_Update(arg0, arg1)
    
end

function TeamReplyHelp_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamReplyHelp, true)
function TeamReplyHelp_Interupt(arg0, arg1)
    return false
    
end


