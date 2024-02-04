#include "k_inc_dan"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	string sAhlan = "dan13_wp_ahlan";
	
	switch (nUser)
	{
		case 0:
			ActionPlayAnimation(24, 1.0, 0.0);
			if (Random(3) == 0)
				{
					ActionPlayAnimation(102, 1.0, 0.0);
				}
			if (Random(3) == 0)
				{
					ActionPlayAnimation(100, 1.0, 0.0);
				}
			if (Random(2) == 0)
				{
					ActionPlayAnimation(1, 1.0, 0.0);
				}
			if (Random(3) == 0)
				{
					ActionPlayAnimation(101, 1.0, 0.0);
				}
			if (Random(3) == 0)
				{
					ActionPlayAnimation(115, 1.0, 0.0);
				}
			ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(0)));
		break;
		case 10:
			ClearAllActions();
			ActionJumpToObject(GetObjectByTag(sAhlan + IntToString(1), 0), 1);
		break;
		case 20:
			ClearAllActions();
			ActionMoveToObject(GetObjectByTag("dan13_wp_ahlan2", 0), 0, 1.0);
		break;
		case 30:
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, TRUE);
			ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE);
		break;
	}
}
