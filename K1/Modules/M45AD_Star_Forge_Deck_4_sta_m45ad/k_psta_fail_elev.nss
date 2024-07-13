// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
	
	object oPC = GetFirstPC();
	
	SetGlobalNumber("STA_DOOR45D", 1);
	
	ActionStartConversation(oPC);
}
