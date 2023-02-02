void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPartyLeader(oEntering)) {
		object oTr_thugboss = GetObjectByTag("tr_thugboss", 0);
		if (GetIsObjectValid(oTr_thugboss)) {
			if (GetLocalBoolean(oTr_thugboss, 29)) {
				return;
			}
			SetLocalBoolean(oTr_thugboss, 29, 1);
			object oInviso_thugboss = GetObjectByTag("inviso_thugboss", 0);
			if ((!GetIsObjectValid(oInviso_thugboss))) {
				return;
			}
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			object oNPC = GetPartyMemberByIndex(0);
			object object9 = GetPartyMemberByIndex(1);
			object object11 = GetPartyMemberByIndex(2);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_party_1b", 0))));
			if (GetIsObjectValid(object9)) {
				AssignCommand(object9, ClearAllActions());
				AssignCommand(object9, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_party_2b", 0))));
			}
			if (GetIsObjectValid(object11)) {
				AssignCommand(object11, ClearAllActions());
				AssignCommand(object11, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_party_3b", 0))));
			}
			AssignCommand(oInviso_thugboss, ActionStartConversation(oEntering, "thugboss", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
