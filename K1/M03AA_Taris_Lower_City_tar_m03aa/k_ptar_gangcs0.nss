#include "k_inc_generic"
#include "k_inc_debug"

void sub1(object objectParam1, int intParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	SetLocalBoolean(objectParam1, SW_FLAG_AI_OFF, 1);
	Db_PostString(("TURNING AI OFF - " + GetTag(objectParam1)), 5, 5, 5.0);
	ChangeToStandardFaction(objectParam1, intParam2);
	SetMinOneHP(objectParam1, 1);
}

void main() {
	
	int int1;
	object object1;
	int1 = 0;
	
	while ((int1 < 3)) {
		object1 = GetObjectByTag(("tar03_bekcs" + IntToString(int1)), 0);
		sub1(object1, 2);
		object1 = GetObjectByTag(("tar03_vulkcut" + IntToString(int1)), 0);
		if ((!GetIsObjectValid(object1))) {
			Db_PostString("BAD VULKAR", 5, 7, 5.0);
		}
		sub1(object1, 4);
		(int1++);
	}
	AssignCommand(GetObjectByTag("tar03_bekcs2", 0), ActionMoveToObject(GetObjectByTag("tar03_wpbeks", 0), 1, 1.0));
	AssignCommand(GetObjectByTag("tar03_vulkcut2", 0), ActionMoveToObject(GetObjectByTag("tar03_wpvulkars", 0), 1, 1.0));
	ActionPauseConversation();
	ActionWait(8.0);
	ActionResumeConversation();
}
