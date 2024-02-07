void main() {
	object o203_thugd1 = GetObjectByTag("203_thugd1", 0);
	object o203_thugd2 = GetObjectByTag("203_thugd2", 0);
	object o203_thugd3 = GetObjectByTag("203_thugd3", 0);
	object o203_thugd4 = GetObjectByTag("203_thugd4", 0);
	if (GetIsObjectValid(o203_thugd1)) {
		DelayCommand(0.1, AssignCommand(o203_thugd1, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		SetLocalBoolean(GetObjectByTag("walltex", 0), 40, 1);
	}
	else {
		if (GetIsObjectValid(o203_thugd2)) {
			DelayCommand(0.1, AssignCommand(o203_thugd2, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			SetLocalBoolean(GetObjectByTag("walltex", 0), 40, 1);
		}
		else {
			if (GetIsObjectValid(o203_thugd3)) {
				DelayCommand(0.1, AssignCommand(o203_thugd3, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				SetLocalBoolean(GetObjectByTag("walltex", 0), 40, 1);
			}
			else {
				if (GetIsObjectValid(o203_thugd4)) {
					DelayCommand(0.1, AssignCommand(o203_thugd4, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
					SetLocalBoolean(GetObjectByTag("walltex", 0), 40, 1);
				}
				else {
					DelayCommand(0.1, AssignCommand(GetObjectByTag("walltex", 0), ActionStartConversation(GetPCSpeaker(), "exchwallt", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				}
			}
		}
	}
}

