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
	if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
		ActionStartConversation(GetFirstPC(), "bastila", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	else {
		if ((!GetIsObjectValid(GetObjectByTag("bastila_holo", 0)))) {
			object object3 = sub1("bastila_holo", 0);
			AssignCommand(object3, ClearAllActions());
			AssignCommand(object3, ActionStartConversation(GetFirstPC(), "bastila", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}