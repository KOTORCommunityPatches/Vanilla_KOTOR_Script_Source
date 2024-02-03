void main() {
	effect efHeal = EffectHeal(500);
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	ApplyEffectToObject(0, efHeal, object1, 0.0);
}

