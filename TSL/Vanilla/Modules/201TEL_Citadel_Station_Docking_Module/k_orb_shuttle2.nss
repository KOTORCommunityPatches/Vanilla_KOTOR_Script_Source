void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("262TEL_Escape_Telos") == 1)) {
		return;
	}
	if (((GetTag(OBJECT_SELF) == "tr_shuttle_1") && (GetGlobalNumber("201TEL_Shuttle_Ready") == 1))) {
		SetLocalBoolean(GetObjectByTag("camera_switch", 0), 31, 1);
		AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "201shu", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (((GetTag(OBJECT_SELF) == "tr_shuttle_2") && (GetGlobalNumber("200TEL_CzerkaM_exch") == 23))) {
			SetLocalBoolean(GetObjectByTag("camera_switch", 0), 31, 0);
			AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "201shu", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
