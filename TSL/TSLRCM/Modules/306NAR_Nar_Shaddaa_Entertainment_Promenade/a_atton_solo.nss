void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetTag(oEntering) == "atton")) {
			if ((!GetLocalBoolean(GetObjectByTag("tr_atton_solo", 0), 29))) {
				SetLocalBoolean(GetObjectByTag("tr_atton_solo", 0), 29, 1);
				AurPostString("starting atton solo cutscene", 5, 15, 10.0);
				AssignCommand(oEntering, ClearAllActions());
				AssignCommand(oEntering, ActionStartConversation(oEntering, "attwarn", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				object oCantinaDoor = GetObjectByTag("CantinaDoor", 0);
				AssignCommand(oCantinaDoor, ActionOpenDoor(oCantinaDoor));
			}
		}
	}
}