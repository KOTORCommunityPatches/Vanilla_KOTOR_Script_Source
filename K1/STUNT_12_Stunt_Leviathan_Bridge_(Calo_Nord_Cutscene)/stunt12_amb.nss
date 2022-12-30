void main() {
	
	object oSith = GetObjectByTag("stunt12_sith", 0);
	
	DelayCommand(2.0, AssignCommand(oSith, PlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD)));
}
