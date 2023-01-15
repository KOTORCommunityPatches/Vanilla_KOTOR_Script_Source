void main() {
	AurPostString("a_attonpre_cs: enter..", 5, 5, 5.0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oPC = GetFirstPC();
				object oAtton = GetObjectByTag("Atton", 0);
				object oKreia = GetObjectByTag("Kreia", 0);
				object oWp_attonpre = GetObjectByTag("wp_attonpre", 0);
				object oWP_fight_kreia = GetObjectByTag("WP_fight_kreia", 0);
				object oWp_attonpre2 = GetObjectByTag("wp_attonpre2", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWp_attonpre, 1, 1.0));
				AssignCommand(oKreia, ClearAllActions());
				AssignCommand(oKreia, ActionWait(0.6));
				AssignCommand(oKreia, ActionMoveToObject(oWP_fight_kreia, 1, 1.0));
				AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(GetPosition(oAtton))));
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(oAtton, ActionWait(0.6));
				AssignCommand(oAtton, ActionMoveToObject(oWp_attonpre2, 1, 1.0));
				DelayCommand(4.0, AssignCommand(oAtton, ClearAllActions()));
				DelayCommand(4.0, AssignCommand(oAtton, ActionStartConversation(oPC, "attonpre", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			break;
		case 2:
			break;
	}
}

