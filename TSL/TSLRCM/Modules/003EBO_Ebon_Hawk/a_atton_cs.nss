void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oWP_atton_facing = GetObjectByTag("WP_atton_facing", 0);
				vector struct2 = GetPositionFromLocation(GetLocation(oWP_atton_facing));
				AssignCommand(OBJECT_SELF, SetFacingPoint(struct2));
				SetLockOrientationInDialog(OBJECT_SELF, 1);
				MusicBackgroundStop(GetArea(OBJECT_SELF));
				MusicBattlePlay(GetArea(OBJECT_SELF));
			}
			break;
		case 2:
			MusicBattleStop(GetArea(OBJECT_SELF));
			MusicBackgroundPlay(GetArea(OBJECT_SELF));
			break;
		default:
			AurPostString("ERROR: 003Atton cutscene!", 5, 15, 10.0);
			break;
	}
}