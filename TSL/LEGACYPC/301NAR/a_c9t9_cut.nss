void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oPC = GetFirstPC();
				AssignCommand(oPC, ClearAllActions());
				object oWP_work_c9t9 = GetObjectByTag("WP_work_c9t9", 0);
				AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP_work_c9t9), 0, 30.0));
				DestroyObject(GetObjectByTag("c9t9_blocker", 0), 0.0, 1, 0.0, 0);
				DelayCommand(0.2, AssignCommand(GetObjectByTag("ForceCage2", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			}
			break;
		case 2:
			{
				object object7 = GetFirstPC();
				AssignCommand(object7, ClearAllActions());
				AssignCommand(object7, ActionPlayAnimation(113, 1.0, 0.0));
			}
			break;
		case 3:
			{
				effect efVisual = EffectVisualEffect(3003, 0);
				effect efDamage = EffectDamage(1000, 8, 0);
				ApplyEffectToObject(0, efVisual, GetObjectByTag("c9t9", 0), 0.0);
				ApplyEffectToObject(0, efDamage, GetObjectByTag("c9t9", 0), 0.0);
			}
			break;
		case 4:
			{
				object oModo = GetObjectByTag("modo", 0);
				AssignCommand(oModo, ClearAllActions());
				object oWP_modo_move = GetObjectByTag("WP_modo_move", 0);
				AssignCommand(oModo, ActionForceMoveToLocation(GetLocation(oWP_modo_move), 0, 30.0));
			}
			break;
		case 5:
			{
				object oLupo = GetObjectByTag("lupo", 0);
				AssignCommand(oLupo, ClearAllActions());
				object oWP_lupo_move = GetObjectByTag("WP_lupo_move", 0);
				AssignCommand(oLupo, ActionForceMoveToLocation(GetLocation(oWP_lupo_move), 1, 30.0));
			}
			break;
		case 6:
			{
				object object19 = GetObjectByTag("modo", 0);
				object object21 = GetObjectByTag("lupo", 0);
				AssignCommand(object19, ClearAllActions());
				AssignCommand(object21, ClearAllActions());
				object oWP_lupo_borna = GetObjectByTag("WP_modo_desk", 0);
				AssignCommand(object19, ActionForceMoveToLocation(GetLocation(oWP_lupo_borna), 0, 30.0));
				oWP_lupo_borna = GetObjectByTag("WP_lupo_borna", 0);
				AssignCommand(object21, ActionForceMoveToLocation(GetLocation(oWP_lupo_borna), 1, 30.0));
			}
			break;
		case 7:
			{
				object object26 = GetObjectByTag("lupo", 0);
				DelayCommand(0.1, DestroyObject(object26, 0.0, 0, 0.0, 0));
			}
			break;
		case 8:
			{
				object oT3m4 = GetObjectByTag("t3m4", 0);
				AssignCommand(oT3m4, ClearAllActions());
				object object30 = GetObjectByTag("WP_work_c9t9", 0);
				AssignCommand(oT3m4, ActionForceMoveToLocation(GetLocation(object30), 0, 30.0));
				AssignCommand(oT3m4, ActionPlayAnimation(25, 1.0, 1.0));
				DestroyObject(GetObjectByTag("c9t9_blocker", 0), 0.0, 1, 0.0, 0);
				DelayCommand(0.2, AssignCommand(GetObjectByTag("ForceCage2", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			}
			break;
		case 9:
			{
				object object34 = GetObjectByTag("t3m4", 0);
				AssignCommand(object34, ClearAllActions());
				AssignCommand(object34, ActionForceMoveToLocation(GetLocation(GetFirstPC()), 0, 30.0));
			}
			break;
		case 10:
			{
				object oBaodur = GetObjectByTag("baodur", 0);
				AssignCommand(oBaodur, ClearAllActions());
				object object39 = GetObjectByTag("WP_work_c9t9", 0);
				AssignCommand(oBaodur, ActionForceMoveToLocation(GetLocation(object39), 0, 30.0));
				AssignCommand(oBaodur, ActionPlayAnimation(113, 1.0, 0.0));
				DestroyObject(GetObjectByTag("c9t9_blocker", 0), 0.0, 1, 0.0, 0);
				DelayCommand(0.2, AssignCommand(GetObjectByTag("ForceCage2", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			}
			break;
		case 11:
			{
				object object43 = GetObjectByTag("baodur", 0);
				AssignCommand(object43, ClearAllActions());
				AssignCommand(object43, ActionForceMoveToLocation(GetLocation(GetFirstPC()), 0, 30.0));
			}
			break;
		case 12:
			break;
		default:
			AurPostString("ERROR with c9t9 cutscene!", 5, 15, 10.0);
			break;
	}
}

