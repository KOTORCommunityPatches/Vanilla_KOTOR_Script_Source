#include "k_inc_end"

void main() {
	ActionPauseConversation();
	SignalEvent(GetObjectByTag("end_bandon", 0), EventUserDefined(10));
}
