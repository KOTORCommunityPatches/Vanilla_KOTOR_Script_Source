#include "k_inc_utility"

void main() {
	
	if (GetIsObjectValid(GetObjectByTag("Jolee", 0)))
		{
			AddPartyMember(NPC_JOLEE, GetObjectByTag("Jolee", 0));
		}
	
	if (GetIsObjectValid(GetObjectByTag("Juhani", 0)))
		{
			AddPartyMember(NPC_JUHANI, GetObjectByTag("Juhani", 0));
		}
	
	ActionPauseConversation();
	
	ActionJumpToLocation(GetLocation(GetObjectByTag("bastend", 0)));
	AssignCommand(GetPartyMemberByIndex(0), UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerend", 0))));
	AssignCommand(GetPartyMemberByIndex(1), UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("joleeend", 0))));
	AssignCommand(GetPartyMemberByIndex(2), UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("juhaniend", 0))));
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(100), OBJECT_SELF, 0.0);
	
	ActionWait(3.0);
	ActionResumeConversation();
}