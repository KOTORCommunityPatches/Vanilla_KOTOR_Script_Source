#include "k_inc_generic"

void main() {
	ClearAllActions();
	ActionWait(4.0);
	ActionDoCommand(GN_WalkWayPoints());
}
