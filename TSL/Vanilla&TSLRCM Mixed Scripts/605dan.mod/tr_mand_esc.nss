void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (("mand" == GetTag(oEntering))) {
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			object oWP_mand2_jump = GetObjectByTag("WP_mand2_jump", 0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(oWP_mand2_jump, 1));
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		}
	}
}

