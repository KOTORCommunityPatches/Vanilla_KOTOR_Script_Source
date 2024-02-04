// Byte code does not match

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalBoolean("101PER_KREIA_STUNT", 1);
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			{
				object oKreiaStand = GetObjectByTag("KreiaStand", 0);
				DelayCommand(1.6, SoundObjectPlay(oKreiaStand));
			}
			break;
		case 1:
			{
				object oP_kreia = GetObjectByTag("KreiaStuntman", 0);
				AssignCommand(oP_kreia, ClearAllActions());
				AssignCommand(oP_kreia, ActionJumpToObject(GetObjectByTag("MN_MEDLAB", 0), 1));
				location location1 = GetLocation(GetObjectByTag("WP_KREIA_SPAWN1", 0));
				oP_kreia = CreateObject(1, "p_kreia", location1, 0);
				ChangeToStandardFaction(oP_kreia, 5);
				AssignCommand(oP_kreia, ClearAllActions());
				AssignCommand(oP_kreia, ActionStartConversation(GetFirstPC(), "101kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 2:
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			break;
		case 3:
			SetGlobalFadeIn(0.0, 1.5, 0.0, 0.0, 0.0);
			break;
		case 4:
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_bike", 0)));
			AssignCommand(GetFirstPC(), SetFacingPoint(struct2));
			AssignCommand(GetFirstPC(), ActionPlayAnimation(15, 1.0, (-1.0)));
			break;
		case 5:
			{
				object object12 = GetObjectByTag("KreiaStuntman", 0);
				DestroyObject(object12, 1.0, 1, 0.0, 0);
				ClearAllActions();
				ActionJumpToObject(GetObjectByTag("WP_KREIA_SPAWN1", 0), 1);
				SetGlobalFadeIn(0.0, 1.5, 0.0, 0.0, 0.0);
			}
			break;
		case 6:
			break;
		case 7:
			break;
	}
}