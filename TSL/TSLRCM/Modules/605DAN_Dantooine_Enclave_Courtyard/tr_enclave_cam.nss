void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oTr_enclave_cam = GetObjectByTag("tr_enclave_cam", 0);
	object oKreia_invis = GetObjectByTag("Kreia", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		oKreia_invis = GetObjectByTag("kreia_invis", 0);
	}
	if (((!GetLocalBoolean(oTr_enclave_cam, 40)) && (!GetGlobalNumber("650DAN_Rebuilt")))) {
		SetLocalBoolean(oTr_enclave_cam, 40, 1);
		AssignCommand(oKreia_invis, ClearAllActions());
		AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "enc_ruin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (((!GetLocalBoolean(oTr_enclave_cam, 41)) && GetGlobalNumber("650DAN_Rebuilt"))) {
			SetLocalBoolean(oTr_enclave_cam, 41, 1);
			AssignCommand(oKreia_invis, ClearAllActions());
			AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "encl_cam", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}