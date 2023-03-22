#include "k_inc_end"

void SetTraskStateAlt(int nState) {
	SetGlobalNumber("END_TRASK_DLG", nState);
	AurPostString(("Set: " + IntToString(nState)), 5, 10, 3.0);
}

void main() {
	
	SetTraskStateAlt(TRASK_COMBAT_WARNING2);
}
