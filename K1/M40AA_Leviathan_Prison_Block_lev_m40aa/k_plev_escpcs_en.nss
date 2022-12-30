// Byte code does not match

void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			AssignCommand(GetObjectByTag("lev40_celldoor", 0), ActionOpenDoor(GetObjectByTag("lev40_celldoor", 0)));
 			
 			AssignCommand(GetObjectByTag("Carth", 0), ActionWait(2.0));
 			AssignCommand(GetObjectByTag("Carth", 0), ActionStartConversation(oEntering, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }
