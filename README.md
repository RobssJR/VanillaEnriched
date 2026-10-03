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

---

## 📦 Requirements & Compatibility

- **Minecraft Version:** 1.21+ (Pack Format: 48)
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
    │   └── tags/function/       # Load and tick function tags
    └── main/function/
        ├── backend/math/        # Math helper functions (e.g., sqrt)
        ├── item/
        │   ├── clock/           # Time calculation & wall clock system
        │   └── compass/         # Navigation system & lore handler
        ├── mechanic/
        │   ├── colored_names/   # Anvil item color parser & components
        │   └── player/          # Player action triggers (sneak detection)
        └── setup/               # Initialization (load) & main game loop (tick)
```

---

## 📄 License

This project is available for free use and customization in Minecraft worlds and servers.
