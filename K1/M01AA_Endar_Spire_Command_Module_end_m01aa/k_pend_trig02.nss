#include "k_inc_end"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if ((IsObjectPartyMember(oEntering) && HasNeverTriggered()))
		{
			SetPartyLeader(NPC_PLAYER);
			SetTraskState(10);
			TalkTrask();
		}
}
