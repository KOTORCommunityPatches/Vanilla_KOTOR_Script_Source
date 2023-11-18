// GetStringByStrRef hotfix

#include "k_inc_man"
 
void main() {
 	
	int bState = UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 	
	if (Random(3) == 0)
		{
			if (Random(2) == 0)
				{
					ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
				}
				else
					{
						ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
					}
		}
 	
	if (bState)
		{
			ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 7.0);
		}
		else
			{
				ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 7.0);
			}
 	
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, !bState);
}
