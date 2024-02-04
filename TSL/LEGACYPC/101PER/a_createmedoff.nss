void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.3, 0.0, 0.0, 0.0));
	object oWP_MEDOFF = GetObjectByTag("WP_MEDOFF", 0);
	CreateObject(1, "n_commf001", GetLocation(oWP_MEDOFF), 0);
}

