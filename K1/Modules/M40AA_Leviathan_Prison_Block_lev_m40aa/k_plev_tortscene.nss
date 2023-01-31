// Byte code does not match

void main() {
 	
 	object oLev40_celldoor = GetObjectByTag("lev40_celldoor", 0);
 	
 	AssignCommand(oLev40_celldoor, ActionOpenDoor(oLev40_celldoor));
 	
 	DelayCommand(6.0, DestroyObject(GetObjectByTag("sithcommander", 0)));
 	DelayCommand(6.0, DestroyObject(GetObjectByTag("sithtrooper1", 0)));
 	DelayCommand(6.0, DestroyObject(GetObjectByTag("sithtrooper2", 0)));
 	DelayCommand(0.5, AssignCommand(GetObjectByTag("saulkarath401", 0), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 }