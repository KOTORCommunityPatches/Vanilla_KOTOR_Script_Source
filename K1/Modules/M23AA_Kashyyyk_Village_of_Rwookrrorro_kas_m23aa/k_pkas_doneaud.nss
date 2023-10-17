// Byte code does not match

#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oInvis = GetObjectByTag("kas23_audspeak", 0);
	
	if (GetIsPC(oEntering) == TRUE && GetGorwookenSpawnGlobal() == TRUE)
		{
			SetGlobalFadeOut();
			
			AssignCommand(oInvis, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			
			DestroyObject(OBJECT_SELF);
		}
}
