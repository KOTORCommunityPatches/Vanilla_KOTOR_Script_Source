#include "k_inc_man"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			SetPlayerRestrictMode(FALSE);
			
			AssignCommand(GetObjectByTag("FirixaFish01", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 1.0));
			AssignCommand(GetObjectByTag("FirixaFish02", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 1.0));
			AssignCommand(GetObjectByTag("FirixaFish03", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP02, 0.5));
			AssignCommand(GetObjectByTag("FirixaFish04", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.7));
			AssignCommand(GetObjectByTag("FirixaFish05", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.6));
			AssignCommand(GetObjectByTag("FirixaFish06", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.8));
			AssignCommand(GetObjectByTag("FirixaFish07", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.6));
			AssignCommand(GetObjectByTag("FirixaFish08", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.8));
			
			SetGlobalBoolean("MAN_HRAKERT_START", TRUE);
			
			if (GetManaanMainPlotVariable() >= 3)
				{
					ClearSelkathFromThisLevel();
				}
			
			DelayCommand(1.0, RemoveSuits());
			
			object oDoor = GetObjectByTag("man28aa_door02", 0);
			AssignCommand(oDoor, ActionCloseDoor(oDoor));
			
			if (HasNeverTriggered())
				{
					
				}
			
			if (GetManaanMainPlotVariable() >= 4)
				{
					DestroyFish(OBJECT_SELF);
				}
			
			if (GetManaanMainPlotVariable() >= 3)
				{
					int nCnt = 0;
					object oMerc = GetObjectByTag("man28_merc", nCnt);
					
					while (GetIsObjectValid(oMerc))
						{
							DelayCommand(0.1, DestroyObject(oMerc, 0.0, TRUE));
							
							nCnt++;
							
							oMerc = GetObjectByTag("man28_merc", nCnt);
						}
				}
		}
}
