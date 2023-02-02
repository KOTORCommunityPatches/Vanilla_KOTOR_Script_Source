void main() {
	object o203_thgd1 = GetObjectByTag("203_thgd1", 0);
	object o203_thgd2 = GetObjectByTag("203_thgd2", 0);
	object o203_thgd3 = GetObjectByTag("203_thgd3", 0);
	object o203_thgd4 = GetObjectByTag("203_thgd4", 0);
	if (GetIsObjectValid(o203_thgd1)) {
		DelayCommand(0.1, AssignCommand(o203_thgd1, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if (GetIsObjectValid(o203_thgd2)) {
		DelayCommand(0.1, AssignCommand(o203_thgd2, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if (GetIsObjectValid(o203_thgd3)) {
		DelayCommand(0.1, AssignCommand(o203_thgd3, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	if (GetIsObjectValid(o203_thgd4)) {
		DelayCommand(0.1, AssignCommand(o203_thgd4, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	SetLocalBoolean(GetObjectByTag("walltex", 0), 40, 1);
}
