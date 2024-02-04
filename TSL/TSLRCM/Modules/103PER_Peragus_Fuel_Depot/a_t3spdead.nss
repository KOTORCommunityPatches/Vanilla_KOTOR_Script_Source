void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			if ((GetJournalEntry("RESCUET3-M4") < 98)) {
				CreateObject(1, "p_t3m007", GetLocation(GetObjectByTag("WP_T3_DEAD", 0)), 0);
				object oT3M4_temp = GetObjectByTag("T3M4_temp", 0);
				SetMinOneHP(oT3M4_temp, 1);
				ApplyEffectToObject(0, EffectDamage(40, 8, 0), oT3M4_temp, 0.0);
				DisableHealthRegen(1);
				ApplyEffectToObject(2, EffectVisualEffect(2067, 0), oT3M4_temp, 0.0);
				ActionPlayAnimation(44, 1.0, 10.0);
			}
			return;
		case 1:
			DestroyObject(GetObjectByTag("T3M4_temp", 0), 0.0, 0, 0.0, 0);
			DisableHealthRegen(0);
	}
}