#include "k_inc_tar"

void main() {
	
	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
		}
}
