#include "k_inc_end"

void main() {
	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			if (GetIsObjectValid(GetObjectByTag("end_bridgerep2", 0)))
				{
					SignalEvent(GetObjectByTag("end_bridgerep2", 0), EventUserDefined(20));
				}
			
			if (GetIsObjectValid(GetObjectByTag("end_bridgesith2", 0)))
				{
					SignalEvent(GetObjectByTag("end_bridgesith2", 0), EventUserDefined(20));
				}
			
			PlayExplosion("wp_end_bridgeexp2", 0, 0);
		}
}