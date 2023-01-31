#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oDoor = GetObjectByTag("tar02_cantdoor", 0);
	
	if (GetIsPC(oEntering))
		{
			if (TAR_GetWearingSithArmor(GetPartyMemberByIndex(0)) || TAR_GetWearingSithArmor(GetPartyMemberByIndex(1)) || TAR_GetWearingSithArmor(GetPartyMemberByIndex(2)))
				{
					SetLocked(oDoor, TRUE);
				}
					else
						{
							SetLocked(oDoor, FALSE);
						}
		}
}