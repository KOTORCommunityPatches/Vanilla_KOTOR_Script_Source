#include "k_inc_tat"

void SpawnGriff(object oNPC) {
	
	object oWP_Griff = GetWaypointByTag("tat17_griffspwn2");
	object oWP_Miss = GetWaypointByTag("tat17_missionspn");
	location lGriff = GetLocation(oWP_Griff);
	location lMiss = GetLocation(oWP_Miss);
	object oGriff = CreateObject(OBJECT_TYPE_CREATURE, "tat17_griff_02", lGriff);
	
	if (IsNPCPartyMember(NPC_MISSION) == FALSE)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat17_mission", lMiss);
		}
	
	NoClicksFor(0.7);
	AssignCommand(oGriff, DelayCommand(0.5, ActionStartConversation(oNPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
}

void main() {
	
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oFaction = GetObjectByTag("tat18_tuskanfac", 0);
	
	if (GetGriffPortGlobal() == TRUE && GetGriffSpawnLocal() == FALSE)
		{
			SetGriffSpawnLocal(TRUE);
			DelayCommand(1.0, SpawnGriff(oEntering));
		}
	
	if (IsObjectPartyMember(oEntering) == TRUE)
		{
			if (GetGlobalBoolean("tat_TuskenSuit") == TRUE)
				{
					AdjustReputation(oPC, oFaction, (-50));
					SetGlobalBoolean("tat_TuskenSuit", FALSE);
				}
			
			DelayCommand(0.1, RemoveSandpeopleDisguise());
		}
}