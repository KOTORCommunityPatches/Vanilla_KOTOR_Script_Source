void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	SetMinOneHP(object1, 0);
	DelayCommand(2.0, ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetLocation(object1), 0.0));
	DelayCommand(2.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(object1), 0.0));
	DelayCommand(2.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), object1, 0.0));
	int nParam1 = GetScriptParameter(1);
	RemoveAvailableNPC(nParam1);
}