// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
 	
 	if (GetGlobalNumber("k_genoharadan") == 60 && GetIsPC(GetEnteringObject()))
 		{
 			SetGlobalNumber("k_genoharadan", 70);
 			AssignCommand(GetObjectByTag("Hulas", 0), ActionStartConversation(GetPartyMemberByIndex(0), "", FALSE, 0, TRUE));
 		}
}
