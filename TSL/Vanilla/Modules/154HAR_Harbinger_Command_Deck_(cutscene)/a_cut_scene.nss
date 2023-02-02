void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oDarthsion = GetObjectByTag("darthsion", 0);
		if (GetIsObjectValid(oDarthsion)) {
			object oWP_sion_facing = GetObjectByTag("WP_sion_facing", 0);
			if (GetIsObjectValid(oWP_sion_facing)) {
				vector struct2 = GetPositionFromLocation(GetLocation(oWP_sion_facing));
				AssignCommand(oDarthsion, SetFacingPoint(struct2));
				AssignCommand(oDarthsion, SetLockOrientationInDialog(oDarthsion, 1));
				AssignCommand(oDarthsion, ActionPlayAnimation(3, 1.0, (-1.0)));
				object oTalk_holder = GetObjectByTag("talk_holder", 0);
				if (GetIsObjectValid(oTalk_holder)) {
					AssignCommand(oEntering, ActionStartConversation(oTalk_holder, "sion_cut", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
				else {
					AurPostString("No Talker", 5, 6, 5.0);
				}
			}
			else {
				AurPostString("No Facing", 5, 6, 5.0);
			}
		}
		else {
			AurPostString("No Sion", 5, 6, 5.0);
		}
	}
}
