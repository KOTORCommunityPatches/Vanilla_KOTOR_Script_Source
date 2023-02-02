void main() {
	object oSmug_plant = GetObjectByTag("smug_plant", 0);
	if (GetIsObjectValid(oSmug_plant)) {
		if ((!GetLocalBoolean(oSmug_plant, 36))) {
			SetLocalBoolean(oSmug_plant, 36, 1);
			AssignCommand(oSmug_plant, ClearAllEffects());
			object oPlant_comp = GetObjectByTag("plant_comp", 0);
			if (GetIsObjectValid(oPlant_comp)) {
				SetLocalBoolean(oPlant_comp, 36, 1);
			}
		}
	}
}
