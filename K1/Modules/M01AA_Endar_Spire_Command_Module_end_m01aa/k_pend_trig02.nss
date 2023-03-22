#include "k_inc_end"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if ((IsObjectPartyMember(oEntering) && HasNeverTriggered()))
		{
			SetPartyLeader(NPC_PLAYER);
			SetTraskState(TRASK_CARTH_BRIDGE);
			TalkTrask();
		}
}
