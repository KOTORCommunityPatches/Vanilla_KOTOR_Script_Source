#include "k_inc_generic"

void main() {
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	
	ActionMoveToObject(GetObjectByTag("wp_cutscene01", 0));
	ActionDoCommand(SignalEvent(GetObjectByTag("dan16_cutscene01", 0), EventUserDefined(0)));
}