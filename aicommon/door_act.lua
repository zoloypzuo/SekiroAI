REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_DoorAct, 0.2, 0.3)
function DoorAct_Activate(arg0, arg1)
    arg0:PrintText("[DoorAct_Activate]Notice ObjAct")
    arg0:SetAllowTriggerNearObjAct()
    
end

function DoorAct_Update(arg0, arg1)
    local f2_local0 = arg0:IsExistReqObjAct()
    local f2_local1 = arg0:HasGoal(GOAL_COMMON_ObjActTest)
    if f2_local0 and f2_local1 == false then
        arg1:AddSubGoal(GOAL_COMMON_ObjActTest, 10, OBJ_ACT_TYPE_DOOR)
    end
    arg1:AddLifeParentSubGoal(0.3)
    return GOAL_RESULT_Continue
    
end

function DoorAct_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DoorAct, true)
function DoorAct_Interupt(arg0, arg1)
    return false
    
end


