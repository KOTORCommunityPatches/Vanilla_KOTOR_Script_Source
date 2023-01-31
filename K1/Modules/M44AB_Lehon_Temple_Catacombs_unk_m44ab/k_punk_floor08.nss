#include "k_inc_utility"

void main() {
	
	object oDoor = GetObjectByTag("unk44_massdoor", 0);
	object oReset = GetObjectByTag("PanelReset", 0);
	object oFloor101 = GetObjectByTag("FloorPanel01", 0);
	object oFloor102 = GetObjectByTag("FloorPanel02", 0);
	object oFloor103 = GetObjectByTag("FloorPanel03", 0);
	object oFloor104 = GetObjectByTag("FloorPanel04", 0);
	object oFloor105 = GetObjectByTag("FloorPanel05", 0);
	object oFloor106 = GetObjectByTag("FloorPanel06", 0);
	object oFloor107 = GetObjectByTag("FloorPanel07", 0);
	object oFloor108 = GetObjectByTag("FloorPanel08", 0);
	object oFloor109 = GetObjectByTag("FloorPanel09", 0);
	
	if (GetGlobalBoolean("UNK_TILES") == FALSE)
		{
			if (UT_GetTalkedToBooleanFlag(oFloor105) == TRUE)
				{
					AssignCommand(oFloor105, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
					UT_SetTalkedToBooleanFlag(oFloor105, FALSE);
				}
				else
					{
						AssignCommand(oFloor105, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
						UT_SetTalkedToBooleanFlag(oFloor105, TRUE);
					}
			
			if (UT_GetTalkedToBooleanFlag(oFloor107) == TRUE)
				{
					AssignCommand(oFloor107, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
					UT_SetTalkedToBooleanFlag(oFloor107, FALSE);
				}
				else
					{
						AssignCommand(oFloor107, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
						UT_SetTalkedToBooleanFlag(oFloor107, TRUE);
					}
			
			if (UT_GetTalkedToBooleanFlag(oFloor108) == TRUE)
				{
					AssignCommand(oFloor108, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
					UT_SetTalkedToBooleanFlag(oFloor108, FALSE);
				}
				else
					{
						AssignCommand(oFloor108, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
						UT_SetTalkedToBooleanFlag(oFloor108, TRUE);
					}
			
			if (UT_GetTalkedToBooleanFlag(oFloor109) == TRUE)
				{
					AssignCommand(oFloor109, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
					UT_SetTalkedToBooleanFlag(oFloor109, FALSE);
				}
				else
					{
						AssignCommand(oFloor109, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
						UT_SetTalkedToBooleanFlag(oFloor109, TRUE);
					}
		}
	
	if (UT_GetTalkedToBooleanFlag(oFloor101) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor102) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor103) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor104) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor105) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor106) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor107) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor108) == TRUE
	&& UT_GetTalkedToBooleanFlag(oFloor109) == TRUE
	&& GetGlobalBoolean("UNK_TILES") == FALSE)
		{
			SetGlobalBoolean("UNK_TILES", TRUE);
			
			AssignCommand(oReset, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
			PlaySound("cs_puzzledone");
			ActionOpenDoor(oDoor);
		}
}