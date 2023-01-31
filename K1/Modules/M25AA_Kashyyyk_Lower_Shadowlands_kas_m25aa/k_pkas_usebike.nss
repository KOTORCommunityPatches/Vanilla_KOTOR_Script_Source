// Byte code does not match

void main() {
	
	object oUser = GetLastUsedBy();
	
	ActionStartConversation(oUser, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
}