void main() {
	object o201_ith_sto = GetObjectByTag("201_ith_sto", 0);
	if (GetIsObjectValid(o201_ith_sto)) {
		DelayCommand(1.0, AssignCommand(o201_ith_sto, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(o201_ith_sto, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

