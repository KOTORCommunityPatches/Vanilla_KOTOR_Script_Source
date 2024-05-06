// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"

void main() {
	
	NoClicksFor(1.2);
	
	DelayCommand(1.0, UT_NPC_InitConversation("DarkJediap091", "", GetObjectByTag("tar09_wppctalk", 0)));
}
