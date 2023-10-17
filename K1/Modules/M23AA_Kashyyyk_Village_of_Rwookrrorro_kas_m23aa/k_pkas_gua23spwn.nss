#include "k_inc_kas"

void main() {
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	
	if (GetChuundarDeadGlobal() == TRUE)
		{
			DestroyObject(OBJECT_SELF);
		}
}
