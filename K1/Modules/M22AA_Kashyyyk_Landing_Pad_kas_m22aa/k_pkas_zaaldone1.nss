#include "k_inc_kas"

void main() {
	
	object oZaal = GetObjectByTag("Zaalbar", 0);
	object oWP = GetWaypointByTag("kas_zaalbar_wp");
	
	SetZaalbarTalk1Local(TRUE);
	
	AssignCommand(oZaal, ClearAllActions());
	AssignCommand(oZaal, JumpToObject(oWP));
}
