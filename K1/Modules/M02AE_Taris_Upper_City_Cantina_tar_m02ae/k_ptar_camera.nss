#include "k_inc_tar"

void main() {
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	
	UT_ActionPauseConversation(1.0);
	
	AssignCommand(oDuncan, PlaySound("it_pistol"));
}
