void main() {
	if (GetGlobalNumber("K_Kotor_Master") != 0 && GetLocalBoolean(OBJECT_SELF, 10) == FALSE)
		{
			ActionStartConversation(GetFirstPC(), "ebo_galcam", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
		}
}
