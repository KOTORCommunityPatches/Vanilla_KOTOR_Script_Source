void main() {
	object oHK502 = GetObjectByTag("HK502", 0);
	object oHK503 = GetObjectByTag("HK503", 0);
	AssignCommand(oHK502, ClearAllActions());
	AssignCommand(oHK503, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oHK502, ActionForceMoveToObject(GetObjectByTag("WP_HK502_1", 0), 0, 1.0, 30.0)));
	DelayCommand(0.5, AssignCommand(oHK503, ActionForceMoveToObject(GetObjectByTag("WP_HK503_1", 0), 0, 1.0, 30.0)));
}

