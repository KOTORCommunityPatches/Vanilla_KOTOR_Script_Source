// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
 	
	NoClicksFor(0.3);
 	
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Bastila", 0), ActionStartConversation(GetFirstPC(), "tar02_bastvision", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 }
