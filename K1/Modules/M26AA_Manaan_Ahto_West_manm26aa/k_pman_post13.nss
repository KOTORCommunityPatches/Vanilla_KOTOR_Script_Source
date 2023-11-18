// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	SetGlobalFadeOut();
 	SetGlobalFadeIn(0.0, 2.0);
 	
	UT_RestoreParty();
 	
	AssignCommand(GetPartyMemberByIndex(0), JumpToObject(GetObjectByTag("cut_player", 0)));
 	AssignCommand(GetPartyMemberByIndex(1), JumpToObject(GetObjectByTag("cut_npc01", 0)));
 	AssignCommand(GetPartyMemberByIndex(2), JumpToObject(GetObjectByTag("cut_npc02", 0)));
}
