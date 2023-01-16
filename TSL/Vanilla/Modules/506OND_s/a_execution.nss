// Prototypes
void sub2(object objectParam1, talent talentParam2, int intParam3);
void sub1(object objectParam1, object objectParam2, talent talentParam3, int intParam4);

void sub2(object objectParam1, talent talentParam2, int intParam3) {
	if (intParam3) {
		SetMinOneHP(objectParam1, 0);
		ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(objectParam1) - 1), 8, 0), objectParam1, 0.0);
	}
	ApplyEffectToObject(1, EffectAssuredHit(), OBJECT_SELF, 3.0);
	ActionUseTalentOnObject(talentParam2, objectParam1);
}

void sub1(object objectParam1, object objectParam2, talent talentParam3, int intParam4) {
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	AssignCommand(objectParam1, ActionDoCommand(sub2(objectParam2, talentParam3, intParam4)));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oKadron = GetObjectByTag("kadron", 0);
				ActionPauseConversation();
				AssignCommand(oKadron, ActionMoveToObject(GetObjectByTag("wp_kadron_end_walk", 0), 0, 1.0));
				AssignCommand(oKadron, ActionDoCommand(SetFacing(90.0)));
				AssignCommand(oKadron, ActionDoCommand(SetLockOrientationInDialog(oKadron, 1)));
				DelayCommand(3.0, ActionResumeConversation());
				AssignCommand(GetFirstPC(), ActionDoCommand(SetFacing(180.0)));
				AssignCommand(GetFirstPC(), ActionDoCommand(SetLockOrientationInDialog(GetFirstPC(), 1)));
			}
			break;
		case 1:
			ActionPauseConversation();
			{
				object oVaklu = GetObjectByTag("vaklu", 0);
				ChangeToStandardFaction(oVaklu, 4);
				int int3 = 0;
				int3 = 0;
				while ((int3 < 3)) {
				{
					object oRo_sold_gunThrone = GetObjectByTag("ro_sold_gunThrone", int3);
					ChangeToStandardFaction(oRo_sold_gunThrone, 2);
					DelayCommand(2.0, sub1(oRo_sold_gunThrone, oVaklu, TalentFeat(18), 1));
				}
					(int3++);
				}
				DelayCommand(6.0, ActionResumeConversation());
			}
			break;
		case 2:
			{
				object oTalia = GetObjectByTag("Talia", 0);
				object object13 = GetObjectByTag("Vaklu", 0);
				object object15 = GetObjectByTag("Kadron", 0);
				int int4 = 0;
				int4 = 0;
				while ((int4 < 3)) {
				{
					object object17 = GetObjectByTag("ro_sold_gunThrone", int4);
					DelayCommand(1.0, AssignCommand(object17, ActionMoveToObject(GetObjectByTag((("wp_firingsquad" + IntToString((int4 + 1))) + "_end"), 0), 0, 1.0)));
					DelayCommand(12.0, DestroyObject(object17, 0.0, 1, 0.0, 0));
				}
					(int4++);
				}
				SetCreatureAILevel(object15, 3);
				DelayCommand(3.0, AssignCommand(object13, ActionMoveToObject(GetObjectByTag("wp_vaklu_end", 0), 0, 1.0)));
				DelayCommand(6.0, AssignCommand(oTalia, ActionMoveToObject(GetObjectByTag("wp_talia_end", 0), 0, 1.0)));
				DelayCommand(8.0, AssignCommand(object15, ActionMoveToObject(GetObjectByTag("wp_kadron_end", 0), 0, 1.0)));
				DelayCommand(14.0, DestroyObject(object13, 0.0, 1, 0.0, 0));
				DelayCommand(14.0, DestroyObject(object15, 0.0, 1, 0.0, 0));
				DelayCommand(14.0, DestroyObject(oTalia, 0.0, 1, 0.0, 0));
				SetLockOrientationInDialog(GetFirstPC(), 0);
				AssignCommand(GetFirstPC(), DelayCommand(8.0, SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0)));
				AssignCommand(GetFirstPC(), DelayCommand(8.0, SetFadeUntilScript()));
			}
			break;
		case 3:
			break;
	}
}

