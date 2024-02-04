// Prototypes
void sub1();

void sub1() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetObjectByTag("baodur", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("baodur", 0), ActionStartConversation(GetFirstPC(), "262bdcg", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void main() {
	object oKreiaCell = GetObjectByTag("KreiaCell", 0);
	object oAttonCell = GetObjectByTag("AttonCell", 0);
	object oForceCage2BD = GetObjectByTag("ForceCage2BD", 0);
	DelayCommand(0.5, AssignCommand(oKreiaCell, ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(0.5, AssignCommand(oAttonCell, ActionPlayAnimation(202, 1.0, 0.0)));
	DelayCommand(0.5, AssignCommand(oForceCage2BD, ActionPlayAnimation(202, 1.0, 0.0)));
	DestroyObject(GetObjectByTag("kreia_cage_block", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("atton_cage_block", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("baodur_cage_block", 0), 0.0, 0, 0.0, 0);
	effect efResurrect = EffectResurrection(10);
	ApplyEffectToObject(0, efResurrect, GetObjectByTag("baodur", 0), 0.0);
	DelayCommand(1.0, sub1());
}