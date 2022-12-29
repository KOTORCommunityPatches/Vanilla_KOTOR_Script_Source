#include "k_inc_dan"

void main() {
	
	if (HasNeverTriggered())
		{
			AssignCommand(GetObjectByTag("dan16_nurik", 0), ActionStartConversation(GetFirstPC()));
		}
}
