void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oTr_kreia_crystal = GetObjectByTag("tr_kreia_crystal", 0);
	if ((!GetLocalBoolean(oTr_kreia_crystal, 41))) {
		object oKreia_invis = GetObjectByTag("Kreia", 0);
		if ((!GetIsObjectValid(oKreia_invis))) {
			oKreia_invis = GetObjectByTag("kreia_invis", 0);
		}
		SetLocalBoolean(oTr_kreia_crystal, 41, 1);
		AssignCommand(oKreia_invis, ClearAllActions());
		AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_cr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		ExecuteScript("a_spawn_brood", oTr_kreia_crystal, 0xFFFFFFFF);
	}
}

