void main() {
	
	if (GetGlobalBoolean("Tar_KandonMission"))
		{
			object oNPC;
			
			SetLocked(OBJECT_SELF, FALSE);
			ActionOpenDoor(OBJECT_SELF);
			
			if (!GetGlobalBoolean("TAR_BEKSHOSTILE"))
				{
					ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
				}
		}
}
