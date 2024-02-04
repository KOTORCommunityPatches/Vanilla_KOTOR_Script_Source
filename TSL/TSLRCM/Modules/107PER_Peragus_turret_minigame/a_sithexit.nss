void main() {
	object oEntering = GetEnteringObject();
	if (GetIsObjectValid(oEntering)) {
		if ((GetTag(oEntering) != "ExtraSith")) {
			SetGlobalNumber("107PER_MG_EBON", (GetGlobalNumber("107PER_MG_EBON") + 1));
			SignalEvent(GetArea(GetFirstPC()), EventUserDefined(2));
		}
		DestroyObject(oEntering, 0.0, 0, 0.0, 0);
	}
}