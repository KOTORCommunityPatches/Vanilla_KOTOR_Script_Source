// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	AssignCommand(GetFirstPC(), JumpToObject(GetObjectByTag("arrest_player_01", 0)));
 	
	object oRepDip = GetObjectByTag("man26_repac", 0);
 	object oSithDip = GetObjectByTag("man26_sithac", 0);
 	object oInvis = GetObjectByTag("man26_trialobj2", 0);
 	
	PlaceNPC("man_traildrd01");
 	PlaceNPC("man_traildrd02");
 	
	AssignCommand(oRepDip, JumpToObject(GetObjectByTag("wp_man26_replaw2", 0)));
 	AssignCommand(oSithDip, JumpToObject(GetObjectByTag("wp_man26_sithlaw2", 0)));
 	
	if (GetGlobalBoolean("MAN_SARBITER"))
		{
			AssignCommand(GetObjectByTag("man26_selarb", 0), ActionJumpToObject(GetObjectByTag("wp_man26_sithlaw", 0)));
		}
 	
	ActionPauseConversation();
 	ActionWait(1.0);
 	ActionResumeConversation();
}
