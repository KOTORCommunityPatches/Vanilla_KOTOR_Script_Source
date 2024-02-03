void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oTr_enclave_cam = GetObjectByTag("tr_enclave_cam", 0);
	if (((!GetLocalBoolean(oTr_enclave_cam, 40)) && (!GetGlobalNumber("650DAN_Rebuilt")))) {
		SetLocalBoolean(oTr_enclave_cam, 40, 1);
		AssignCommand(oTr_enclave_cam, ActionStartConversation(GetFirstPC(), "enc_ruin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (((!GetLocalBoolean(oTr_enclave_cam, 41)) && GetGlobalNumber("650DAN_Rebuilt"))) {
			SetLocalBoolean(oTr_enclave_cam, 41, 1);
			AssignCommand(oTr_enclave_cam, ActionStartConversation(GetFirstPC(), "encl_cam", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

