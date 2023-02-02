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
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	object object2 = OBJECT_SELF;
	if (GetLocalBoolean(object2, 40)) {
		return;
	}
	if ((object2 == GetObjectByTag("tr_sith_ass_lib", 0))) {
		sub1(0);
		DelayCommand(2.0, sub1(1));
		DelayCommand(4.0, sub1(2));
	}
	else {
		if ((object2 == GetObjectByTag("tr_sith_ass_sth", 0))) {
			sub1(3);
			DelayCommand(2.0, sub1(4));
			DelayCommand(3.0, sub1(5));
			DelayCommand(4.0, sub1(3));
		}
		else {
			if ((object2 == GetObjectByTag("tr_sith_ass_bed", 0))) {
				sub1(6);
				DelayCommand(0.5, sub1(7));
			}
			else {
				if ((object2 == GetObjectByTag("tr_sith_ass_rm", 0))) {
					sub1(8);
					DelayCommand(1.0, sub1(9));
					DelayCommand(4.0, sub1(10));
					DelayCommand(10.0, sub1(10));
				}
				else {
					if ((object2 == GetObjectByTag("tr_sith_ass_tr", 0))) {
						sub1(11);
						DelayCommand(1.0, sub1(12));
						DelayCommand(4.0, sub1(13));
					}
					else {
						if ((object2 == GetObjectByTag("tr_sith_ass_end", 0))) {
							SetLocalBoolean(GetObjectByTag("tr_sith_ass_end2", 0), 40, 0);
						}
						else {
							if (((object2 == GetObjectByTag("tr_sith_ass_end2", 0)) && GetLocalBoolean(GetObjectByTag("tr_sith_ass_end", 0), 40))) {
								sub1(14);
								DelayCommand(0.5, sub1(15));
								DelayCommand(1.0, sub1(16));
								object oDoor_ass = GetObjectByTag("door_ass", 0);
								AssignCommand(oDoor_ass, ActionCloseDoor(oDoor_ass));
							}
							else {
								return;
							}
						}
					}
				}
			}
		}
	}
	SetLocalBoolean(object2, 40, 1);
}
