#include "k_inc_tar"

void main() {
	
	if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			Db_PostString("PLAYING PAZAAK", 5, 5, 5.0);
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP03);
		}
}
