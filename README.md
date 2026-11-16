# whip_homes_mirrorpark

Every house in Mirror Park as a walk-in home for [WHIP](https://github.com/WHIPFX/txAdmin-recipe).

## Features

- **71 homes.** Every Mirror Park house, in 16 designs, each with its own interior behind its front door.
- **25 garages.** Walk-in garages beside the homes.
- **Eight looks.** Original, Charcoal, Navy, Forest, Oxblood, Slate, Espresso and Midnight set a home's walls, trim
  and floor. The owner picks one at the home's sign.
- **Clear driveways.** NPC cars don't park on or pull out of the homes' driveways. Street parking is untouched.
- **Light on the game.** Only the homes near you load their interiors, which keeps the area within FiveM's interior
  limits.

## Requirements

- `whip_core`. This pack builds the houses; WHIP makes them homes that players buy, lock and furnish.
- FiveM Legacy or GTA V Enhanced. The models come twice: `stream/` for Legacy and `stream_enhanced/` for Enhanced.

## Installation

WHIP's txAdmin recipe installs it in `resources/[assets]`.

By hand, put the `whip_homes_mirrorpark` folder in `resources/[assets]` and add this line to `server.cfg`, after
`ensure whip_core`:

```cfg
ensure [assets]
```

It overrides Rockstar's map files for these houses, so don't run it with another map that changes the same houses.

## Setting up the homes

The pack doesn't create properties. Make each house a property in **/whip → World → Properties → New property**,
standing inside it. Once it is one, its sign and its admin page offer the eight looks. See **Properties & Homes** in
whip_core's `docs.html`.

## For developers

The looks use whip_core's interior themes: the pack declares `whip_interior_themes 'v1'` in `fxmanifest.lua` and
has the server exports whip_core reads (`GetThemes`, `GetHomes`, `SetAllThemes`, `SetHomeTheme`, plus
`GetHomeTheme`). See **Interior themes** in whip_core's `docs.html` to give your own interiors looks the same way.

The F8 commands (`wh_glass`, `wh_xray`, `wh_debug`, `wh_budget`, `wh_theme` and the rest) are tools for working on
the homes. They work only with WHIP's developer mode on (`/w`, for players with `whip.devtools`).

## License

whip_homes_mirrorpark's code (`fxmanifest.lua`, `client.lua`, `server.lua`, the `.meta` files, `.githooks/`) is
licensed under the GNU LGPL 3.0; see `COPYING.LESSER`, and `COPYING` for the GPL 3.0 it builds on.

Its map files (`stream/`, `stream_enhanced/`) are made from Grand Theft Auto V and belong to Rockstar Games: WHIP's
licence doesn't cover them. See `NOTICE.md`. WHIP is not affiliated with, endorsed or sponsored by Rockstar Games or
Take-Two Interactive.
