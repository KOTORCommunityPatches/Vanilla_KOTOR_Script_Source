void main() {
	object oP_kinrath_gland = GetObjectByTag("p_kinrath_gland", 0);
	if ((!GetIsObjectValid(oP_kinrath_gland))) {
		AurPostString("Object invalid", 5, 5, 5.0);
	}
	GiveItem(oP_kinrath_gland, GetFirstPC());
}