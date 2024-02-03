void main() {
	int nParam1 = GetScriptParameter(1);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oAtris = GetObjectByTag("Atris", 0);
	switch (nParam1) {
		case 0:
			SetLightsaberPowered(oAtris, 1, 1, 0);
			break;
		case 1:
			{
				effect efBeam = EffectBeam(2038, oAtris, 0, 0);
				effect efVisual = EffectVisualEffect(1021, 0);
				DelayCommand(0.7, ApplyEffectToObject(1, efBeam, oHandmaiden, 1.4));
				DelayCommand(0.8, ApplyEffectToObject(1, efVisual, oHandmaiden, 1.5));
				AssignCommand(oAtris, PlayAnimation(121, 1.0, 2.0));
			}
			break;
		case 2:
			{
				effect effect5 = EffectBeam(2038, oAtris, 0, 0);
				effect effect7 = EffectVisualEffect(1021, 0);
				DelayCommand(0.4, ApplyEffectToObject(1, effect5, oHandmaiden, 1.4));
				DelayCommand(0.5, ApplyEffectToObject(1, effect7, oHandmaiden, 1.5));
				AssignCommand(oAtris, PlayAnimation(121, 1.0, 2.0));
			}
			break;
	}
}

