// Prototypes
object sub2(string stringParam1, int intParam2);
void sub1(string stringParam1, int intParam2);

object sub2(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub1(string stringParam1, int intParam2) {
	sub2(stringParam1, intParam2);
}

void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	AurPostString((((("Spawning " + sParam) + " at sp_") + sParam) + IntToString(nParam1)), 5, 5, 5.0);
	DelayCommand(IntToFloat(nParam2), sub1(sParam, nParam1));
}
