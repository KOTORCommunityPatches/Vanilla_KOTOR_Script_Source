#include "k_inc_tar"

void main() {
	
	if (GetLocalBoolean(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO) == FALSE)
		{
			if (GetGlobalBoolean("TAR_FIRST_SWOOP_USE") == FALSE)
				{
					if (IsAvailableCreature(NPC_ZAALBAR))
						{
							int nShow = TRUE;
							object oEnemy = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, GetFirstPC(), 1);
							
							if (GetIsObjectValid(oEnemy))
								{
									if (GetDistanceBetween(OBJECT_SELF, oEnemy) < 30.0))
										{
											nShow = FALSE;
										}
								}
							
							if (nShow == TRUE)
								{
									ShowTutorialWindow(TUTORIAL_WINDOW_RETURN_TO_BASE);
								}
						}
				}
		}
}
