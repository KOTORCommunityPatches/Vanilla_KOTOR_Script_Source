// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
	
	DestroyObject(GetObjectByTag("end_sith03", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("end_sithsol01", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("end_sithsol01", 1), 0.0, TRUE);
	
	SetGlobalNumber("END_CARTH_DLG", 5);
	
	NoClicksFor(0.7);
	
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Carth", 0), ActionStartConversation(GetPCSpeaker(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
}
