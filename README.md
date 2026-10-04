# VanillaPlusCore

**VanillaPlusCore** is a lightweight, modular Minecraft datapack designed to bring quality-of-life (QoL) improvements and vanilla-friendly utilities while preserving the core feel of the game.

---

## 🌟 Features

### 🕒 Clock & Time System
- **Sneak Display:** Sneak while holding a clock in either hand to view current in-game time and day directly.
- **Wall Clocks:** Place a clock inside an Item Frame or Glow Item Frame to automatically create a digital wall clock displaying real-time hours and minutes. Displays are cleaned up if the clock or frame is removed.
- **Anti-Desync Protection:** Global daylight/time management to keep world time in sync.

### 🧭 Compass & Navigation
- **Sneak Display:** Sneak while holding a compass to view navigation and coordinate data.
- **Auto-Lore:** Contextual lore automatically applied and updated on compasses.

### 🎨 Anvil Color Codes & Formatting
- Automatic color and format parsing when renaming items on an anvil.
- Supports legacy color/format codes (e.g., `&a`, `&b`, `&c`) as well as rainbow effects.

### 🧭 Compass Navigation & Direction
- Sneak (Shift) while holding a compass to display your current coordinates, cardinal facing direction (8-way: N, NE, E, SE, S, SW, W, NW), and distance to target/spawn on the actionbar.
- Lodestone compasses automatically receive formatted coordinate and dimension lore upon creation.

### 📚 Statistic Books & Lecterns (Vanilla Enriched)
- Track multiple statistics in a multi-page signed book placed on a lectern (one statistic per page).
- Write statistic identifiers (e.g., `enriched.custom.jump`, `enriched.custom.walk_one_cm`, or shorthand like `pulos`, `deaths`) on each page, sign it with title **EnrichedStats** (or **MCStats**), and place it on a lectern.
- **Top Header:** Clean, centered header per page (e.g., `✦ Pulos ✦`) with single-line dividing border.
- **Player Names:** Resolves actual player usernames directly without leaking technical UUIDs.
- **Podium Ranking:** Formatted with positions (`1º`, `2º`, `3º`) and podium highlights.
- **Audiovisual Feedback:** Enchantment sound, particles, and actionbar notification on conversion.
- Secret mode support (`/trigger enriched.secret`) and optional auto opt-in.

---

## 📦 Requirements & Compatibility

- **Minecraft Version:** 1.21+ (Pack Format: 48 - 81)
- **Type:** Vanilla Datapack (No client-side or server-side mods required)

---

## 🚀 Installation

1. Download or clone this repository.
2. Place the `VanillaPlusCore` folder into your world's `datapacks` directory:
   ```text
   .minecraft/saves/<YOUR_WORLD>/datapacks/
   ```
3. In-game, run the command:
   ```text
   /reload
   ```
4. A load confirmation message will appear in chat:
   ```text
   [VanillaPlus Core] Systems Successfully Loaded!
   ```

---

## 🛠️ Project Structure

```text
VanillaPlusCore/
├── pack.mcmeta
├── README.md
└── data/
    ├── minecraft/
    │   └── tags/function/              # Load and tick function tags
    └── main/
        ├── advancement/
        │   ├── item/stat_book/         # Lectern interaction advancement
        │   └── region/                 # Banner placement advancement
        ├── item_modifier/
        │   └── item/stat_book/         # Lore & custom data modifiers for stat books
        ├── loot_table/
        │   └── item/stat_book/         # Player name resolution loot table
        ├── tags/function/
        │   └── item/stat_book/         # Pre-storage hook tags
        └── function/
            ├── backend/
            │   ├── math/               # Math utilities (e.g., sqrt)
            │   └── sort/               # Array sorting algorithms
            ├── item/
            │   ├── clock/              # Time calculation & wall clock system
            │   ├── compass/            # Navigation system & lore handler
            │   └── stat_book/          # Statistic books & lectern management
            ├── mechanic/
            │   ├── colored_names/      # Anvil item color parser & components
            │   ├── player/             # Player action triggers (sneak detection)
            │   └── region/             # Region detection and banner markers
            └── setup/                  # Initialization (load) & main game loop (tick)
```

---

## 📄 License

This project is available for free use and customization in Minecraft worlds and servers.
