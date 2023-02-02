// Byte code does not match

void main() {
 	
 	object oDatapad = GetItemPossessedBy(OBJECT_SELF, "datapad");
 	
 	if ((IsNPCPartyMember(NPC_CARTH) && (!GetIsObjectValid(oDatapad)) && (GetGlobalNumber("KOR_DANEL") == 3))
 		{
 			object oCarth = GetObjectByTag("carth", 0);
 			object oPC = GetFirstPC();
 			
 			AssignCommand(oPC, ActionStartConversation(oCarth, "kor35_carth"));
 		}
 }
