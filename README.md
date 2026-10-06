# 🌟 Vanilla Enriched

[![GitHub Repository](https://img.shields.io/badge/GitHub-RobssJR%2FVanillaEnriched-blue?logo=github)](https://github.com/RobssJR/VanillaEnriched)
![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21%2B%20%2F%2026.3-brightgreen)
![Datapack Type](https://img.shields.io/badge/Type-Vanilla%20Datapack-blue)
![Dependencies](https://img.shields.io/badge/Dependencies-None%20(Pure%20Vanilla)-orange)
![Pure Survival](https://img.shields.io/badge/Commands%20Required-0%20(Pure%20Survival)-success)

**Vanilla Enriched** is a modular, high-performance survival enhancement datapack. It brings modern Quality of Life (QoL) features, immersive navigation HUDs, customizable decorative player heads, dynamic invisible item frames, holographic wall clocks, territory discovery titles, and automated lectern leaderboards to your world — **100% vanilla, pure survival, with zero commands or mods required!**

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
  - [8. 🌾 Villager Temptation ("O Trigo dos Aldeões")](#8--villager-temptation-o-trigo-dos-aldeões)
- [❓ Frequently Asked Questions (FAQ) & Troubleshooting](#-frequently-asked-questions-faq--troubleshooting)
- [🛠️ Architecture & File Structure](#️-architecture--file-structure)
- [📄 License](#-license)

---

## 🚀 Quick Start & Installation

### Singleplayer:
1. Download or clone this repository from [GitHub](https://github.com/RobssJR/VanillaEnriched).
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

#### 🔨 How to Transform Heads:

##### Option A: Player Nicknames & MHF Heads (via Anvil)
1. Place the crafted `Decorative Player Head` into the left slot of an **Anvil**.
2. In the rename text box, type any valid player username (e.g. `Notch`, `Dinnerbone`, `RobssJR`) or MHF account name.
3. Take the head out of the anvil output slot (costs 1 XP level).
4. **Boom!** The skull instantly transforms into that player's genuine skin!

##### Option B: Sculpting Custom Heads from Manual (Atril / Lectern)
For custom heads that do **not** have a player nickname (like decorative pots, logs, furniture, food, etc.):

1. **O Molde:** Craft blank decorative heads (8 Leather surrounding 1 Carved Pumpkin).
2. **O Manual:** Open a **Book and Quill** (or signed book):
   - **Page 1:** Paste the Base64 **Value** copied from [minecraft-heads.com](https://minecraft-heads.com/) (starts with `eyJ0...`).
   - **Page 2 (Optional):** Type the display name for the head (e.g. `Burn Pot`, `Poplar Log`).
3. **A Bancada:** Place the book onto a **Lectern** (Atril).
4. **A Escultura:** Hold the blank head in your hand and **right-click the Lectern** (as if consulting the manual!).
5. **A Mágica:** Stonecutting sounds and librarian work effects play, and the blank head in your hand instantly becomes the custom head with its genuine texture and golden name! The book remains safely on the lectern so you can sculpt as many copies as you want!
*(Tip: You can also hold the head + book in your hands or drop them together on the ground if sculpting on the go!)*


#### 🎁 Built-in Decorative Block Heads & Presets:
Mojang provides official decorative mini-block heads through Marc's Head Format (MHF) accounts, plus built-in quick presets:

| Category | In-Game Anvil Names / IDs |
| :--- | :--- |
| **Blocks & Food** | `MHF_Chest`, `MHF_Cake`, `MHF_TNT`, `MHF_Cactus`, `MHF_Melon`, `MHF_Pumpkin`, `MHF_OakLog` |
| **Monsters & Animals** | `MHF_Blaze`, `MHF_Enderman`, `MHF_Spider`, `MHF_Cow`, `MHF_Pig`, `MHF_Sheep`, `MHF_Chicken` |
| **Direction Arrows** | `MHF_ArrowUp`, `MHF_ArrowDown`, `MHF_ArrowLeft`, `MHF_ArrowRight` |



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

Transform standard lecterns into real-time, interactive survival leaderboard podiums — **100% automated with zero player commands needed!**

#### 📖 How to Setup a Leaderboard:
1. Craft a **Book and Quill**.
2. On each page, write the identifier or shortcut of the statistic you want to track on that page:
   - **General Stats:**
     - `jump` (Total jumps)
     - `deaths` (Total deaths)
     - `kills` (Mob kills)
     - `player_kills` (PvP kills)
     - `walk` (Distance walked)
     - `fly` (Elytra / flight distance)
     - `play_time` (Total play time)
     - `time_since_death` (Survival streak time)
     - `damage_dealt` / `damage_taken`
   - **Block Mining Stats (Shortcuts):**
     - `diamonds` / `diamantes` (Diamond ore & deepslate diamond ore)
     - `debris` / `netherite` (Ancient debris)
     - `iron` / `ferro` (Iron ore & deepslate iron ore)
     - `gold` / `ouro` (Gold ore, deepslate gold ore & nether gold ore)
     - `copper` / `cobre` (Copper ore & deepslate copper ore)
     - `coal` / `carvao` (Coal ore & deepslate coal ore)
     - `lapis` / `emerald` / `redstone`
     - `stone` / `pedra` (Stone, cobble & deepslate)
     - `obsidian` / `obsidiana`
     - `wood` / `madeira` / `logs` (All log types)
     - `spawner` / `sculk` / `crying_obsidian`
   - **Any Vanilla Block (`mined:<block_id>`):**
     - You can track *any* Minecraft block by typing `mined:<block>` (e.g. `mined:glowstone`, `mined:amethyst_cluster`, `mined:beacon`, `mined:tnt`). The datapack creates the tracking objective dynamically!
3. Sign the book with the title: **`EnrichedStats`** (or **`MCStats`**).
4. Place the signed book onto any **Lectern**.
5. The datapack automatically formats the book with neat centered headers (`✦ Diamonds Mined ✦`), descending sorted rankings, and actual player usernames! All players on the world/server are tracked automatically.

---

### 8. 🌾 Villager Temptation ("O Trigo dos Aldeões")

Transport and guide villagers effortlessly across your world without complicated boats, minecarts, or leads — simulating the vanilla animal food temptation mechanic!

#### 💎 How it Works:
1. Hold an **Emerald Block** (`minecraft:emerald_block`) in your **mainhand** or **offhand**.
2. Any adult villager within a **12-block radius** immediately notices the emerald block:
   - Plays an excited villager sound and produces green emerald particles (`happy_villager`).
   - Fixes their gaze on you and begins walking towards you smoothly.
3. **Safe Distance:** When the villager reaches within **~2.2 blocks**, they stop walking and admire the block, preventing them from pushing or suffocating you.
4. **Terrain Navigation:** The villager automatically steps up 1-block ledges, stairs, and slabs while following.
5. **Releasing:** If you switch to another item or walk further than 12 blocks away, the villager loses interest (with a disappointed grunt sound) and instantly returns to their standard vanilla AI and schedule (work, rest, gossip).

---

## ❓ Frequently Asked Questions (FAQ) & Troubleshooting

<details>
<summary><b>Q: Do players need to type any commands or opt-in?</b></summary>
<p>
<b>No!</b> Vanilla Enriched is completely command-free for players. All statistics, transformations, crafting recipes, and HUDs work 100% through normal survival gameplay.
</p>
</details>

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
    ├── minecraft/                      # Vanilla tags (load and tick hooks)
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
            ├── mechanic/villager_follow# Villager emerald block temptation system
            └── setup/                  # Global init (load) and main tick loop (tick)
```

---

## 📄 License

This datapack is open-source and free to use, modify, and distribute for personal survival worlds and multiplayer servers. Enjoy building and exploring!
