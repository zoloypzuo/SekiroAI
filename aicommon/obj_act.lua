REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ObjActTest, 0.5, 0.6)
function ObjActTest_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    arg0:KickEvent(0)
    
end

function ObjActTest_Update(arg0, arg1)
    if arg0:IsFinishObjAct() then
        return GOAL_RESULT_Success
    end
    if arg1:GetLife() <= 0 then
        return GOAL_RESULT_Failed
    end
    if not arg0:IsExistReqObjAct() then
        arg1:SetNumber(0, 1)
        return GOAL_RESULT_Failed
    end
    return GOAL_RESULT_Continue
    
end

function ObjActTest_Terminate(arg0, arg1)
    arg0:ClearFinishObjAct()
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ObjActTest, true)
function ObjActTest_Interupt(arg0, arg1)
    return false
    
end


