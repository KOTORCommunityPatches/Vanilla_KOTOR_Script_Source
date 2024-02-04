void main() {
	object oKathgrowl = GetObjectByTag("kathgrowl", 0);
	object oKathvogga = GetObjectByTag("kathvogga", 0);
	object object5 = GetObjectByTag("kathvogga", 1);
	if (GetIsObjectValid(oKathgrowl)) {
		AssignCommand(oKathvogga, ActionPlayAnimation(10282, 1.0, 0.0));
		DelayCommand(0.5, AssignCommand(object5, ActionPlayAnimation(10283, 1.0, 0.0)));
		SoundObjectPlay(oKathgrowl);
		DelayCommand(1.0, SoundObjectPlay(oKathgrowl));
	}
	else {
		AurPostString("** No sound effectobject found", 5, 15, 10.0);
	}
}