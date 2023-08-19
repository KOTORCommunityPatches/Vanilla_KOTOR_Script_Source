// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"

void main() {
	
	SetGlobalBoolean("KOR_TORTURE_DRUG", TRUE);
	
	object oTorturer = GetObjectByTag("kor35_torturer", 0);
	object oPC = GetFirstPC();
	
	SetGlobalBoolean("KOR_VICTIM_UNCON", TRUE);
	
	object oWPVictim = GetObjectByTag("k35_way_victim", 0);
	
	JumpToObject(oWPVictim);
	
	SetFacing(0.0);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF);
	
	SetCommandable(TRUE, oTorturer);
	
	NoClicksFor(0.7);
	
	DelayCommand(0.5, UT_NPC_InitConversation("kor35_torturer", "", OBJECT_INVALID));
}
