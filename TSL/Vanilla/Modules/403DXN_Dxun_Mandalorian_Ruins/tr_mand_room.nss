void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((((!IsStealthed(oEntering)) && (!GetLocalBoolean(OBJECT_SELF, 50))) && (GetGlobalNumber("403DXN_Sith_Attack") == 0))) {
		SetLocalBoolean(OBJECT_SELF, 50, 1);
		object oG_mandalore = GetObjectByTag("g_mandalore", 0);
		AssignCommand(oG_mandalore, ClearAllActions());
		AssignCommand(oG_mandalore, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
