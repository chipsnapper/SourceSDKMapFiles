$modelname player/hwm/scout.mdl

// Define the variables that scout.qci will use for high and low end models.
$definevariable dmxFile  "../parts/dmx/scout_morphs_high.dmx"

$cdmaterials "models/player/scout/hwm/"

$definevariable 01_lod "../parts/dmx/scout_lod_01_high.dmx"
$definevariable 02_lod "../parts/dmx/scout_lod_02_high.dmx"
$definevariable 03_lod "../parts/dmx/scout_lod_03_high.dmx"
$definevariable 04_lod "../parts/dmx/scout_lod_04_high.dmx"
$definevariable 05_lod "../parts/dmx/scout_lod_05_high.dmx"

$proceduralbones "scout.vrd"

$include scout.qci

$alwayscollapse "prp_mic"
$alwayscollapse "bip_bicep_twist_01_L"
$alwayscollapse "bip_bicep_twist_02_L"
$alwayscollapse "bip_bicep_twist_01_R"
$alwayscollapse "bip_bicep_twist_02_R"
