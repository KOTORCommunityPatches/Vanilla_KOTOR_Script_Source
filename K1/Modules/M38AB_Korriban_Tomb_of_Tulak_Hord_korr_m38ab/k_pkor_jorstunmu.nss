#include "k_inc_utility"

void main() {
	
	object oArea = GetArea(OBJECT_SELF);
	object oMekel = GetObjectByTag("kor38b_mekel", 0);
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PM1 = GetObjectByTag("k38b_way_player1", 0);
	object oWP_PM2 = GetObjectByTag("k38b_way_player2", 0);
	location lWP_PM1 = GetLocation(oWP_PM1);
	location lWP_PM2 = GetLocation(oWP_PM2);
	
	ActionPauseConversation();
	
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_SLEEP, 1.0, 30.0));
	
	if (GetIsObjectValid(oMekel))
		{
			AssignCommand(oMekel, ClearAllActions());
			AssignCommand(oMekel, ActionPlayAnimation(ANIMATION_LOOPING_SLEEP, 1.0, 30.0));
		}
	
	if (GetIsObjectValid(oPM1))
		{
			UT_TeleportPartyMember(oPM1, lWP_PM1);
			AssignCommand(oPM1, ClearAllActions());
			AssignCommand(oPM1, ActionPlayAnimation(ANIMATION_LOOPING_SLEEP, 1.0, 30.0));
		}
	
	if (GetIsObjectValid(oPM2))
		{
			UT_TeleportPartyMember(oPM2, lWP_PM2);
			AssignCommand(oPM2, ClearAllActions());
			AssignCommand(oPM2, ActionPlayAnimation(ANIMATION_LOOPING_SLEEP, 1.0, 30.0));
		}
	
	ActionResumeConversation();
}