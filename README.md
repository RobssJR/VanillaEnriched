# 🌟 Vanilla Enriched

![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21%2B%20%2F%2026.3-brightgreen)
![Datapack Type](https://img.shields.io/badge/Type-Vanilla%20Datapack-blue)
![Dependencies](https://img.shields.io/badge/Dependencies-None%20(Pure%20Vanilla)-orange)
![Survival Ready](https://img.shields.io/badge/Survival-100%25%20Friendly-success)

**Vanilla Enriched** is a modular, high-performance survival enhancement datapack. It brings modern Quality of Life (QoL) features, immersive navigation HUDs, customizable decorative player heads, dynamic invisible item frames, holographic wall clocks, territory discovery titles, and automated lectern leaderboards to your world — **100% vanilla, with zero client or server mods required!**

---

## 📑 Table of Contents

- [🚀 Quick Start & Installation](#-quick-start--installation)
- [📖 Step-by-Step Feature Tutorials](#-step-by-step-feature-tutorials)
  - [1. 👤 Custom Decorative Player Heads](#1--custom-decorative-player-heads)
  - [2. 🖼️ Enchanted Invisible Item Frames](#2-️-enchanted-invisible-item-frames)
  - [3. 🕒 Pocket Clock & Holographic Wall Clocks](#3--pocket-clock--holographic-wall-clocks)
  - [4. 🧭 Compass HUD & Lodestone Waypoints](#4--compass-hud--lodestone-waypoints)
  - [5. 🎨 Anvil Colors & Chroma Text Formatting](#5--anvil-colors--chroma-text-formatting)
  - [6. 🚩 Banner Territories & Area Discovery](#6--banner-territories--area-discovery)
  - [7. 📚 Multipage Statistics Books & Lecterns](#7--multipage-statistics-books--lecterns)
- [⚙️ Commands & Player Triggers](#️-commands--player-triggers)
- [❓ Frequently Asked Questions (FAQ) & Troubleshooting](#-frequently-asked-questions-faq--troubleshooting)
- [🛠️ Architecture & File Structure](#️-architecture--file-structure)
- [📄 License](#-license)

---

## 🚀 Quick Start & Installation

### Singleplayer:
1. Download or clone this repository.
2. Locate your Minecraft world directory:
   ```text
   %appdata%/.minecraft/saves/<YOUR_WORLD>/datapacks/
   ```
3. Place the `VanillaPlusCore` folder directly into `datapacks/`.
4. Enter your world and run `/reload` in the chat.
5. You will see the green confirmation banner:
   ```text
   [Vanilla Enriched] Systems Successfully Loaded!
   ```

### Multiplayer / Dedicated Server:
1. Place the folder into the server root's `world/datapacks/` directory.
2. Run `/reload` in the server console or in-game (as OP).

---

## 📖 Step-by-Step Feature Tutorials

---

### 1. 👤 Custom Decorative Player Heads

Craft blank decorative skulls in survival and transform them into **any player's skin** or decorative mini-blocks using an anvil!

#### 🛠️ Crafting Recipe (Shaped):
Place **8x Leather** surrounding **1x Carved Pumpkin** in a Crafting Table:

```text
[ Leather ]  [ Leather        ]  [ Leather ]
[ Leather ]  [ Carved Pumpkin ]  [ Leather ]  ──>  1x Decorative Player Head
[ Leather ]  [ Leather        ]  [ Leather ]
```

> **Result:** A `Decorative Player Head` item with the lore:  
> *"Rename this to any player to get their head!"*

#### 🔨 How to Transform:
1. Place the crafted `Decorative Player Head` into the left slot of an **Anvil**.
2. In the rename text box, type any valid player username (e.g. `Notch`, `Dinnerbone`, `RobssJR`).
3. Take the head out of the anvil output slot (costs 1 XP level).
4. **Boom!** The skull instantly transforms into that player's genuine skin, complete with chime sound effects and sparkle particles. Minecraft dynamically renames the item to `<Player>'s Head`!

#### 🎁 Built-in Decorative Block Heads (MHF Accounts):
Mojang provides official decorative mini-block heads through Marc's Head Format (MHF) accounts. Simply type any of these names into the anvil:

| Category | In-Game Anvil Names |
| :--- | :--- |
| **Blocks & Food** | `MHF_Chest`, `MHF_Cake`, `MHF_TNT`, `MHF_Cactus`, `MHF_Melon`, `MHF_Pumpkin`, `MHF_OakLog` |
| **Monsters & Animals** | `MHF_Blaze`, `MHF_Enderman`, `MHF_Spider`, `MHF_Cow`, `MHF_Pig`, `MHF_Sheep`, `MHF_Chicken` |
| **Direction Arrows** | `MHF_ArrowUp`, `MHF_ArrowDown`, `MHF_ArrowLeft`, `MHF_ArrowRight` |
| **Bonus Preset** | `Giant Honey Dipper` or `129904` *(Custom textured head from minecraft-heads.com)* |

---

### 2. 🖼️ Enchanted Invisible Item Frames

Display floating items, signs, and tools cleanly on walls, ceilings, and floors without visible wooden borders!

#### 🛠️ Crafting Recipes (Shapeless):
Combine an item frame with a glass pane in any crafting grid:

- **Invisible Item Frame:** `1x Item Frame` + `1x Glass Pane`
- **Invisible Glow Item Frame:** `1x Glow Item Frame` + `1x Glass Pane`

> **Result:** An enchanted item frame with an aqua name (*Invisible Item Frame*) and glowing glint.

#### 💡 How it Works in Survival:
1. **Place the Frame:** When placed empty, the frame remains **visible** with a subtle preview so you can easily see where you placed it.
2. **Insert an Item:** Right-click the frame with any item (sword, tool, clock, map, etc.).  
   The wooden frame **instantly vanishes**, leaving only your item floating seamlessly against the block surface!
3. **Remove the Item:** Left-click/punch the item out. The frame becomes **visible again** so you never lose track of it.
4. **Break the Frame:** Breaking the frame drops the original enchanted `Invisible Item Frame` back into your inventory.

---

### 3. 🕒 Pocket Clock & Holographic Wall Clocks

Functional timekeeping for daily survival and atmospheric base decoration.

#### ⏱️ Pocket Clock HUD:
- Hold a standard **Clock** in your **mainhand** or **offhand**.
- **Sneak (Hold Shift):** An actionbar readout displays the current in-game time, calendar day, season, and world year:
  ```text
  [Clock] 14:35 • Day 12 of Spring, Year 1
  ```
- Automatically handles 4 in-game seasons (Spring, Summer, Autumn, Winter) calibrated to the Minecraft daylight cycle.

#### 🕰️ Holographic Wall Clock:
1. Place any **Item Frame** or **Glow Item Frame** onto a wall.
2. Right-click the frame with a **Clock**.
3. A clean holographic display automatically spawns right above the frame showing the real-time 24-hour clock (e.g. `12:00`, `18:45`).
4. Removing the clock or breaking the frame immediately removes the holographic text entity cleanly.

---

### 4. 🧭 Compass HUD & Lodestone Waypoints

Immersive navigation without needing to open the bulky F3 debug screen.

#### 🧭 Pocket Compass HUD:
- Hold a **Compass** (or **Lodestone Compass**) in your **mainhand** or **offhand**.
- **Sneak (Hold Shift):** The actionbar reveals your current position, facing direction, and distance to your target:
  - **Standard Compass (Red):** Points to the World/Bed Spawn point.
    ```text
    [Compass] X: 142 | Z: -350 • Northwest (NW) • Spawn: 378m
    ```
  - **Lodestone Compass (Purple):** Points to your bound Lodestone.
    ```text
    [Compass] X: 142 | Z: -350 • South (S) • Target: 1,240m
    ```
- **8 Cardinal Directions:** Automatically tracks `North (N)`, `Northeast (NE)`, `East (E)`, `Southeast (SE)`, `South (S)`, `Southwest (SW)`, `West (W)`, and `Northwest (NW)`.

#### 📌 Automatic Lodestone Lore:
- Right-click any Lodestone with a compass to bind it.
- Vanilla Enriched automatically embeds custom item lore on the compass displaying the target's exact `X`, `Y`, `Z` coordinates and destination dimension!

---

### 5. 🎨 Anvil Colors & Chroma Text Formatting

Add vibrant colors, styles, and animated rainbow formatting to item names right inside the vanilla Anvil using the `&` symbol!

#### 🎨 Formatting Code Reference:

| Code | Color / Style | Code | Color / Style |
| :---: | :--- | :---: | :--- |
| `&0` | Black | `&8` | Dark Gray |
| `&1` | Dark Blue | `&9` | Blue |
| `&2` | Dark Green | `&a` | Light Green |
| `&3` | Dark Aqua | `&b` | Aqua / Cyan |
| `&4` | Dark Red | `&c` | Red |
| `&5` | Dark Purple | `&d` | Light Purple / Pink |
| `&6` | Gold / Orange | `&e` | Yellow |
| `&7` | Gray | `&f` | White |
| `&l` | **Bold** | `&n` | <u>Underline</u> |
| `&o` | *Italic* | `&m` | ~~Strikethrough~~ |
| `&k` | Obfuscated (Magic) | `&r` | Reset format |
| `&z` | 🌈 **Animated Rainbow / Chroma** | `&&` | Literal `&` character |

#### 📝 Examples:
- `&6&lLegendary Sword` ──> **Legendary Sword** (Bold Gold)
- `&bFrost &3Walker` ──> Frost Walker (Aqua & Dark Aqua)
- `&zCosmic Bow` ──> Animated cycling rainbow colors!

---

### 6. 🚩 Banner Territories & Area Discovery

Create clean territory boundaries for your bases, villages, farms, and shops without complex land-claim mods.

#### 🗺️ How to Mark a Region:
1. Rename any **Banner** in an anvil with your area name (e.g. `Dragon's Peak`, `Ironwood Village`).
2. Place the banner onto the ground or wall at your location.
3. An invisible area marker is registered automatically.
4. When any player enters within a **40-block radius** of the banner, a discovery fanfare appears on screen:
   - **Title (Gold):** `Dragon's Peak`
   - **Subtitle (Yellow):** `Area Discovered`
   - Accompanied by level-up audio feedback.

---

### 7. 📚 Multipage Statistics Books & Lecterns

Transform standard lecterns into real-time, interactive survival leaderboard podiums!

#### 📖 How to Setup a Leaderboard:
1. Craft a **Book and Quill**.
2. On each page, write the identifier of the statistic you want to track on that page:
   - Page 1: `jump` (Total jumps)
   - Page 2: `deaths` (Total deaths)
   - Page 3: `kills` (Mob kills)
   - Page 4: `walk` (Distance walked)
   - Page 5: `sb.custom.time_since_death` (Survival time)
3. Sign the book with the title: **`EnrichedStats`** (or **`MCStats`**).
4. Place the signed book onto any **Lectern**.
5. The datapack formats the book with neat centered headers (`✦ Jumps ✦`), descending sorted rankings, and player usernames!

---

## ⚙️ Commands & Player Triggers

All players (even without OP / cheats enabled) have access to player triggers:

| Command | Description |
| :--- | :--- |
| `/trigger enriched.help` | Opens the in-game help menu and guide in chat. |
| `/trigger enriched.optin` | Opts your player into the statistic leaderboard rankings. |
| `/trigger enriched.optout` | Opts out of public statistics and removes your scores from lecterns. |
| `/trigger enriched.secret` | Toggles privacy mode on stat books (anonymize names or scores). |

---

## ❓ Frequently Asked Questions (FAQ) & Troubleshooting

<details>
<summary><b>Q: Do other players need to install any mod or resource pack to see these features?</b></summary>
<p>
<b>No!</b> Everything is executed using vanilla Minecraft Data Components, display entities, scoreboards, and actionbar JSON text. Zero client-side mods or texture packs are required.
</p>
</details>

<details>
<summary><b>Q: Why didn't my player head skin load immediately?</b></summary>
<p>
Minecraft resolves custom player skull skins by contacting Mojang's session servers. Ensure your server/client has an active internet connection. If testing in offline/cracked mode, custom player skins will default to Steve/Alex unless using custom texture base64 presets like <code>Giant Honey Dipper</code>.
</p>
</details>

<details>
<summary><b>Q: How do I remove a ghost display entity left by another deleted datapack?</b></summary>
<p>
Stand near the phantom block and run:
<pre><code>/kill @e[type=block_display,distance=..5]
/kill @e[type=item_display,distance=..5]</code></pre>
</p>
</details>

---

## 🛠️ Architecture & File Structure

```text
VanillaEnriched/
├── pack.mcmeta                         # Pack metadata (pack_format: 48 / 26.3)
├── README.md                           # Documentation & Tutorial
└── data/
    ├── minecraft/                      # Vanilla tags & recipe overrides
    │   ├── recipe/player_head.json
    │   └── tags/function/              # Load and Tick hooks
    └── main/
        ├── advancement/                # Event triggers (lectern, frames, banners)
        ├── recipe/                     # Crafting recipes (heads, invisible frames)
        └── function/
            ├── backend/math/           # Sqrt and distance algorithms
            ├── backend/sort/           # Ranking algorithms
            ├── item/clock/             # Clock HUD & wall clock displays
            ├── item/compass/           # Compass HUD & 8-way cardinal facing
            ├── item/stat_book/         # Multipage lectern leaderboard system
            ├── mechanic/colored_names/ # Anvil color & chroma interpreter
            ├── mechanic/custom_head/   # Decorative player head transformation
            ├── mechanic/invisible_frame# Dynamic invisible frame logic
            ├── mechanic/region/        # Territory discovery system
            └── setup/                  # Global init (load) and main tick loop (tick)
```

---

## 📄 License

This datapack is open-source and free to use, modify, and distribute for personal survival worlds and multiplayer servers. Enjoy building and exploring!
