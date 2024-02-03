void main() {
	object oG_militia_c = GetObjectByTag("g_militia_c", 0);
	object oG_militia_a = GetObjectByTag("g_militia_a", 0);
	object oG_militia_d = GetObjectByTag("g_militia_d", 0);
	object oG_militia_b = GetObjectByTag("g_militia_b", 0);
	ApplyEffectToObject(0, EffectDeath(0, 1, 0), oG_militia_c, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1, 0), oG_militia_a, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1, 0), oG_militia_d, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1, 0), oG_militia_b, 0.0);
}

