// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1();

void sub1() {
	PlayRumblePattern(8);
}

void main() {
	object oPC = GetFirstPC();
	effect effect1 = EffectDroidStun();
	effect efVisual = EffectVisualEffect(2049, 0);
	effect effect5 = EffectVisualEffect(4034, 0);
	if (GetIsObjectValid(oPC)) {
		DelayCommand(0.0, PlaySound("v_imp_stun"));
		DelayCommand(0.6, sub1());
		DelayCommand(0.7, ApplyEffectToObject(2, efVisual, oPC, 0.0));
		DelayCommand(0.7, ApplyEffectToObject(2, effect1, oPC, 0.0));
		DelayCommand(0.8, ApplyEffectToObject(2, effect5, oPC, 0.0));
		DelayCommand(0.8, ApplyEffectToObject(0, EffectSleep(), oPC, 0.0));
	}
}