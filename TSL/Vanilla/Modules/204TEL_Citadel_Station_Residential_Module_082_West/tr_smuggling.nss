void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 37))) {
			object object4 = GetItemPossessedBy(oEntering, "medical_supplies");
			if (GetIsObjectValid(object4)) {
				SetLocalBoolean(OBJECT_SELF, 37, 1);
				object oTsf_med = CreateObject(1, "tsf_med", GetLocation(GetObjectByTag("WP_tsf_spawn", 0)), 0);
				if (GetIsObjectValid(oTsf_med)) {
					AssignCommand(oTsf_med, ClearAllActions());
					AssignCommand(oTsf_med, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			return;
		}
		if ((GetGlobalNumber("200TEL_SmugglingM3") == 1)) {
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetGlobalNumber("200TEL_SmugglingM3", 2);
			CreateItemOnObject("medical_supplies", GetObjectByTag("med_supplies", 0), 1, 0);
		}
	}
}
