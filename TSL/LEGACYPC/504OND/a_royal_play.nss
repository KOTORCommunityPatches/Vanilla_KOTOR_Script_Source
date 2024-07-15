// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	object object2;
	object object3;
	switch (nParam1) {
		case 0:
			SetLocalBoolean(GetObjectByTag("roy_sold_pc", 0), 40, 0);
			SetLocalBoolean(GetObjectByTag("roy_sold_pc", 1), 40, 0);
			SetLocalBoolean(GetObjectByTag("bostuco", 0), 40, 0);
			break;
		case 1:
			if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
				return;
			}
			object2 = sub1("npc_tobin", 0);
			object1 = sub1("npc_vaklu", 0);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			SetForceAlwaysUpdate(object2, 1);
			SetForceAlwaysUpdate(object1, 1);
			SoundObjectPlay(GetObjectByTag("DrexlSounds", 0));
			DelayCommand(0.1, AssignCommand(object1, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			break;
	}
}

