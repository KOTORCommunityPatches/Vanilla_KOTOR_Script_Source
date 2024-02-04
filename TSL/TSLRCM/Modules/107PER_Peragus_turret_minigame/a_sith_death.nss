void main() {
	SetGlobalNumber("107PER_MG_DEAD", (GetGlobalNumber("107PER_MG_DEAD") + 1));
	SignalEvent(GetArea(GetFirstPC()), EventUserDefined(2));
}