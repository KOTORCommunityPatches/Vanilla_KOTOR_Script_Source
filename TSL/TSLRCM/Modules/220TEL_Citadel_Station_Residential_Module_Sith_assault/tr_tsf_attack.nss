void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		object oTr_tsf_attack = GetObjectByTag("tr_tsf_attack", 0);
		if ((!GetLocalBoolean(oTr_tsf_attack, 29))) {
			SetLocalBoolean(oTr_tsf_attack, 29, 1);
			object oTsf_sold;
			object oWP_fight_tsf_lead_2;
			int int3 = 6;
			int int4 = 0;
			while ((int4 < int3)) {
				oTsf_sold = GetObjectByTag("tsf_sold", int4);
				AssignCommand(oTsf_sold, ClearAllActions());
				oWP_fight_tsf_lead_2 = GetObjectByTag("WP_fight_tsf_1", int4);
				AssignCommand(oTsf_sold, ActionForceMoveToLocation(GetLocation(oWP_fight_tsf_lead_2), 1, 30.0));
				oWP_fight_tsf_lead_2 = GetObjectByTag("WP_fight_tsf_2", int4);
				AssignCommand(oTsf_sold, ActionForceMoveToLocation(GetLocation(oWP_fight_tsf_lead_2), 1, 30.0));
				(int4++);
			}
			object oTsf_lead = GetObjectByTag("tsf_lead", 0);
			AssignCommand(oTsf_lead, ClearAllActions());
			oWP_fight_tsf_lead_2 = GetObjectByTag("WP_fight_tsf_lead_1", 0);
			AssignCommand(oTsf_lead, ActionForceMoveToLocation(GetLocation(oWP_fight_tsf_lead_2), 1, 30.0));
			oWP_fight_tsf_lead_2 = GetObjectByTag("WP_fight_tsf_lead_2", 0);
			AssignCommand(oTsf_lead, ActionForceMoveToLocation(GetLocation(oWP_fight_tsf_lead_2), 1, 30.0));
			effect efDamage = EffectDamage(1000, 8, 0);
			effect efVisual = EffectVisualEffect(3003, 0);
			DelayCommand(1.5, ApplyEffectToObject(2, efVisual, oTsf_lead, 0.0));
			DelayCommand(1.6, ApplyEffectToObject(2, efDamage, oTsf_lead, 0.0));
		}
	}
}