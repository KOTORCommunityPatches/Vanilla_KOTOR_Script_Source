// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
	ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), 2.0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			sub1(GetObjectByTag("WP_boomboom_1", 0));
			DelayCommand(1.0, sub1(GetObjectByTag("WP_boomboom_2", 0)));
			break;
		case 1:
			sub1(GetObjectByTag("WP_boomboom_3", 0));
			sub1(GetObjectByTag("WP_boomboom_4", 0));
			break;
		case 2:
			{
				object oSithAssassin_A = GetObjectByTag("SithAssassin_A", 0);
				object oSithAssassin_B = GetObjectByTag("SithAssassin_B", 0);
				object oSithAssassin_C = GetObjectByTag("SithAssassin_C", 0);
				object oSithAssassin_D = GetObjectByTag("SithAssassin_D", 0);
				AssignCommand(oSithAssassin_A, ClearAllActions());
				AssignCommand(oSithAssassin_B, ClearAllActions());
				AssignCommand(oSithAssassin_C, ClearAllActions());
				AssignCommand(oSithAssassin_D, ClearAllActions());
				DelayCommand(0.5, AssignCommand(oSithAssassin_A, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_sith_A", 0)), 1, 30.0)));
				DelayCommand(0.5, AssignCommand(oSithAssassin_B, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_sith_B", 0)), 1, 30.0)));
				DelayCommand(1.0, AssignCommand(oSithAssassin_C, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_sith_C", 0)), 1, 30.0)));
				DelayCommand(1.0, AssignCommand(oSithAssassin_D, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_sith_D", 0)), 1, 30.0)));
				if ((GetGlobalNumber("602DAN_End") == 2)) {
					CreateObject(1, "merc_leader", GetLocation(GetObjectByTag("wp_danlead_sp", 0)), 0);
				}
				else {
					CreateObject(1, "221_zherron", GetLocation(GetObjectByTag("wp_danlead_sp", 0)), 0);
				}
			}
			break;
		case 3:
			{
				object oSithassassin = GetObjectByTag("sithassassin", 0);
				AssignCommand(oSithassassin, ClearAllActions());
				AssignCommand(oSithassassin, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_sithassassin", 0))));
			}
			break;
		case 4:
			ChangeToStandardFaction(GetObjectByTag("SithAssassin_A", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("SithAssassin_B", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("SithAssassin_C", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("SithAssassin_D", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("sithassassin", 0), 1);
			break;
	}
}

