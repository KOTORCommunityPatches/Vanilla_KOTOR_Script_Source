// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oDoor = GetObjectByTag("tar03_bekdoor", 0);
	int nDisguise = TAR_GetWearingSithArmor(GetPartyMemberByIndex(0)) || TAR_GetWearingSithArmor(GetPartyMemberByIndex(1)) || TAR_GetWearingSithArmor(GetPartyMemberByIndex(2));
	
	if (nDisguise || !GetGlobalBoolean("TAR_BEKBASEOPEN"))
		{
			SetLocked(oDoor, TRUE);
		}
		else
			{
				SetLocked(oDoor, FALSE);
			}
}
