// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	if (((GetGlobalNumber("604DAN_Vrook_Status") > 2) && (GetGlobalNumber("601DAN_Azkul") == 0))) {
		int int3 = 0;
		while ((int3 <= 5)) {
			sub1("g_merc", int3);
			(int3++);
		}
		sub1("npc_azkul", 0);
		AssignCommand(GetObjectByTag("npc_azkul", 0), ActionStartConversation(GetFirstPC(), "azkul", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}