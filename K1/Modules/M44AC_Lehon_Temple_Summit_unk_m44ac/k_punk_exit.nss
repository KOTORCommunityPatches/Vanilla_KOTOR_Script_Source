#include "k_inc_utility"

void main() {
	
	if (GetGlobalBoolean("UNK_BASTILA_CS") && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			StartNewModule("unk_m44aa", "unk44_sw44aa24");
		}
		else
			{
				StartNewModule("unk_m44aa", "unk44_sw44aa24");
			}
}