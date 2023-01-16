void PostString(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	AurPostString(stringParam1, intParam2, intParam3, floatParam4);
}

void main() {
	
	int nAlign = GetGoodEvilValue(GetFirstPC());
	int nAdjust;
	
	PostString(("ALIGN-" + IntToString(nAlign)), 5, 5, 5.0);
	
	SetGlobalNumber("LEV_ALIGNMENT", nAlign);
	
	nAdjust = 0;
	
	while (nAdjust < nAlign)
		{
			AdjustAlignment(GetFirstPC(), 3, 1);
			(nAdjust++);
		}
	
	PostString(("ALIGN-" + IntToString(GetGoodEvilValue(GetFirstPC()))), 5, 6, 5.0);
}
