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
	object oOlddroid = GetObjectByTag("olddroid", 0);
	AssignCommand(oOlddroid, ClearAllActions());
	ActionPauseConversation();
	location location1 = GetLocation(GetObjectByTag("wp_droidholo", 0));
	AssignCommand(oOlddroid, ActionJumpToLocation(location1));
	location location3 = GetLocation(GetObjectByTag("wp_pc_holo", 0));
	AssignCommand(GetFirstPC(), ActionJumpToLocation(location3));
	sub1("vandar_holo", 0);
	sub1("vrook_holo", 0);
	ActionResumeConversation();
}

