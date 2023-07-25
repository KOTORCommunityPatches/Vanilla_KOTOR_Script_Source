// Byte code does not match

void main() {
	
	object oVic = GetObjectByTag("kor35_victim", 0);
	object oPC = GetLastUsedBy();
	
	if (!GetIsDead(oVic) && GetGlobalBoolean("KOR_PC_INTERROGATE")
		{
			AssignCommand(oVic, ActionStartConversation(oPC, "kor35_victim", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
		else if (GetIsDead(oVic))
			{
				ActionStartConversation(oPC, "kor35_nocons", FALSE, CONVERSATION_TYPE_COMPUTER, FALSE);
			}
}
