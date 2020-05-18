$modelname player\male_anims.mdl

$include "..\Humans_sdk\male\commonbones.qci"
$include "..\Humans_sdk\standardhierarchy.qci"
$include "..\Humans_sdk\standardikchains.qci"
$include "..\Humans_sdk\male\hitbox.qci"

//$lockbonelengths

$lockdefinebones

$include "player_macros.qci"

$include "player_anims.qci"

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -4 67.5 absolute
$include "body_poses_lean.qci"
