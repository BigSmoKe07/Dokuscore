--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- Variables:
Harvested = {}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:LumberJack:Get:Harvested', function(source) return Harvested end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:LumberJack:Set:Harvested')
AddEventHandler('DokusCore:LumberJack:Set:Harvested', function(Coords)
  table.insert(Harvested, { Coords = Coords, Time = os.time(os.date("!*t")) }) Wait(100)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  if (_Modules.LumberJack) then
    while true do Wait(5000)
      local Time = os.time(os.date("!*t"))
      local ReleaseTime = (Time + 3600)
      while (#Harvested >=1) do Wait(1)
        for k,v in pairs(Harvested) do
          if (v.Time >= ReleaseTime) then
            table.remove(Harvested, k)
          end
        end
      end
    end
  end
end)
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
