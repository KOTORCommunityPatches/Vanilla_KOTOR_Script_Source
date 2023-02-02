void main() {
	
	object oMando;
	
	if (GetTag(OBJECT_SELF) == "kas25_mandswoop")
		{
			oMando = GetObjectByTag("kas25_mandcomm", 0);
		}
		else if (GetTag(OBJECT_SELF) == "kas25_mandswoop2")
			{
				oMando = GetObjectByTag("kas25_mandalor03", 0);
			}
			else if (GetTag(OBJECT_SELF) == "kas25_mandswoop3")
				{
					oMando = GetObjectByTag("kas25_mandalor04", 0);
				}
	
	effect efEffect = GetFirstEffect(oMando);
	
	while (GetIsEffectValid(efEffect) == TRUE)
		{
			RemoveEffect(oMando, efEffect);
			efEffect = GetNextEffect(oMando);
		}
}
