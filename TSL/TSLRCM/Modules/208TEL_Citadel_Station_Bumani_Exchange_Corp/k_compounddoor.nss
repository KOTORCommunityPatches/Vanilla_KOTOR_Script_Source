void main() {
	object o203_Ith_Rec = GetObjectByTag("203_Ith_Rec", 0);
	if ((GetGlobalNumber("203TEL_Czerka_Attack") == 1)) {
		SetLocalBoolean(o203_Ith_Rec, 36, 1);
		SetLocalBoolean(GetObjectByTag("tr_czerka_fp", 0), 36, 1);
		AssignCommand(o203_Ith_Rec, ClearAllActions());
		AssignCommand(o203_Ith_Rec, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		AssignCommand(o203_Ith_Rec, ClearAllActions());
		DelayCommand(1.0, AssignCommand(o203_Ith_Rec, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}