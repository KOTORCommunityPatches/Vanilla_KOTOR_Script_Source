void main() {
	object oSec_terminal51 = GetObjectByTag("sec_terminal51", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oSec_terminal51);
	DelayCommand(1.5, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(1.5, DestroyObject(oSec_terminal51, 0.2, 1, 0.0, 0));
}

