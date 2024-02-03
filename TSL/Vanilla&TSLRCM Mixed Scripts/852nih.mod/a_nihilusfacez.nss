void main() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oPC = GetFirstPC();
	DelayCommand(1.0, AssignCommand(oVisasMarr, ActionDoCommand(SetFacing(270.0))));
	DelayCommand(1.0, AssignCommand(oPC, ActionDoCommand(SetFacing(90.0))));
}

