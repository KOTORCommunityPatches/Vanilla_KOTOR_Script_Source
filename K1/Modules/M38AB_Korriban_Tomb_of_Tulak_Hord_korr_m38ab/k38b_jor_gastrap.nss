#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oJorak = GetObjectByTag("kor38b_jorakuln", 0);
	object oWP_PC = GetObjectByTag("k38b_way_player", 0);
	object oWP_PM1 = GetObjectByTag("k38b_way_player1", 0);
	object oWP_PM2 = GetObjectByTag("k38b_way_player2", 0);
	object oWP_Jorak = GetObjectByTag("k38b_way_jorak", 0);
	object oGas1 = GetObjectByTag("kor38b_gascloud", 0);
	object oGas2 = GetObjectByTag("kor38b_gascloud1", 0);
	object oGas3 = GetObjectByTag("kor38b_gascloud2", 0);
	object oGas4 = GetObjectByTag("kor38b_gascloud3", 0);
	location lWP_PC = GetLocation(oWP_PC);
	location lWP_PM1 = GetLocation(oWP_PM1);
	location lWP_PM2 = GetLocation(oWP_PM2);
	location lWP_Jorak = GetLocation(oWP_Jorak);
	
	SetGlobalFadeOut(1.0, 4.0);
	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
	
	ClearAllActions();
	UT_TeleportPartyMember(oJorak, lWP_Jorak);
	
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oPC, ActionJumpToLocation(lWP_PC)));

	AssignCommand(oPM1, ClearAllEffects());
	AssignCommand(oPM2, ClearAllEffects());
	AssignCommand(oPM1, ClearAllActions());
	AssignCommand(oPM2, ClearAllActions());
	DelayCommand(1.0, UT_TeleportPartyMember(oPM1, lWP_PM1));
	DelayCommand(1.0, UT_TeleportPartyMember(oPM2, lWP_PM2));
	
	SetGlobalBoolean("KOR_JORAK_MEET", TRUE);
	SetGlobalFadeIn(4.0, 1.0);

	DestroyObject(oGas1);
	DestroyObject(oGas2);
	DestroyObject(oGas3);
	DestroyObject(oGas4);
}