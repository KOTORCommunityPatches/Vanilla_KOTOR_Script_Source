#include "k_inc_debug"

void main() {
	
	object oSound = GetNearestObjectByTag("forcefield", OBJECT_SELF, 1);
	
	if (GetIsObjectValid(oSound))
		{
			Db_PostString("FF OFF", 5, 5, 5.0);
			SoundObjectStop(oSound);
		}
}