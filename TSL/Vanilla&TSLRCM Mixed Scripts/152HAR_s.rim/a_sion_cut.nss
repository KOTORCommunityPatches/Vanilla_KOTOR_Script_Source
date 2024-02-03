struct structtype1 {
	float float1;
	float float3;
};

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
			object object4 = GetObjectByTag("doc", 0);
			if (GetIsObjectValid(object4)) {
				AssignCommand(object4, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_doc_watch", 0)), 1, 30.0));
				vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("darthsion", 0)));
										;
;
			}
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		default:
	}
}

