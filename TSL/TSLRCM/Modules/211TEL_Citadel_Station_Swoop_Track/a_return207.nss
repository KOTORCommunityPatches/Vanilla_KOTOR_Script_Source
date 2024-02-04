void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	AssignCommand(GetFirstPC(), StartNewModule("207TEL", "211TEL_Swoop_Return", "", "", "", "", "", ""));
}