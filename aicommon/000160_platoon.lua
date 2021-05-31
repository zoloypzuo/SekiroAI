function Platoon000160_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 4, -4)
    arg0:SetFormationParam(3, -4, -4)
    arg0:SetFormationParam(4, 0, -3)
    arg0:SetFormationParam(5, -1, -8)
    arg0:SetBaseMoveRate(0, 1.2)
    
end

function Platoon000160_Deactivate(arg0)
    
end

function Platoon000160_Update(arg0)
    Platoon_Common_Act(arg0)
    
end


