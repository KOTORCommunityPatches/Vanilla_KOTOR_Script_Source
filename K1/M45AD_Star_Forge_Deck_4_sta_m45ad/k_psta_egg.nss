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
void sub2(int intParam1, string stringParam2, location locationParam3);
void sub1(float floatParam1);

void sub2(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oInvis_easter_egg = GetObjectByTag("invis_easter_egg", 0);
	object object3 = OBJECT_SELF;
	object oPC = GetFirstPC();
	string string1 = "g_w_hvrptbltr002";
	object oSta_way_party2 = GetObjectByTag("sta_way_party2", 0);
	location location1 = GetLocation(OBJECT_SELF);
	sub1(17.6);
	SetGlobalBoolean("STA_MALAK_DRAIN", 1);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 27);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 27);
	DelayCommand(0.5, SetDialogPlaceableCamera(115));
	DelayCommand(0.6, AssignCommand(oPC, ActionCastFakeSpellAtObject(35, oInvis_easter_egg, 0)));
	DelayCommand(1.2, CancelCombat(oPC));
	DelayCommand(1.1, ApplyEffectAtLocation(0, EffectVisualEffect(1046, 0), GetLocation(object3), 0.0));
	DelayCommand(1.5, AssignCommand(oPC, PlaySound("cs_ghoulchange")));
	DelayCommand(1.5, AssignCommand(object3, JumpToObject(oSta_way_party2, 1)));
	DelayCommand(1.7, sub2(1, "n_twilekf001", location1));
	DelayCommand(2.2, SetMusicVolume(1.0));
	DelayCommand(3.0, SetDialogPlaceableCamera(116));
	DelayCommand(3.1, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
	DelayCommand(3.5, AssignCommand(oPC, ActionPlayAnimation(16, 1.0, 5.5)));
	DelayCommand(3.7, AssignCommand(GetObjectByTag("n_twilekf001", 0), ActionPlayAnimation(17, 1.0, 6.0)));
	DelayCommand(8.5, SetDialogPlaceableCamera(117));
	DelayCommand(8.3, AssignCommand(GetObjectByTag("n_twilekf001", 0), ActionPlayAnimation(16, 1.0, 9.2)));
	DelayCommand(8.4, AssignCommand(oPC, ActionPlayAnimation(17, 1.0, 9.2)));
	DelayCommand(14.5, SetDialogPlaceableCamera(118));
	DelayCommand(16.5, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(17.5, MusicBackgroundStop(GetArea(OBJECT_SELF)));
}
