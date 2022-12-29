#include "k_inc_end"

void main() {
	
	if (IsObjectPartyMember(GetEnteringObject()) && HasNeverTriggered())
		{
			if (GetIsObjectValid(GetObjectByTag("end_bridgerep1", 0)))
				{
					SignalEvent(GetObjectByTag("end_bridgerep1", 0), EventUserDefined(20));
				}
			
			if (GetIsObjectValid(GetObjectByTag("end_bridgesith1", 0)))
				{
					SignalEvent(GetObjectByTag("end_bridgesith1", 0), EventUserDefined(20));
				}
			
			PlayExplosion("wp_end_bridgeexp1", 0, 0);
		}
}
