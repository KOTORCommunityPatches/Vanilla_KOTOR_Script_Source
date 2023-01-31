// Byte code does not match

void main() {
 	
 	object oInvis = GetObjectByTag("lev40_transformer", 0);
 	object oSelf = OBJECT_SELF;
 	
 	DelayCommand(0.1, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
 	DelayCommand(1.0, DestroyObject(oSelf, 0.0, TRUE));
 }