void main() {
	ActionMoveToObject(GetObjectByTag("wp_fish02", 0), 1, 1.0);
	ActionDoCommand(SignalEvent(GetObjectByTag("man28_death", 0), EventUserDefined(0)));
}
