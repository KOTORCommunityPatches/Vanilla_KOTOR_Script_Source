#include "k_inc_generic"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	ToggleAI(SW_FLAG_AI_OFF, TRUE);
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("wp_droid02", 0));
}