# These hashes listing the subroutines that will be called for each record type
# to process any geometry information in it (eg. converting to lon/lat to WGS84)
# They are all located in geometryProcessors.pm
#  Format is:
#   FILENAME => {'RECORDTYPE' => SUBROUTINE TO CALL}

OBSTACLE => { 'OBSTACLE' => \&geometry_OBSTACLE_OBSTACLE, },
  AFF    => {
    'AFF1' => \&geometry_AFF_AFF1,
    'AFF3' => \&geometry_AFF_AFF3,
  },
  APT => {
    'APT' => \&geometry_APT_APT,
    'RWY' => \&geometry_APT_RWY,
  },
  ARB => { 'ARB' => \&geometry_ARB_ARB, },
  ATS => {
    'ATS2' => \&geometry_ATS_ATS2,
    'ATS3' => \&geometry_ATS_ATS3,
  },
  AWOS => { 'AWOS1' => \&geometry_AWOS_AWOS1, },
  AWY  => {
    'AWY2' => \&geometry_AWY_AWY2,
    'AWY3' => \&geometry_AWY_AWY3,
  },
  COM => { 'COM'  => \&geometry_COM_COM, },
  FIX => { 'FIX1' => \&geometry_FIX_FIX1 },
  FSS => { 'FSS'  => \&geometry_FSS_FSS, },
  HPF => { 'HP1'  => \&geometry_HPF_HP1, },
  ILS => {
    'ILS2' => \&geometry_ILS_ILS2,
    'ILS3' => \&geometry_ILS_ILS3,
    'ILS4' => \&geometry_ILS_ILS4,
    'ILS5' => \&geometry_ILS_ILS5,
  },
  MTR    => { 'MTR5'   => \&geometry_MTR_MTR5 },
  NAV    => { 'NAV1'   => \&geometry_NAV_NAV1 },
  PJA    => { 'PJA1'   => \&geometry_PJA_PJA1 },
  SSD    => { 'SSD'    => \&geometry_SSD_SSD },
  STARDP => { 'STARDP' => \&geometry_STARDP_STARDP },
  TWR    => {
    'TWR1' => \&geometry_TWR_TWR1,
    'TWR7' => \&geometry_TWR_TWR7,
  },
  WXL => { 'WXL' => \&geometry_WXL_WXL, },
