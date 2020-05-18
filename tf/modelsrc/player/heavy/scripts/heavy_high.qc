$modelname player/hwm/heavy.mdl

// Define the variable that medic.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/heavy_morphs_high.dmx"

$cdmaterials "models/player/hvyweapon/hwm/"

$definevariable 01_lod "../parts/dmx/heavy_lod_01_high.dmx"
$definevariable 02_lod "../parts/dmx/heavy_lod_02_high.dmx"
$definevariable 03_lod "../parts/dmx/heavy_lod_03_high.dmx"
$definevariable 04_lod "../parts/dmx/heavy_lod_04_high.dmx"
$definevariable 05_lod "../parts/dmx/heavy_lod_05_high.dmx"

$include heavy.qci

// remove the finger helper bones. useful for closeup, but overkill for the game.
$alwayscollapse hlp_idx_1_anterior_L
$alwayscollapse hlp_idx_1_anterior_R
$alwayscollapse hlp_idx_1_posterior_L
$alwayscollapse hlp_idx_1_posterior_R
$alwayscollapse hlp_idx_2_posterior_L
$alwayscollapse hlp_idx_2_posterior_R
$alwayscollapse hlp_mid_1_anterior_L
$alwayscollapse hlp_mid_1_anterior_R
$alwayscollapse hlp_mid_1_posterior_L
$alwayscollapse hlp_mid_1_posterior_R
$alwayscollapse hlp_mid_2_posterior_L
$alwayscollapse hlp_mid_2_posterior_R
$alwayscollapse hlp_pnk_1_anterior_L
$alwayscollapse hlp_pnk_1_anterior_R
$alwayscollapse hlp_pnk_1_posterior_L
$alwayscollapse hlp_pnk_1_posterior_R
$alwayscollapse hlp_pnk_2_posterior_L
$alwayscollapse hlp_pnk_2_posterior_R
$alwayscollapse hlp_rng_1_anterior_L
$alwayscollapse hlp_rng_1_anterior_R
$alwayscollapse hlp_rng_1_posterior_L
$alwayscollapse hlp_rng_1_posterior_R
$alwayscollapse hlp_rng_2_posterior_L
$alwayscollapse hlp_rng_2_posterior_R
$alwayscollapse hlp_tmb_1_anterior_L
$alwayscollapse hlp_tmb_1_anterior_R
$alwayscollapse hlp_tmb_1_posterior_L
$alwayscollapse hlp_tmb_1_posterior_R
