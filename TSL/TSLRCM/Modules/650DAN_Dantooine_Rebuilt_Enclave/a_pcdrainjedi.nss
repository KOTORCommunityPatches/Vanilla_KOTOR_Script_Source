// Globals
	effect effectGLOB_1;
	effect effectGLOB_2;

// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	if (GetIsObjectValid(objectParam1)) {
		float float1 = (0.5 + (Random(50) / 100.0));
		DelayCommand(float1, ApplyEffectToObject(1, effectGLOB_1, objectParam1, 2.33));
		DelayCommand(float1, ApplyEffectToObject(1, EffectChoke(), objectParam1, 2.0));
		DelayCommand(float1, ApplyEffectToObject(0, effectGLOB_2, objectParam1, 0.0));
		DelayCommand((float1 + 1.0), ApplyEffectToObject(0, effectGLOB_2, objectParam1, 0.0));
		DelayCommand((float1 + 1.5), SetLightsaberPowered(objectParam1, 1, 0, 1));
		DelayCommand((float1 + 2.0), ApplyEffectToObject(0, EffectDeath(0, 1, 0), objectParam1, 0.0));
	}
}

void main() {
	object oPC = GetFirstPC();
	DelayCommand(0.5, AssignCommand(oPC, PlayAnimation(124, 0.5, 0.0)));
	DelayCommand(6.0, AssignCommand(oPC, SetFacingPoint(GetPosition(GetWaypointByTag("WP_KREIA_JEDI_JUMP")))));
	effectGLOB_1 = EffectBeam(2026, oPC, 1, 0);
	effectGLOB_2 = EffectVisualEffect(1006, 0);
	sub1(GetObjectByTag("Kavar", 0));
	sub1(GetObjectByTag("Vrook", 0));
	sub1(GetObjectByTag("Zezkaiell", 0));
}