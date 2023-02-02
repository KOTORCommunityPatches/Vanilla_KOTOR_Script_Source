void main() {
	if ((GetGlobalNumber("503OND_Gelesi_Gone") == 2)) {
		DelayCommand(0.5, AssignCommand(OBJECT_SELF, ClearAllActions()));
		DelayCommand(0.6, AssignCommand(OBJECT_SELF, ActionForceMoveToObject(GetObjectByTag("wp_panar", 0), 0, 1.0, 30.0)));
	}
}
