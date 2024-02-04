// Prototypes
void sub1();

void sub1() {
	CreateObject(1, "n_darthtraya001", GetLocation(GetWaypointByTag("sp_traya")), 0);
}

void main() {
	object oPC = GetFirstPC();
	object oAtris = GetObjectByTag("Atris", 0);
	DelayCommand(0.1, AssignCommand(oAtris, ActionMoveToObject(GetWaypointByTag("wp_kreia_end"), 1, 1.0)));
	SetGlobalFadeOut(4.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(6.0, sub1());
	AssignCommand(GetFirstPC(), DelayCommand(8.0, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0)));
	DelayCommand(6.5, DestroyObject(oAtris, 0.0, 0, 0.0, 0));
}