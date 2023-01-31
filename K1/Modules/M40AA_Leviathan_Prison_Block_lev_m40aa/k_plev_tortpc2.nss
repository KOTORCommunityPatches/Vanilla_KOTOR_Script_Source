void StripVFX() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oEntering = GetEnteringObject();
	effect efVFX;
	
	if (!GetIsObjectValid(oBastila))
		{
			Db_PostString("BAD BASTILA", 5, 5, 5.0);
		}
	
	if (!GetIsObjectValid(oCarth))
		{
			Db_PostString("BAD CARTH", 5, 6, 5.0);
		}
	
	efVFX = GetFirstEffect(oBastila);
	
	while (GetIsEffectValid(efVFX))
		{
			RemoveEffect(oBastila, efVFX);
			
			efVFX = GetNextEffect(oBastila);
		}
	
	efVFX = GetFirstEffect(oCarth);
	
	while (GetIsEffectValid(efVFX))
		{
			RemoveEffect(oCarth, efVFX);
			
			efVFX = GetNextEffect(oCarth);
		}
	
	efVFX = GetFirstEffect(GetFirstPC());
	
	while (GetIsEffectValid(efVFX))
		{
			RemoveEffect(GetFirstPC(), efVFX);
			
			efVFX = GetNextEffect(GetFirstPC());
		}
	
	if (GetGender(GetFirstPC()) == GENDER_MALE))
		{
			Db_PostString("SPEAKING...", 5, 6, 5.0);
		}
}

void main() {
	
	Db_PostString("TORTURE 2", 5, 5, 5.0);
	
	DestroyObject(GetObjectByTag("lev40_torturer", 0), 0.0, TRUE);
	
	DelayCommand(0.1, StripVFX());
}