void main() {
	object o204_Ith_Rec = GetObjectByTag("204_Ith_Rec", 0);
	if ((GetGlobalNumber("203TEL_Czerka_Attack") == 1)) {
		SetLocalBoolean(o204_Ith_Rec, 36, 1);
		SetLocalBoolean(GetObjectByTag("tr_czerka_fp", 0), 36, 1);
		AssignCommand(o204_Ith_Rec, ClearAllActions());
		AssignCommand(o204_Ith_Rec, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (GetLocalBoolean(OBJECT_SELF, 45)) {
			return;
		}
		else {
			AssignCommand(o204_Ith_Rec, ClearAllActions());
			DelayCommand(1.0, AssignCommand(o204_Ith_Rec, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}

