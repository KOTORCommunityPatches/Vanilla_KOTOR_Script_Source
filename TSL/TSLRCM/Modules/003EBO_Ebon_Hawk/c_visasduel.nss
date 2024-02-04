// Prototypes
int sub1();

int sub1() {
	return ((GetStandardFaction(GetObjectByTag("VisasCut", 0)) == 1) || (GetStandardFaction(GetObjectByTag("VisasCut", 0)) == 3));
}

int StartingConditional() {
	object oVisasCut = GetObjectByTag("VisasCut", 0);
	return ((GetIsObjectValid(oVisasCut) && (GetModuleName() == "003EBO")) && sub1());
}