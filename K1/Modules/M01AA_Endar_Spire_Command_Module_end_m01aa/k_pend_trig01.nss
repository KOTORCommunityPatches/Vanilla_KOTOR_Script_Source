#include "k_inc_end"

void main() {
	
	AurPostString("Trigger was entered", 5, 5, 5.0);
	
	object oEntering = GetEnteringObject();
	
	if (GetFirstPC() == oEntering && HasNeverTriggered())
		{
			if (oEntering != GetPartyMemberByIndex(0))
				{
					SetPartyLeader(NPC_PLAYER);
				}
			
			AssignCommand(GetFirstPC(), ClearAllActions());
			SignalEvent(GetObjectByTag("end_conduit", 0), EventUserDefined(100));
		}
}
