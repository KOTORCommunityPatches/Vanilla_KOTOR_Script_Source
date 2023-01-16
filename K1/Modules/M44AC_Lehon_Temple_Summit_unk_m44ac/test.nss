// Byte code does not match
#include "k_inc_utility"

void main() {
	
	SetAreaUnescapable(FALSE);
	SetGlobalBoolean("UNK_SHIELD_OFF", TRUE);
	
	UT_NPC_InitConversation("Bastilae", "unk44_evilbast", OBJECT_INVALID);
}
