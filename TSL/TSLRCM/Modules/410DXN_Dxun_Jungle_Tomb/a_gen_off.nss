void main() {
	string string1 = "1";
	if ((GetTag(OBJECT_SELF) == "power_gen")) {
		string1 = "2";
	}
	AssignCommand(OBJECT_SELF, ActionPlayAnimation(203, 1.0, 0.0));
	SoundObjectFadeAndStop(GetObjectByTag(("Elc_Holding_Cell" + string1), 0), 1.0);
	SoundObjectFadeAndStop(GetObjectByTag(("Generator" + string1), 0), 1.0);
	SoundObjectPlay(GetObjectByTag((("Generator" + string1) + "off"), 0));
}