// Prototypes
object sub2(string stringParam1, int intParam2);
void sub1(int intParam1);

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

void sub1(int intParam1) {
	sub2("sith_ass", intParam1);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oTr_sith_ass = GetObjectByTag("tr_sith_ass", 0);
		if (GetIsObjectValid(oTr_sith_ass)) {
			if ((!GetLocalBoolean(oTr_sith_ass, 40))) {
				SetLocalBoolean(oTr_sith_ass, 40, 1);
				sub1(0);
				sub1(1);
				DelayCommand(7.0, sub1(2));
				DelayCommand(8.0, sub1(3));
				DelayCommand(3.0, sub1(4));
				DelayCommand(10.0, sub1(5));
				DelayCommand(12.0, sub1(6));
			}
		}
	}
}
