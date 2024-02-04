// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 1, 0.0, 0);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oDoc = GetObjectByTag("doc", 0);
				AssignCommand(oDoc, ClearAllActions());
				AssignCommand(oDoc, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_doc_walk", 0)), 0, 30.0));
				SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			}
			break;
		case 2:
			{
				object object4 = GetObjectByTag("doc", 0);
				if (GetIsObjectValid(object4)) {
					AssignCommand(object4, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_doc_watch", 0)), 1, 30.0));
					vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("darthsion", 0)));
					AssignCommand(object4, ActionDoCommand(SetFacingPoint(struct2)));
				}
			}
			break;
		case 3:
			{
				object object8 = GetObjectByTag("doc", 0);
				if (GetIsObjectValid(object8)) {
					AssignCommand(object8, ActionPlayAnimation(102, 1.0, 0.0));
				}
			}
			break;
		case 4:
			{
				string string1 = "152Har36";
				AurPostString((string1 + " :tank breaking."), 5, 8, 10.0);
				int int5 = 1;
				DelayCommand(5.0, PlayRoomAnimation(string1, int5));
				DelayCommand(8.0, SoundObjectPlay(GetObjectByTag("ShatteredGlass", 0)));
				DelayCommand(8.6, SoundObjectPlay(GetObjectByTag("SionLanding", 0)));
				object object12 = GetObjectByTag("doc", 0);
				if (GetIsObjectValid(object12)) {
					DelayCommand(2.0, AssignCommand(object12, ActionPlayAnimation(18, 1.0, 3.0)));
					DelayCommand(5.0, AssignCommand(object12, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_doc_flee", 0)), 1, 30.0)));
				}
				int5 = 3;
				DelayCommand(10.3, PlayRoomAnimation(string1, int5));
				DelayCommand(10.0, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
			}
			break;
		case 5:
			break;
		case 6:
			sub1("darthsion");
			sub1("doc");
			break;
		case 7:
			SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
			{
				object oMedcon = GetObjectByTag("medcon", 0);
				AssignCommand(oMedcon, ActionStartConversation(GetFirstPC(), "medcon", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		default:
			AurPostString("152HAR ERROR: Should not bere!", 5, 15, 10.0);
			break;
	}
}