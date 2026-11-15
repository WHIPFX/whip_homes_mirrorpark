fx_version 'cerulean'
game 'gta5'

author 'Whippy'
description 'Mirror Park homes: every Mirror Park house (71 homes, 16 designs) as a walk-in home, plus 25 walk-in garages (one area resource, for Legacy and GTA V Enhanced)'
version '1.0.0'
whip_updates 'WHIPFX/whip_homes_mirrorpark'   -- whip_core checks this repository's releases for a newer version

-- One resource owns the area's stock overrides (hei_id2_21* maps, regional collision, night-window LODs, occluders)
-- so the homes never fight over the same stock files. Do not run the retired whippy_test_bungalow alongside it.
this_is_a_map 'yes'
-- BOTH GAMES (0.12.0). stream/ is the Legacy build and stream_enhanced/ the GTA V Enhanced (gen9) one: Enhanced streams
-- stream_enhanced/ instead of stream/ when it is there. The two hold the same 629 file names; stream_enhanced/ is built
-- from stream/ by Alchemist through .githooks/enhanced_assets.py, and the pre-commit hook converts whatever a commit
-- changes in stream/. The ytyps load through the data_file lines below, so none of them is in files {}: on Enhanced
-- nothing from stream/ may be (as whip_autos_shop).
files {
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
-- 0.12.0: which game the server runs is whip's whip_platform convar (setr whip_platform enhanced on Enhanced), read by
-- client.lua: it leaves its garage door wake-up off on Legacy, where FiveM's own patch does it. (0.11.12 to 0.11.13
-- had a mirror_park_game line here, written into a separate Enhanced copy.)
