#include "k_inc_generic"

void main() {
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	SignalEvent(OBJECT_SELF, EventUserDefined(0));
}
