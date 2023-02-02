#include "k_inc_utility"

void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	object oNPC;
	int nParty;
	
	SetGlobalFadeIn(1.0, 1.0);
	SetLocked(OBJECT_SELF, FALSE);
	ChangeToStandardFaction(oStampy, STANDARD_FACTION_NEUTRAL);
	AssignCommand(oStampy, ClearAllActions());
	AssignCommand(oStampy, ActionMoveToObject(GetObjectByTag("tar05_wppile", 0)));
	
	nParty = 0;
	while (nParty < GetPartyMemberCount())
		{
			oNPC = GetPartyMemberByIndex(nParty);
			UT_TeleportPartyMember(oNPC, GetLocation(GetObjectByTag("tar05_wpparty", 0)));
			(nParty++);
		}
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
