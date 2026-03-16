void main() {
	if (GetIsXBox()) {
		return;
	}
	int nParam1 = GetScriptParameter(1);
	NoClicksFor(IntToFloat(nParam1));
}

