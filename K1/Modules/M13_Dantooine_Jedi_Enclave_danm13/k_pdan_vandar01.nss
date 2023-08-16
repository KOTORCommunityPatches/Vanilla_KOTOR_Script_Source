#include "k_inc_dan"

void main() {
	
	SignalEvent(GetObjectByTag("dan13_zhar", 0), EventUserDefined(10));
	
	SetGlobalFadeOut();
	
	DelayCommand(0.5, SetGlobalFadeIn(0.0, 1.5));
	
	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(1), JumpToObject(GetObjectByTag("dan16_wp_party01", 0)));
	
	AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(2), JumpToObject(GetObjectByTag("dan16_wp_party02", 0)));
	
	NoClicksFor(0.3);
	
	DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "k_player_dialog", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE, "bastila"));
}
