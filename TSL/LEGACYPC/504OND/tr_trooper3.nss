void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oVaklu_sergeant3;
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		oVaklu_sergeant3 = GetObjectByTag("ds_ro_sold_sp3", 0);
	}
	else {
		oVaklu_sergeant3 = GetObjectByTag("vaklu_sergeant3", 0);
	}
	AssignCommand(oVaklu_sergeant3, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

