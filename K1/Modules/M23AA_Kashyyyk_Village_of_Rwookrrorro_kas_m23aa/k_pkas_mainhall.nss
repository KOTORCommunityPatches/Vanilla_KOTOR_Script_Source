// Byte code does not match

#include "k_inc_kas"

void main() {
	
	object oGuard = GetObjectByTag("kas23_wookgua_01", 0);
	
	if (GetIsObjectValid(oGuard) == TRUE)
		{
			UT_NPC_InitConversation("kas23_wookgua_01", "", OBJECT_INVALID);
		}
		else
			{
				StartNewModule("kas_m23ad", "kas23aa_kas23ad");
			}
}
