void main() {
	
	if (GetGlobalBoolean("Tar_KandonMission"))
		{
			object oNPC;
			
			SetLocked(OBJECT_SELF, FALSE);
			ActionOpenDoor(OBJECT_SELF);
			
			SetGlobalBoolean("TAR_BEKSHOSTILE", TRUE);
			
			BarkString(OBJECT_INVALID, 38453); // SECURITY BREACH!!
			
			oNPC = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
			
			while (GetIsObjectValid(oNPC))
				{
					if (!IsObjectPartyMember(oNPC))
						{
							ChangeToStandardFaction(oNPC, STANDARD_FACTION_HOSTILE_1);
						}
					
					oNPC = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
}
