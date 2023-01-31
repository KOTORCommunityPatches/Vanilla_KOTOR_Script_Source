#include "k_inc_utility"

void main() {
	
	UT_ActionPauseConversation(1.7);
	
	object oThruster1 = GetObjectByTag("ambush_thrust", 0);
	object oThruster2 = GetObjectByTag("ambush_thrust2", 0);
	object oThruster3 = GetObjectByTag("ambush_thrust2", 1);
	object oWP_PC = GetObjectByTag("tat_party_jump0", 0);
	object oWP_PM1 = GetObjectByTag("tat_party_jump1", 0);
	object oWP_PM2 = GetObjectByTag("tat_party_jump2", 0);
	
	DestroyObject(GetObjectByTag("calo_leg_cover", 0));
	
	DelayCommand(0.3, AssignCommand(GetObjectByTag("bp_calo_ambush", 0), ActionPlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 0.3, 999.0)));
	
	DelayCommand(0.2, PlaySound("mgs_thrustloop01"));
	DelayCommand(4.6, PlaySound("mgs_turbdwn02"));
	DelayCommand(8.6, SoundObjectStop(oThruster1));
}