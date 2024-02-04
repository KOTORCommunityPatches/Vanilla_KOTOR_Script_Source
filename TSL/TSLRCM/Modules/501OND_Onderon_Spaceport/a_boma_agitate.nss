void main() {
	object oBoma_frenzy = GetObjectByTag("boma_frenzy", 0);
	if (GetIsObjectValid(oBoma_frenzy)) {
		AssignCommand(oBoma_frenzy, ActionPlayAnimation(108, 1.0, 1.0));
		object oBomaSounds2 = GetObjectByTag("BomaSounds2", 0);
		SoundObjectPlay(oBomaSounds2);
	}
}