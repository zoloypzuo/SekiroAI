function Platoon000140_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, -0.5, 0)
    arg0:SetFormationParam(2, 0.5, 0)
    arg0:SetFormationParam(3, -0.5, -1.5)
    arg0:SetFormationParam(4, 0.5, -1.5)
    arg0:SetFormationParam(5, -0.5, -3)
    arg0:SetFormationParam(6, 0.5, -3)
    arg0:SetBaseMoveRate(0, 1.2)
    
end

function Platoon000140_Deactivate(arg0)
    
end

function Platoon000140_Update(arg0)
    Platoon_Common_Act(arg0)
    
end


