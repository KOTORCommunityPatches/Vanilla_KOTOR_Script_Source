#include "k_inc_end"

void PC_Jump() {
	ActionJumpToLocation(GetLocation(GetObjectByTag("wp_player01", 0)));
}

void main() {
	
	object oDoor = GetObjectByTag("end_door19", 0);
	
	SetLocked(oDoor, TRUE);
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	
	AssignCommand(GetFirstPC(), PC_Jump());
	
	SignalEvent(GetTrask(), EventUserDefined(500));
}
