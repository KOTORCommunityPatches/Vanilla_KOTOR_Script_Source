#include "k_inc_utility"

void main() {
	
	int nCount;
	object oNPC;
	nCount = 0;
	
	while (nCount < GetPartyMemberCount())
		{
			oNPC = GetPartyMemberByIndex(nCount);
			
			UT_TeleportPartyMember(oNPC, GetLocation(GetObjectByTag(("tar10_wpparty" + IntToString(nCount)), 0)));
			(nCount++);
		}
		
	ActionPauseConversation();
	
	ActionWait((GetPartyMemberCount() * 3.0));
	
	ActionResumeConversation();
}
