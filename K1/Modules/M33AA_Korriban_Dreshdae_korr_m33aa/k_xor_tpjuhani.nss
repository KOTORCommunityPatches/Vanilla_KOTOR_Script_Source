#include "k_inc_utility"

void main() {
	
	object oXor = GetObjectByTag("kas_xor1", 0);
	vector vXor = GetPosition(GetObjectByTag("kas_xor1", 0));
	vector vJuh = Vector((vXor.x + 1.5), (vXor.y + 1.5), vXor.z);
	location lJuh = Location(vJuh, GetFacing(oXor));
	
	UT_TeleportPartyMember(GetObjectByTag("Juhani", 0), lJuh);
	
	DelayCommand(0.5, AssignCommand(oXor, SetFacingPoint(GetPosition(GetObjectByTag("Juhani", 0)))));
}