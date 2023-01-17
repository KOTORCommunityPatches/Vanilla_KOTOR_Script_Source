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
	object oExit_door = GetObjectByTag("exit_door", 0);
	if ((GetLocalBoolean(oExit_door, 45) && (!GetLocalBoolean(oExit_door, 46)))) {
		if (((!GetIsObjectValid(GetObjectByTag("ritual_leader", 0))) && (!GetIsObjectValid(GetObjectByTag("ritual_follower", 0))))) {
			if (GetIsObjectValid(GetObjectByTag("xarga", 0))) {
				DestroyObject(GetObjectByTag("xarga", 0), 0.0, 0, 0.0, 0);
			}
			AurPostString("You've killed the ritual guys!", 5, 5, 5.0);
			object object7 = sub1("npc_xarga", 0);
			object oWp_end_xarga = GetObjectByTag("wp_end_xarga", 0);
			SetLocalBoolean(object7, 10, 1);
			AssignCommand(object7, ActionMoveToObject(oWp_end_xarga, 1, 1.0));
			SetLocalBoolean(oExit_door, 46, 1);
		}
	}
}

