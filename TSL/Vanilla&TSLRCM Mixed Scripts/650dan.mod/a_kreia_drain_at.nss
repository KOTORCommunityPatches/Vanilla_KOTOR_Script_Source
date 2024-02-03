// Globals
	effect effectGLOB_1;
	effect effectGLOB_2;

// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	float float1 = (1.0 + (Random(50) / 100.0));
	DelayCommand(float1, ApplyEffectToObject(1, effectGLOB_1, objectParam1, 2.33));
	DelayCommand(float1, ApplyEffectToObject(1, EffectChoke(), objectParam1, 2.0));
	DelayCommand(float1, ApplyEffectToObject(0, effectGLOB_2, objectParam1, 0.0));
	DelayCommand((float1 + 1.0), ApplyEffectToObject(0, effectGLOB_2, objectParam1, 0.0));
	DelayCommand((float1 + 1.5), SetLightsaberPowered(objectParam1, 1, 0, 1));
	DelayCommand((float1 + 2.0), ApplyEffectToObject(0, EffectDeath(0, 1, 0), objectParam1, 0.0));
}

void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	DelayCommand(0.5, AssignCommand(oKreia, PlayAnimation(124, 0.5, 0.0)));
	effectGLOB_1 = EffectBeam(2026, oKreia, 1, 0);
	effectGLOB_2 = EffectVisualEffect(1006, 0);
	sub1(GetObjectByTag("Kavar", 0));
	sub1(GetObjectByTag("Vrook", 0));
	sub1(GetObjectByTag("Zezkaiell", 0));
	SetGlobalFadeOut(4.0, 2.0, 0.0, 0.0, 0.0);
}

