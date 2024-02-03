void main() {
	object oHhroar = GetObjectByTag("hhroar", 0);
	if (GetIsObjectValid(oHhroar)) {
		SoundObjectPlay(oHhroar);
	}
	else {
		AurPostString("** No sound effectobject found", 5, 15, 10.0);
	}
}

