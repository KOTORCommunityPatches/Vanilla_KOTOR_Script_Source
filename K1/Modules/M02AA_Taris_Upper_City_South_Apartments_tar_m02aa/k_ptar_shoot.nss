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
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNearestTrooper1 = GetNearestObjectByTag("Trooper1", OBJECT_SELF, 1);
	object oNearestBith = GetNearestObjectByTag("Bith", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(1);
	sub1(5.2);
	ChangeToStandardFaction(oNearestTrooper1, 2);
	ChangeToStandardFaction(oNearestBith, 4);
	ApplyEffectToObject(1, EffectAssuredHit(), oNearestTrooper1, 5.0);
	DelayCommand(0.3, AssignCommand(oNearestTrooper1, ActionAttack(oNearestBith, 0)));
	DelayCommand(1.08, SetDialogPlaceableCamera(5));
}
