void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oVisasMarr = GetObjectByTag("VisasMarr", 0);
		if (GetIsObjectValid(oVisasMarr)) {
			int nAlign = GetAlignmentGoodEvil(oVisasMarr);
			if ((nAlign == 2)) {
				PlayRoomAnimation("851nih46", 1);
			}
			else {
				PlayRoomAnimation("851nih46", 4);
			}
		}
		object oRavagerIntro = GetObjectByTag("RavagerIntro", 0);
		if ((!GetLocalBoolean(oRavagerIntro, 55))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
			SetLocalBoolean(oRavagerIntro, 55, 1);
			AssignCommand(oRavagerIntro, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			PlayRoomAnimation("851nih02", 8);
		}
	}
}

