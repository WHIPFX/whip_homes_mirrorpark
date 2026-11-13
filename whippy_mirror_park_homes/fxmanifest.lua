fx_version 'cerulean'
game 'gta5'

author 'Whippy'
description 'Mirror Park homes: every Mirror Park house (71 homes, 16 designs) as a walk-in home, plus 25 walk-in garages (one area resource)'
version '0.11.13'

-- One resource owns the area's stock overrides (hei_id2_21* maps, regional collision, night-window LODs, occluders)
-- so the homes never fight over the same stock files. Do not run the retired whippy_test_bungalow alongside it.
this_is_a_map 'yes'
files {
    'stream/mp_d01_types.ytyp',
    'stream/mp_d05_types.ytyp',
    'stream/mp_d07_types.ytyp',
    'stream/mp_d08_types.ytyp',
    'stream/mp_d10_types.ytyp',
    'stream/mp_d11_types.ytyp',
    'stream/mp_d15_types.ytyp',
    'stream/mp_d17_types.ytyp',
    'stream/mp_d18_types.ytyp',
    'stream/mp_d19_types.ytyp',
    'stream/mp_d20_types.ytyp',
    'stream/mp_h1_types.ytyp',
    'stream/mp_h2_types.ytyp',
    'stream/mp_h3_types.ytyp',
    'stream/mp_h4_types.ytyp',
    'stream/wh_bng_types.ytyp',
    'stream/mp_d01_int.ytyp',
    'stream/mp_d05_int.ytyp',
    'stream/mp_d07_int.ytyp',
    'stream/mp_d08_int.ytyp',
    'stream/mp_d10_int.ytyp',
    'stream/mp_d11_int.ytyp',
    'stream/mp_d15_int.ytyp',
    'stream/mp_d17_int.ytyp',
    'stream/mp_d18_int.ytyp',
    'stream/mp_d19_int.ytyp',
    'stream/mp_d20_int.ytyp',
    'stream/mp_h1_int.ytyp',
    'stream/mp_h2_int.ytyp',
    'stream/mp_h3_int.ytyp',
    'stream/mp_h4_int.ytyp',
    'stream/wh_bng_int.ytyp',
    'stream/mp_d10v1_int.ytyp',
    'stream/mp_d10v2_int.ytyp',
    'stream/mp_d11v1_int.ytyp',
    'stream/mp_h2v1_int.ytyp',
    'stream/mp_h3v1_int.ytyp',
    'stream/wh_bngv1_int.ytyp',
    'stream/mp_site_garages_types.ytyp',
    'stream/mp_site_garages_int.ytyp',
    'interiorproxies.meta',
    'gtxd.meta'
}
-- 0.11.2 (memory): the theme texture dictionaries wh_theme_1..7 hold only their 4 own textures (walls, ceilings + frames,
-- skirting, floor); the other 11 come from their parent wh_bng_textures (Rockstar's map txd parenting, gtxd.meta)
data_file 'GTXD_PARENTING_DATA' 'gtxd.meta'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d01_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d05_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d07_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d08_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d10_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d11_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d15_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d17_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d18_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d19_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d20_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h1_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h2_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h3_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h4_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/wh_bng_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d01_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d05_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d07_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d08_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d10_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d11_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d15_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d17_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d18_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d19_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d20_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h1_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h2_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h3_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h4_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/wh_bng_int.ytyp'
-- 0.7.0 home variants (plans/home_variants.py): the interiors of mp_d10_p01, mp_d10_p02/p03 and mp_d11_p02, whose
-- windows facing their site garages are wall inside (the design's exterior and doors stay)
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d10v1_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d10v2_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_d11v1_int.ytyp'
-- 0.9.0: mp_h2, mp_h3_p03 and wh_bng_p04 (windows facing their site garages)
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h2v1_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_h3v1_int.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/wh_bngv1_int.ytyp'
-- 0.6.0 site garages: the garage door leaves (exterior objects, mp_site_garage_doors.ymap) and the 25 garage interiors (0.6.2: 7 more,
-- 0.7.0: wh_bng_p06's; and side/back person doors on 9 of them)
data_file 'DLC_ITYP_REQUEST' 'stream/mp_site_garages_types.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/mp_site_garages_int.ytyp'
-- Interior proxy order file (scripts/make_interior_order.py): reserves slots 5000-5070 for the 71 home interiors and
-- 5071-5095 for the 25 site garages, so FiveM deletes them on disconnect instead of leaving a dead copy of every home
-- (and garage) after each reconnect.
data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'

client_script 'client.lua'
-- 0.8.0 interior themes (plans/themes.py): every home interior has one entity set per theme (wh_theme_0..7) and theme
-- texture dictionaries wh_theme_1..7.ytd. whip_core finds theme resources by this metadata line and controls the choice
-- through server.lua's exports (GetThemes, GetHomes, SetAllThemes, SetHomeTheme); client.lua applies it.
server_script 'server.lua'
whip_interior_themes 'v1'
-- 0.11.12: which game this copy is for. client.lua leaves its garage door wake-up off on Legacy, where FiveM's own
-- patch does it; scripts/build_enhanced.sh writes 'enhanced' into the Enhanced copy.
mirror_park_game 'legacy'
