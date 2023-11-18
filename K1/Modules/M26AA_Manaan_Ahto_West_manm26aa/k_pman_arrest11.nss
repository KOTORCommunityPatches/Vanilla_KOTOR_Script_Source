// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	UT_RestoreParty();
	
	location lRep = GetLocation(GetObjectByTag("wp_man26_sithlaw", 0));
 	location lSith = GetLocation(GetObjectByTag("wp_man26_replaw", 0));
 	
	AssignCommand(GetObjectByTag("man26_repac", 0), JumpToLocation(lRep));
 	AssignCommand(GetObjectByTag("man26_sithac", 0), JumpToLocation(lSith));
 	
	TurnOnPartyAI();
 	
	DestroyObject(GetObjectByTag("man_traildrd01", 0), 0.0, TRUE);
 	DestroyObject(GetObjectByTag("man_traildrd02", 0), 0.0, TRUE);
 	DelayCommand(0.1, DestroyObject(OBJECT_SELF));
}
