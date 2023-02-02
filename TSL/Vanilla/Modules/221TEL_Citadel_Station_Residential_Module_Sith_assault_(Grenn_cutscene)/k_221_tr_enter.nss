void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oTr_221_enter = GetObjectByTag("tr_221_enter", 0);
		if (GetIsObjectValid(oTr_221_enter)) {
			if ((!GetLocalBoolean(oTr_221_enter, 29))) {
				SetLocalBoolean(oTr_221_enter, 29, 1);
				object o221_grenn = GetObjectByTag("221_grenn", 0);
				if (GetIsObjectValid(o221_grenn)) {
					SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
					SetFadeUntilScript();
					SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
					AssignCommand(o221_grenn, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
	}
}
