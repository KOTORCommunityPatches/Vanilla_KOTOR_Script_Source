// Prototypes
int sub1();

int sub1() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	return (GetIsDead(oVisasMarr) || (oVisasMarr == OBJECT_INVALID));
}

void main() {
	object oPC = GetFirstPC();
	if (((((GetDistanceToObject(oPC) < 5.0) && sub1()) && (GetIsConversationActive() == 0)) && (!GetLocalBoolean(OBJECT_SELF, 58)))) {
		SetLocalBoolean(OBJECT_SELF, 58, 1);
		ClearAllActions();
		ActionStartConversation(oPC, "852zbyl", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	else {
		ExecuteScript("k_def_heartbt01", OBJECT_SELF, 0xFFFFFFFF);
	}
}

