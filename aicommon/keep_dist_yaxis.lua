REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_KeepDistYAxis, 0.5, 0.6)
function KeepDistYAxis_Activate(arg0, arg1)
    arg1:SetNumber(0, 0)
    local f1_local0 = arg1:GetParam(3)
    arg0:TurnTo(f1_local0)
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = arg0:GetDistYSigned(f1_local1)
    local f1_local3 = arg1:GetParam(1)
    local f1_local4 = arg1:GetParam(2)
    if f1_local3 <= -f1_local2 and -f1_local2 <= f1_local4 then
        arg1:SetNumber(0, 2)
    end
    
end

function KeepDistYAxis_Update(arg0, arg1)
    if arg1:GetNumber(0) == 2 then
        return GOAL_RESULT_Success
    end
    local f2_local0 = arg1:GetParam(3)
    arg0:TurnTo(f2_local0)
    local f2_local1 = arg1:GetParam(0)
    local f2_local2 = arg0:GetDistYSigned(f2_local1)
    local f2_local3 = arg1:GetParam(1)
    local f2_local4 = arg1:GetParam(2)
    if f2_local3 <= -f2_local2 and -f2_local2 <= f2_local4 then
        arg1:SetNumber(0, 1)
    end
    if arg0:IsStartAttack() == false or arg0:IsEnableCancelMove() then
        if arg1:GetNumber(0) ~= 0 then
            arg1:SetNumber(0, 0)
            return GOAL_RESULT_Success
        elseif -f2_local2 < f2_local3 then
            arg0:SetAttackRequest(705)
        elseif f2_local4 < -f2_local2 then
            arg0:SetAttackRequest(706)
        end
    end
    return GOAL_RESULT_Continue
    
end

function KeepDistYAxis_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_KeepDistYAxis, true)
function KeepDistYAxis_Interupt(arg0, arg1)
    return false
    
end


