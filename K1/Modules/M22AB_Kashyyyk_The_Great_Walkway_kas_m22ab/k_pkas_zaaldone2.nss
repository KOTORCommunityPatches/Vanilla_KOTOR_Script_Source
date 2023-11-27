#include "k_inc_kas"

void main() {
	
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	object oWP = GetWaypointByTag("kas_zaalbar_wp2");
	
	SetZaalbarTalk2Local(TRUE);
	
	AssignCommand(oZaalbar, ClearAllActions());
	AssignCommand(oZaalbar, JumpToObject(oWP));
}
