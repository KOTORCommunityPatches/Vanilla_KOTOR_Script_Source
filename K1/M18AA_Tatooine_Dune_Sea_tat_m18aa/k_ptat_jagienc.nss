void main() {
	
	object oEntering = GetEnteringObject();
	object oWP_Jagi = GetWaypointByTag("tat18_jagispawn");
	object oWP_Thug01 = GetWaypointByTag("tat18_thug1spawn");
	object oWP_Thug02 = GetWaypointByTag("tat18_thug2spawn");
	location lSpawnJagi = GetLocation(oWP_Jagi);
	location lSpawnThug01 = GetLocation(oWP_Thug01);
	location lSpawnThug02 = GetLocation(oWP_Thug02);
	
	if (GetIsPC(oEntering) == TRUE && IsNPCPartyMember(NPC_CANDEROUS) && GetGlobalBoolean("K_MESS_CANDEROUS") == TRUE)
		{
			object oJagi = CreateObject(OBJECT_TYPE_CREATURE, "g_jagi", lSpawnJagi, 0);
			object oThug01 = CreateObject(OBJECT_TYPE_CREATURE, "tat18_jagithug01", lSpawnThug01, 0);
			object oThug02 = CreateObject(OBJECT_TYPE_CREATURE, "tat18_jagithug02", lSpawnThug02, 0);
			
			AssignCommand(oJagi, ActionStartConversation(oEntering, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			
			DestroyObject(OBJECT_SELF);
		}
}
