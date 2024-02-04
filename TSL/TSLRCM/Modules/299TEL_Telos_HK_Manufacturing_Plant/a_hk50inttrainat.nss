void main() {
	DelayCommand(0.1, AssignCommand(GetObjectByTag("HK50IntV", 0), ClearAllActions()));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50IntV", 0), ActionPlayAnimation(20, 1.0, (-1.0))));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50Int1", 0), 1));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50Int2", 0), 1));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50Int3", 0), 1));
}