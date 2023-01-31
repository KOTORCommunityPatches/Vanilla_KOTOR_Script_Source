#include "k_inc_man"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			SetPlayerRestrictMode(TRUE);
			
			AssignCommand(GetObjectByTag("FirixaFish01", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 1.0));
			AssignCommand(GetObjectByTag("FirixaFish02", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 1.0));
			AssignCommand(GetObjectByTag("FirixaFish03", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.5));
			AssignCommand(GetObjectByTag("FirixaFish04", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.7));
			AssignCommand(GetObjectByTag("FirixaFish05", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.6));
			AssignCommand(GetObjectByTag("FirixaFish06", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.8));
			AssignCommand(GetObjectByTag("FirixaFish07", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.6));
			AssignCommand(GetObjectByTag("FirixaFish08", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 0.8));
			AssignCommand(GetObjectByTag("FirixaFish09", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01, 1.0));
			
			PlayInjecterAnimation(GetGlobalNumber("MAN_VOLUME_A"));
			PlayContainerAnimation(GetGlobalNumber("MAN_VOLUME_B"));
		}
}