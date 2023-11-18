// GetStringByStrRef hotfix

#include "k_inc_man"
 
void main() {
 	
	int nGlobal = GetGlobalNumber("MAN_DUAN_STATE");
 	
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
 	
	if (nGlobal == 0)
		{
			ActionPlayAnimation(ANIMATION_LOOPING_LISTEN, 1.0, 7.0);
		}
		else if (nGlobal == 1)
			{
				ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 7.0);
			}
			else if (nGlobal == 2)
				{
					ActionPlayAnimation(ANIMATION_LOOPING_SLEEP, 1.0, 7.0);
				}
				else if (nGlobal == 3)
					{
						ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 7.0);
					}
}
