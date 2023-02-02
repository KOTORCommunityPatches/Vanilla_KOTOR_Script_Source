void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	DelayCommand(0.5, PlayPazaak(nParam1, "", nParam2, 0, OBJECT_INVALID));
}
