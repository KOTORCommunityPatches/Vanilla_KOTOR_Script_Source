void main() {
	object oStunt12_sith = GetObjectByTag("stunt12_sith", 0);
	DelayCommand(2.0, AssignCommand(oStunt12_sith, PlayAnimation(102, 1.0, 0.0)));
}
