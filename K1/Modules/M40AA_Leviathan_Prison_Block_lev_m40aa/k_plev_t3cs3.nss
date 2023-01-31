// Byte code does not match

void main() {
 	
 	object oInvis = GetObjectByTag("lev40_droidtalker", 0);
 	object oTech = GetObjectByTag("lev40_t3tech", 0);
 	
 	DestroyObject(oTech, 0.0, TRUE);
 	
 	NoClicksFor(0.3);
 	
 	DelayCommand(0.1, AssignCommand(oInvis, ActionStartConversation(oInvis, "lev40_slice_dlg", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 }