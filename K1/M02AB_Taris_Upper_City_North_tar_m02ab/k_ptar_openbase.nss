#include "k_inc_utility"

int GetParty(object oParty) {
	
	string string1 = GetTag(oParty);
	
	if ((!GetIsObjectValid(oParty))) {
		return (-1);
	}
	if ((string1 == "bastila")) {
		return 0;
	}
	if ((string1 == "cand")) {
		return 1;
	}
	if ((string1 == "carth")) {
		return 2;
	}
	if ((string1 == "hk47")) {
		return 3;
	}
	if ((string1 == "jolee")) {
		return 4;
	}
	if ((string1 == "juhani")) {
		return 5;
	}
	if ((string1 == "mission")) {
		return 6;
	}
	if ((string1 == "t3m4")) {
		return 7;
	}
	if ((string1 == "zaalbar")) {
		return 8;
	}
	return (-1);
}

void main() {
	
	object oEntering = GetEnteringObject();
	object oHelper = GetObjectByTag("tar02_drdtalker", 0);
	
	if (GetIsPC(oEntering) && GetParty(oEntering) == 7 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oHelper, ActionStartConversation(oHelper, "tar02_base_dlg", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
			
			object oDoor = GetObjectByTag("tar02_sithdoor", 0);
			
			if (GetIsObjectValid(oDoor))
				{
					AssignCommand(oDoor, ActionUnlockObject(oDoor));
				}
		}
}
