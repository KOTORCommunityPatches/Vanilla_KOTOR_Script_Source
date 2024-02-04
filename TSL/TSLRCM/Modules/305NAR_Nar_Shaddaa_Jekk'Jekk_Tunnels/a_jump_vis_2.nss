void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	AssignCommand(oVisquis, ClearAllActions());
	DelayCommand(0.3, AssignCommand(oVisquis, ActionJumpToObject(GetObjectByTag("WP_VIS_JUMP_2", 0), 0)));
}