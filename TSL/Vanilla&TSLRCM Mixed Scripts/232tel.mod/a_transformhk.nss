// Prototypes
void sub1();

void sub1() {
	if ((!IsAvailableCreature(5))) {
		AddAvailableNPCByTemplate(5, "p_hk47");
	}
	SwitchPlayerCharacter(5);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
}

void main() {
	object oD_hk = GetObjectByTag("d_hk", 0);
	SetLocked(oD_hk, 0);
	DestroyObject(GetObjectByTag("232_hk502", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("232_hk501", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("232_hk503", 0), 0.0, 1, 0.0, 0);
	DestroyObject(GetObjectByTag("Salvage", 0), 0.0, 1, 0.0, 0);
	DelayCommand(0.3, sub1());
}

