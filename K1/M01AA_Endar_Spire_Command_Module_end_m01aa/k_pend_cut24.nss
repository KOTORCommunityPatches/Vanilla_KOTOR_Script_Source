#include "k_inc_end"

void main() {
	ActionPauseConversation();
	ActionDoCommand(SignalEvent(GetTrask(), EventUserDefined(600)));
}
