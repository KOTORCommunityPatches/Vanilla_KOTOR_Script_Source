#include "k_inc_utility"

void main() {
	
	object oSelf = OBJECT_SELF;
	
	AddAvailableNPCByTemplate(NPC_CARTH, "p_carth");
	
	ActionMoveToObject(GetObjectByTag("pebn_carth", 0));
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("tar02_swplayerapt", 0))));
	ActionDoCommand(SetCommandable(TRUE, oSelf));
	SetCommandable(FALSE, OBJECT_SELF);
}
