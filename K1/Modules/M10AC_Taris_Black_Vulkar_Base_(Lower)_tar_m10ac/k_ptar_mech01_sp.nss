#include "k_inc_generic"

void main() {
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
	PlayAnimation(ANIMATION_LOOPING_USE_COMPUTER, 1.0, -1.0);
}
