void main() {
	object oEntering = GetEnteringObject();
	string string1 = GetTag(oEntering);
	AurPostString((string1 + " entered trigger"), 5, 6, 5.0);
	string string3 = "Journalist";
	string string4 = "vaklu_troop_cs";
	string string5 = "vaklu_troop_cs2";
	if ((((string1 == string3) || (string1 == string4)) || (string1 == string5))) {
		SetCommandable(1, oEntering);
		DelayCommand(1.0, DestroyObject(oEntering, 0.0, 0, 0.0, 0));
		AurPostString(("Destroying " + string1), 5, 7, 5.0);
	}
}
