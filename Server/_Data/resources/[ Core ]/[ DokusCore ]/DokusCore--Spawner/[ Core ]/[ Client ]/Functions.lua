--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
function FrameReady()
  local Data = TCTCC('DokuCore:Sync:Get:CoreData')
  return Data.FrameReady
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function UserInGame()
  local Data = TCTCC('DokusCore:Sync:Get:UserData')
  return Data.UserInGame
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function MSG(Obj)
  return _("Spawner", Obj, _Language.Lang)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SYS(Obj)
  return _("System", Obj, _Language.Lang)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function CreateDriver(PedID, Model, Coords)
  LoadModel(Model)
  local DriverID = CreatePed(Model, Coords, PedID, true, 0)
  Citizen.InvokeNative(0x283978A15512B2FE, DriverID, true) -- SetRandomOutfitVariation
  Citizen.InvokeNative(0x58A850EAEE20FAA3, DriverID) -- PlaceObjectOnGroundProperly
  SetEntityNoCollisionEntity(PedID, DriverID, true)
  SetEntityCanBeDamaged(DriverID, false)
  SetInvincible(DriverID, true)
  SetBlockingOfNonTemporaryEvents(DriverID, true)
  SetEntityAsMissionEntity(DriverID)
  SetPedAsGroupMember(DriverID, GetPedGroupIndex(PedID))
  SetEntityAsMissionEntity(VehicleID, false, false)
  SetEntityAsMissionEntity(DriverID, false, false)
  local NPC = GetPedRelationshipGroupHash(DriverID)
  SetRelationshipBetweenGroups(1 , GetHashKey("PLAYER") , NPC)
  return DriverID
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DriveToDestination(EndCoords)
  IsDriving = true
  while IsDriving do Wait(100)
    local Dist = GetDistance(EndCoords)
    if (Dist <= 150.0) then Chatter   = false end
    if (Dist <= 10.0)  then IsDriving = false return end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function WalkUserToTailor()
  IsWalking = true
  for k,v in pairs(Tailor) do
    if (Low(v.City) == Low(SpawnPos.City)) then
      while IsWalking do Wait(100)
        local Dist = GetDistance(v.Coords)
        if (Dist < 0.5) then IsWalking = false return end
      end
    end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function WaitForUserToLeaveVehicle(PedID)
  while true do Wait(1)
    local Check = IsPedSittingInVehicle(PedID, VehicleID)
    if not (Check) then return end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function RestartCharPicker()
  NoteObjective('ERROR:', "The system was unable to detect yoru CharID! We are restarting the characters screen!", 'Horn', 5000)
  TriggerEvent('DokusCore:Characters:Start')
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


























































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
