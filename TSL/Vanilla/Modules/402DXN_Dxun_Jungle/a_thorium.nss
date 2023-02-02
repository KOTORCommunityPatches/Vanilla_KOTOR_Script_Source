// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_thorium_pc", 0), 1));
			break;
		case 1:
			ActionWait(0.5);
			ActionDoCommand(sub1(GetObjectByTag("wp_thorium1", 0)));
			ActionWait(0.5);
			ActionDoCommand(sub1(GetObjectByTag("wp_thorium2", 0)));
			ActionWait(0.1);
			ActionDoCommand(sub1(GetObjectByTag("wp_thorium3", 0)));
			ActionDoCommand(ActionUnlockObject(GetObjectByTag("dxuncache_imp", 0)));
			ActionDoCommand(ActionOpenDoor(GetObjectByTag("dxuncache_imp", 0)));
			break;
	}
}
