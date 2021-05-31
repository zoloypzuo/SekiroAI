function MoveToMovePointAir_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    local f1_local3 = arg1:GetParam(3)
    local f1_local4 = arg1:GetParam(4)
    arg0:SetAIFixedMoveTarget(f1_local0, f1_local2, 0)
    
end

function MoveToMovePointAir_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function MoveToMovePointAir_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_MoveToMovePointAir, true)
function MoveToMovePointAir_Interupt(arg0, arg1)
    return false
    
end


