#include "k_inc_man"

void main() {
	
	int nIndex;
	int int2;
	object oNPC;
	//nIndex;
	
	while (nIndex < 3)
		{
			oNPC = GetPartyMemberByIndex(nIndex);
			if (GetFirstPC() != oNPC)
				{
					int nIdx = UT_GetNPCCode(oNPC);
					if (nIdx != NPC_PLAYER)
						{
							SaveNPCState(nIdx);
						}
				}
			
			nIndex++;
		}
	
	UT_StoreParty();
	DonSuits();
	
	if (GetTag(OBJECT_SELF) == "28d")
		{
			StartNewModule("manm28ad", ("from" + GetTag(OBJECT_SELF)));
		}
		else
			{
				StartNewModule("manm28ab", ("from" + GetTag(OBJECT_SELF)));
			}
}