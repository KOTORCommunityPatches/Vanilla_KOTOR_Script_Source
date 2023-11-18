// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_dan"

void main() {
	
	if (GetGlobalBoolean("MAN_GO_TO_JAIL"))
		{
			SetGlobalBoolean("MAN_GO_TO_JAIL", FALSE);
			
			object oWarden = GetObjectByTag("man26_selward", 0);
			
			AssignCommand(oWarden, ActionStartConversation(GetFirstPC(), "man26_selauth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
