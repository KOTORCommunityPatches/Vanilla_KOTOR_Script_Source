void main() {
	object oTr_3cfd_int = GetObjectByTag("tr_3cfd_int", 0);
	if ((!GetLocalBoolean(oTr_3cfd_int, 40))) {
		SetLocalBoolean(oTr_3cfd_int, 40, 1);
		AssignCommand(GetObjectByTag("3CFD_invis", 0), ActionStartConversation(GetFirstPC(), "3cfd_int", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
