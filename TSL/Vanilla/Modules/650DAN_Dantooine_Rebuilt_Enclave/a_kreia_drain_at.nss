void main() {
	object oVrook = GetObjectByTag("Vrook", 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	effect efBeam = EffectBeam(2029, oKreia, 0, 0);
	effect efVisual = EffectVisualEffect(1009, 0);
	DelayCommand(0.5, ApplyEffectToObject(1, efBeam, oVrook, 3.8));
	DelayCommand(0.5, ApplyEffectToObject(1, efBeam, oKavar, 3.5));
	DelayCommand(0.5, ApplyEffectToObject(1, efBeam, oZezkaiell, 3.0));
	DelayCommand(0.7, ApplyEffectToObject(1, efVisual, oVrook, 3.6));
	DelayCommand(0.7, ApplyEffectToObject(1, efVisual, oKavar, 3.3));
	DelayCommand(0.7, ApplyEffectToObject(1, efVisual, oZezkaiell, 2.8));
	DelayCommand(0.7, AssignCommand(oVrook, ActionPlayAnimation(21, 1.0, 2.9)));
	DelayCommand(3.5, AssignCommand(oVrook, ClearAllActions()));
	DelayCommand(4.3, AssignCommand(oVrook, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(4.3, SetLightsaberPowered(oVrook, 1, 0, 1));
	DelayCommand(4.0, SetOrientOnClick(oVrook, 0));
	DelayCommand(0.7, AssignCommand(oKavar, ActionPlayAnimation(21, 1.0, 2.9)));
	DelayCommand(3.5, AssignCommand(oKavar, ClearAllActions()));
	DelayCommand(4.0, AssignCommand(oKavar, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(4.0, SetLightsaberPowered(oKavar, 1, 0, 1));
	DelayCommand(4.0, SetOrientOnClick(oKavar, 0));
	DelayCommand(0.7, AssignCommand(oZezkaiell, ActionPlayAnimation(21, 1.0, 2.9)));
	DelayCommand(3.5, AssignCommand(oZezkaiell, ClearAllActions()));
	DelayCommand(3.5, AssignCommand(oZezkaiell, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(3.5, SetLightsaberPowered(oZezkaiell, 1, 0, 1));
	DelayCommand(4.0, SetOrientOnClick(oZezkaiell, 0));
}
