void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	effect efHeal = EffectHeal((GetMaxHitPoints(object1) - 1));
	ApplyEffectToObject(0, efHeal, object1, 0.0);
}

