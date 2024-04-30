void main() {
	object oVogga_Door = GetObjectByTag("Vogga_Door", 0);
	AssignCommand(oVogga_Door, ActionUnlockObject(oVogga_Door));
	DelayCommand(0.1, AssignCommand(oVogga_Door, ActionOpenDoor(oVogga_Door)));
	SetLocalBoolean(OBJECT_SELF, 31, 1);
	SetLocalBoolean(GetObjectByTag("tr_voggaservant", 0), 31, 1);
	DelayCommand(0.3, AssignCommand(GetObjectByTag("Twilek_Servant", 0), ActionMoveToObject(GetObjectByTag("wp_twiservant_1", 0), 0, 1.0)));
}

