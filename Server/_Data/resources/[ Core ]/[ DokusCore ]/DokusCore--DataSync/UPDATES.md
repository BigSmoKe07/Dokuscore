--------------------------------------------------------------------------------
############################ [ DokusCore Updates ] #############################
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v1.9.0
--------------------------------------------------------------------------------
- Added: the logics for city zones.
- Removed: the old logics of storing the city your character is in.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v1.8.1
--------------------------------------------------------------------------------
- Fixed: The console error. Loading plugins file fixed.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v1.8.0
--------------------------------------------------------------------------------
- Added: DataSync is now storing user data server side for OneSync syncing.
  Currently it stores the users SteamID, SourceID and the Steam name, these
  are the values loaded into the admin menu to show all players in the list.
  You will be able to see and interact with everyone on the server, no matter
  your own location.
- Added: Logics for adding user to the online user data table.
- Added: Event that triggers when the user leaves the server, this will delete
  the users online server data from the online list.
- Added: The logics for getting the user online list data (TSC Callback)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v1.7.0
--------------------------------------------------------------------------------
- Removed: Some deprecated data entries from the client that are moved to the
  server side.
- Changed: The `SetIntObject` function to work with the new UsableItems plugin.
- Removed: the `AddIntObject` function as this was not used.
- Added: Logics for saving data for interactable objects.
- Added: function loop that checks all placed interactable objects for their
  expire time. Once the time has expired, datasync will send out the instructions
  to the plugins and the database to remove this object.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v1.6.0
--------------------------------------------------------------------------------
- Added data entry for ( bool ) if user horse is active
- Added data entry for the users horse name
- Added data entry for the users horse ID.
- Added a loop that checks the users current location. When the user is in a
  City this is updated in the new data entry Area. This new data entry is going
  to be used for all plugins to understand where you are instead of loops checking
  your distance to a set coords.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
