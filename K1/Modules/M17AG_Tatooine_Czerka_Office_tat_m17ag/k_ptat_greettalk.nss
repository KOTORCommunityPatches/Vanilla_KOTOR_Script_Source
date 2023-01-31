// Byte code does not match

void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oPC = GetFirstPC();
 	object oGreeta = GetObjectByTag("tat17_10greet_01", 0);
 	
 	if (GetIsPC(oEntering) == TRUE)
 		{
 			if (GetGlobalBoolean("Tat_Greet_Griff") == TRUE)
 				{
 					AssignCommand(oGreeta, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 					DestroyObject(OBJECT_SELF);
 				}
 		}
 }