REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 0, "EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 1, "?U?????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 2, "?????????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 3, "?U???O??????y?b?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 4, "???????p?x?y?x?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Attack3, 5, "?K???????????H", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Attack3, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Attack3, true)
function Attack3_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(3)
    local f1_local3 = arg1:GetParam(4)
    if f1_local2 < 0 then
        f1_local2 = 1.5
    end
    if f1_local3 < 0 then
        f1_local3 = 10
    end
    arg1:SetNumber(0, f1_local3)
    arg1:SetTimer(0, f1_local2)
    arg0:TurnTo(f1_local1)
    if arg0:IsLookToTarget(f1_local3) then
        arg0:SetAttackRequest(f1_local0)
    end
    arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_Attack, f1_local1, 0)
    
end

function Attack3_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(2)
    local f2_local3 = arg1:GetNumber(0)
    local f2_local4 = arg1:GetParam(5)
    if arg0:IsFinishAttack() then
        local f2_local5 = arg0:GetDist(f2_local1)
        local f2_local6 = arg0:GetDistParam(f2_local2)
        if arg0:IsHitAttack() then
            return GOAL_RESULT_Success
        elseif f2_local6 < f2_local5 then
            if f2_local4 == 0 then
                return GOAL_RESULT_Failed
            else
                return GOAL_RESULT_Success
            end
        else
            return GOAL_RESULT_Success
        end
    end
    if arg0:IsStartAttack() == false then
        if arg0:IsLookToTarget(f2_local3) then
            arg0:SetAttackRequest(f2_local0)
        elseif arg1:IsFinishTimer(0) then
            arg0:SetAttackRequest(f2_local0)
        end
    end
    arg0:TurnTo(f2_local1)
    return GOAL_RESULT_Continue
    
end

function Attack3_Terminate(arg0, arg1)
    
end

function Attack3_Interupt(arg0, arg1)
    return false
    
end


