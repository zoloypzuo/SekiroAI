REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_LadderAct, true)
function _GetId(arg0, arg1)
    local f1_local0 = false
    if not not arg1:IsNpcPlayer() or arg1:IsLocalPlayer() then
        f1_local0 = true
    end
    local f1_local1 = arg0
    if f1_local0 == true then
        if arg0 == 7210 then
            f1_local1 = NPC_ATK_Ladder_10
        elseif arg0 == 7211 then
            f1_local1 = NPC_ATK_Ladder_11
        elseif arg0 == 7212 then
            f1_local1 = NPC_ATK_Ladder_12
        elseif arg0 == 7213 then
            f1_local1 = NPC_ATK_Ladder_13
        elseif arg0 == 7220 then
            f1_local1 = NPC_ATK_Ladder_20
        elseif arg0 == 7221 then
            f1_local1 = NPC_ATK_Ladder_21
        elseif arg0 == 7222 then
            f1_local1 = NPC_ATK_Ladder_22
        elseif arg0 == 7223 then
            f1_local1 = NPC_ATK_Ladder_23
        end
    end
    return f1_local1
    
end

local f0_local0 = -1
local f0_local1 = 0
local f0_local2 = 1
local f0_local3 = 2
local f0_local4 = 3
local f0_local5 = 4
local f0_local6 = 5
local f0_local7 = 6
local f0_local8 = 7
local f0_local9 = 8
local f0_local10 = 9
local f0_local11 = 23
local f0_local12 = 7210
local f0_local13 = 7220
local f0_local14 = 7230
function LadderAct_Activate(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(2)
    local f2_local3 = f2_local2
    local f2_local4 = arg0:GetLadderActState(TARGET_SELF)
    local f2_local5 = 0
    local f2_local6 = arg0:CalcGetNearestLadderActDmyIdByLadderObj()
    if f2_local6 == 191 then
        f2_local5 = _GetId(7210, arg0)
    else
        f2_local5 = _GetId(7220, arg0)
    end
    if f2_local4 == f0_local0 then
        if arg0:IsChrAroundLadderEdge(2, f2_local6) == false then
            arg0:SetPosAngBy1stNearObjDmyId(f2_local6)
            arg0:SetAttackRequest(f2_local5)
        elseif f2_local6 == 192 then

        elseif f2_local6 == 191 then
            return GOAL_RESULT_Failed
        else

        end
    end
    arg0:OnStartLadderGoal()
    
end

function LadderAct_Update(arg0, arg1)
    local f3_local0 = arg1:GetParam(0)
    local f3_local1 = arg1:GetParam(1)
    if arg0:LastPathFindingIsFailed() == false and arg0:HasPathResult() == false then
        arg0:FollowPath(f3_local1, AI_DIR_TYPE_CENTER, 1.5, true, 0)
    end
    arg0:OnUpdateLadderGoal()
    local f3_local2 = arg0:GetLadderDirMove(TARGET_ENE_0)
    arg0:DoEzAction(0, -1)
    local f3_local3 = arg0:GetLadderActState(TARGET_SELF)
    local f3_local4 = false
    if f3_local3 == f0_local9 or f3_local3 == f0_local10 then
        f3_local4 = true
    elseif not not arg0:IsFinishAttack() or arg0:IsEnableComboAttack() then
        f3_local4 = true
    end
    if f3_local4 then
        if f3_local3 == f0_local0 then
            return GOAL_RESULT_Success
        elseif f3_local2 == 0 then

        elseif f3_local2 == 1 then
            arg0:SetAttackRequest(_GetId(f0_local12, arg0))
        elseif f3_local2 == -1 then
            arg0:SetAttackRequest(_GetId(f0_local13, arg0))
        end
    end
    arg1:AddLifeParentSubGoal(0.3)
    local f3_local5 = arg0:GetLadderActState(TARGET_SELF)
    if arg0:CanLadderGoalEnd() then
        return GOAL_RESULT_Success
    elseif f3_local5 == f0_local11 then
        return GOAL_RESULT_Failed
    end
    f3_local5 = GOAL_RESULT_Continue
    return f3_local5
    
end

function LadderAct_Terminate(arg0, arg1)
    arg0:OnEndLadderGoal()
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LadderAct, true)
function LadderAct_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        return false
    end
    return false
    
end


