$modelname player\female_anims.mdl

$include "..\Humans_sdk\female\commonbones.qci"
$include "..\Humans_sdk\standardhierarchy.qci"
$include "..\Humans_sdk\standardikchains.qci"
$include "..\Humans_sdk\male\hitbox.qci"

$lockbonelengths

$lockdefinebones

$include "player_macros.qci"

$include "player_anims.qci"

$attachment "eyes" "ValveBiped.Bip01_Head1"  0 -3.5 65.2 absolute
$include "body_poses_lean.qci"

