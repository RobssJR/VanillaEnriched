# 🌟 Vanilla Enriched

![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21%2B%20%2F%2026.3-brightgreen)
![Datapack Type](https://img.shields.io/badge/Type-Vanilla%20Datapack-blue)
![Dependencies](https://img.shields.io/badge/Dependencies-None%20(Pure%20Vanilla)-orange)

**Vanilla Enriched** is a modular, lightweight, and high-performance datapack designed to enhance the vanilla survival experience with modern Quality of Life (QoL) mechanics, immersive navigation, multipage lectern leaderboards, wall clocks, and customizable aesthetics — 100% faithful to the core Minecraft experience with zero client or server mods required.

---

## 📑 Table of Contents

- [🌟 Features](#-features)
  - [📚 Multipage Statistics Books (Lecterns)](#-multipage-statistics-books-lecterns)
  - [🧭 Compass & Advanced Navigation](#-compass--advanced-navigation)
  - [🕒 Clock & Digital Wall Clocks](#-clock--digital-wall-clocks)
  - [🎨 Anvil Colors & Text Formatting](#-anvil-colors--text-formatting)
  - [🚩 Banner Regions & Discovery Markers](#-banner-regions--discovery-markers)
  - [🖼️ Enchanted Invisible Item Frames](#️-enchanted-invisible-item-frames)
  - [👤 Custom Decorative Player Heads](#-custom-decorative-player-heads)
- [📦 Requirements & Compatibility](#-requirements--compatibility)
- [🚀 Installation](#-installation)
- [🛠️ Project Structure](#️-project-structure)
- [📄 License](#-license)

---

## 🌟 Features

### 📚 Multipage Statistics Books (Lecterns)
Turn any lectern into an interactive, real-time leaderboard book that updates dynamically!

- **Multiple Pages:** Track dozens of different statistics in a single book, one per page.
- **Clean Headers:** Every page displays a stylized, centered header (e.g. `✦ Jumps ✦`, `✦ Deaths ✦`, `✦ Play Time ✦`) with neat dividers (`───────────`) preventing awkward line wraps.
- **Real Player Usernames:** Name resolution caching guarantees actual player usernames appear on the podium rather than raw UUIDs.
- **Top 10 & Podium Styling:** Automatically sorted descending rankings with custom podium prefixes (`1st`, `2nd`, `3rd`, through `10th`).
- **Audiovisual Feedback:** Enchantment table sound effects, particle bursts, and actionbar confirmation when registering a book.

#### 📖 How to Create a Statistics Book:
1. Obtain a **Book and Quill**.
2. On each page, write the identifier or shortcut of the desired statistic (e.g. `jump`, `walk`, `deaths`, `kills`, `enriched.custom.jump`, `sb.custom.time_since_death`).
3. Sign the book with the title **`EnrichedStats`** (or **`MCStats`**).
4. Place the signed book onto any **Lectern**. The datapack will activate and format the book immediately!

#### ⚙️ Player Trigger Commands:
- `/trigger enriched.help` — Displays the in-game help guide and instructions in chat.
- `/trigger enriched.optin` — Voluntarily opts into statistical tracking.
- `/trigger enriched.optout` — Opts out of statistics and clears your scores from leaderboards.
- `/trigger enriched.secret` — Cycles secret mode (hide player names, hide scores, or normal).

---

### 🧭 Compass & Advanced Navigation
Immersive wayfinding right on your actionbar without intrusive screen clutter.

- **Actionbar HUD (Sneak / Shift):** Hold a compass (in mainhand or offhand) and sneak to view in real time:
  - **Coordinates:** `X`, `Y`, `Z`.
  - **8-Way Cardinal Direction:** `North (N)`, `Northeast (NE)`, `East (E)`, `Southeast (SE)`, `South (S)`, `Southwest (SW)`, `West (W)`, `Northwest (NW)`.
  - **Distance:** Distance in blocks to world spawn or linked Lodestone.
- **Automatic Lodestone Lore:** When linking a compass to a Lodestone, it automatically gains structured item lore detailing destination coordinates (`X: ... | Y: ... | Z: ...`) and the dimension name.

---

### 🕒 Clock & Digital Wall Clocks
Functional timekeeping for day-to-day survival and architectural decoration.

- **Actionbar HUD (Sneak / Shift):** Sneak while holding a clock to display current in-game time (e.g. `14:35`), calendar day, season, and world year.
- **Digital Wall Clocks:**
  - Place an **Item Frame** or **Glow Item Frame** on a wall and insert a clock.
  - A holographic text display appears over the frame indicating the time in real time.
  - Breaking the frame or removing the clock instantly despawns the text entity cleanly.
- **Anti-Desync Protection:** Continuously calibrated against the Minecraft world tick cycle.

---

### 🎨 Anvil Colors & Text Formatting
Customize item and block names directly in the Anvil using intuitive formatting codes:

| Code | Effect | Code | Effect |
| :--- | :--- | :--- | :--- |
| `&0` to `&9` | Numeric colors (Black, Dark Blue, Green, etc.) | `&k` | Obfuscated / Magic text |
| `&a` to `&f` | Letter colors (Light Green, Aqua, Red, White, etc.) | `&l` | **Bold** |
| `&m` | ~~Strikethrough~~ | `&n` | <u>Underline</u> |
| `&o` | *Italic* | `&r` | Reset formatting |
| `&z` | 🌈 **Rainbow / Chroma Animation Effect** | `&&` | Escaped literal `&` symbol |

*Applies native component-based styling to renamed items upon taking them from the anvil!*

---

### 🚩 Banner Regions & Discovery Markers
Create clean, immersive territory boundaries for towns, bases, and points of interest:

1. Rename any **Banner** in an anvil with your desired region name (e.g. `Blacksmith Village`).
2. Place the banner onto the ground or a wall.
3. An invisible area marker will automatically be registered at the location.
4. When any player enters within a 40-block radius, a discovery title appears on screen:
   - **Title:** Region Name in Gold & Bold.
   - **Subtitle:** *"Area Discovered"*.

---

### 🖼️ Enchanted Invisible Item Frames
A classic, intuitive invisible frame mechanic for builders — 100% survival-friendly without cheats or commands!

- **Shapeless Crafting Recipes:**
  - **Invisible Item Frame:** 1x Item Frame + 1x Glass Pane.
  - **Invisible Glow Item Frame:** 1x Glow Item Frame + 1x Glass Pane.
  - Produces an enchanted frame item with an aqua title (*Invisible Item Frame*) and descriptive lore.

- **Smart Dynamic Behavior:**
  - **Empty Frame:** When placed without an item, the frame remains **visible** so you can easily locate and interact with it.
  - **Holding an Item:** As soon as an item is inserted, the frame becomes **100% invisible**, leaving only the displayed item floating neatly on the wall, ceiling, or floor.
  - **Item Removal:** Punching or removing the item makes the frame visible again so it is never misplaced.
  - **Drop Restoration:** Breaking the frame restores the original enchanted item with its custom components intact.

---

### 👤 Custom Decorative Player Heads
Craft blank decorative player heads in survival and transform them into any player's skin using an Anvil!

- **Shaped Crafting Recipe:**
  - 8x Leather surrounding 1x Carved Pumpkin crafts a **Decorative Player Head**.
  - Includes helpful reminder lore: *"Rename this to any player to get their head!"*

- **Intuitive Anvil Transformation:**
  1. Place the crafted Decorative Player Head into an **Anvil**.
  2. Type any player's username (e.g. `Notch`, `Dinnerbone`, `RobssJR`, or Marc's Head Format accounts like `MHF_Chest`, `MHF_Cake`, `MHF_TNT`, etc.).
  3. Retrieve the head from the anvil. It **instantly transforms** with level-up chimes and green sparkle particles!
  4. The head permanently receives that player's genuine skin and texture profile.
  5. Special presets (such as `Giant Honey Dipper` / `129904`) are also supported with custom textured profiles.

---

## 📦 Requirements & Compatibility

- **Minecraft Version:** `1.21+` / `26.3` (Data Component architecture)
- **Type:** Pure Vanilla Datapack.
- **Compatibility:** Fully compatible with Singleplayer, Vanilla Server, Fabric, NeoForge, Paper, and Purpur.

---

## 🚀 Installation

1. Download or clone this datapack repository.
2. Place the datapack folder into your world's `datapacks` directory:
   ```text
   .minecraft/saves/<YOUR_WORLD>/datapacks/
   ```
3. In-game, run:
   ```text
   /reload
   ```
4. The following confirmation message will appear in chat:
   ```text
   [Vanilla Enriched] Systems Successfully Loaded!
   ```

---

## 🛠️ Project Structure

```text
VanillaEnriched/
├── pack.mcmeta                         # Pack metadata and format versioning
├── README.md                           # Documentation
├── spyglass.json                       # Spyglass validation configuration
└── data/
    ├── minecraft/
    │   └── tags/function/              # Standard lifecycle tags (#minecraft:load, #minecraft:tick)
    └── main/
        ├── advancement/
        │   ├── item/stat_book/         # Lectern interaction trigger
        │   ├── mechanic/invisible_frame# Item frame placement triggers
        │   └── region/                 # Banner placement trigger
        ├── item_modifier/
        │   └── item/stat_book/         # Stat book item data modifiers
        ├── loot_table/
        │   └── item/stat_book/         # Name caching and resolution
        ├── recipe/                     # Crafting recipes for invisible item frames
        ├── tags/function/item/stat_book# Function tag hooks
        └── function/
            ├── backend/
            │   ├── math/               # Math utilities (distance, sqrt calculations)
            │   └── sort/               # Ranking sort algorithms
            ├── item/
            │   ├── clock/              # Clock HUD & digital wall clock displays
            │   ├── compass/            # Compass HUD, 8-way cardinal facing & lodestone lore
            │   └── stat_book/          # Multipage lectern leaderboard system
            ├── mechanic/
            │   ├── colored_names/      # Anvil color codes & chroma interpreter
            │   ├── invisible_frame/    # Dynamic invisible frame logic
            │   ├── player/             # Player input detection (sneak / crouch)
            │   └── region/             # Banner-based territory discovery system
            └── setup/                  # Global init (load) and main tick loop (tick)
```

---

## 📄 License

This project is open-source and free to use, modify, and distribute for personal worlds and public multiplayer servers.
