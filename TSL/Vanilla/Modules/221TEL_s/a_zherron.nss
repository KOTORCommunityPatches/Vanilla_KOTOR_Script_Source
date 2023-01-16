void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("militia", 0), ActionMoveToObject(GetObjectByTag("wp_militia1_04", 0), 1, 1.0)));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("militia", 1), ActionMoveToObject(GetObjectByTag("wp_militia2_04", 0), 1, 1.0)));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("militia", 2), ActionMoveToObject(GetObjectByTag("wp_militia3_01", 0), 1, 1.0)));
	DelayCommand(6.0, AssignCommand(GetObjectByTag("tsfoff1", 0), ActionMoveToObject(GetObjectByTag("wp_tsf1_01", 0), 1, 1.0)));
	DelayCommand(6.0, AssignCommand(GetObjectByTag("tsfoff2", 0), ActionMoveToObject(GetObjectByTag("wp_tsf2_01", 0), 1, 1.0)));
	DelayCommand(12.0, DestroyObject(GetObjectByTag("tsfoff1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(12.0, DestroyObject(GetObjectByTag("tsfoff2", 0), 0.0, 0, 0.0, 0));
}

