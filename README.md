# 🌟 Vanilla Enriched

![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21%2B%20%2F%2026.3-brightgreen)
![Datapack Type](https://img.shields.io/badge/Type-Vanilla%20Datapack-blue)
![Dependencies](https://img.shields.io/badge/Dependencies-None%20(Pure%20Vanilla)-orange)

**Vanilla Enriched** é um datapack modular, leve e de alta performance desenvolvido para expandir a experiência vanilla com recursos modernos de qualidade de vida (QoL), navegação imersiva, estatísticas em atrís, relógios de parede e muito mais — 100% fiel à essência do Minecraft e sem necessidade de mods no cliente ou servidor.

---

## 📑 Sumário

- [🌟 Funcionalidades](#-funcionalidades)
  - [📚 Atril de Estatísticas Multipage (Vanilla Enriched)](#-atril-de-estatísticas-multipage-vanilla-enriched)
  - [🧭 Bússola & Navegação Avançada](#-bússola--navegação-avançada)
  - [🕒 Relógio & Relógios de Parede](#-relógio--relógios-de-parede)
  - [🎨 Cores e Formatação na Bigorna](#-cores-e-formatação-na-bigorna)
  - [🚩 Regiões & Marcadores com Estandartes](#-regiões--marcadores-com-estandartes)
  - [👻 Invisibilidade Prática para Construtores](#-invisibilidade-prática-para-construtores)
- [📦 Requisitos & Compatibilidade](#-requisitos--compatibilidade)
- [🚀 Instalação](#-instalação)
- [🛠️ Estrutura do Projeto](#️-estrutura-do-projeto)
- [📄 Licença](#-licença)

---

## 🌟 Funcionalidades

### 📚 Atril de Estatísticas Multipage (Vanilla Enriched)
Transforme atrís (*lecterns*) em quadros de líderes interativos e atualizados automaticamente em tempo real!

- **Múltiplas Páginas:** Suporta até dezenas de páginas em um único livro, rastreando uma estatística diferente por página.
- **Títulos Polidos:** Cada página exibe um cabeçalho estilizado (ex: `✦ Saltos ✦`, `✦ Mortes ✦`, `✦ Tempo de Jogo ✦`) com divisórias perfeitamente alinhadas (`───────────`) sem quebra de linha.
- **Nomes Reais de Jogadores:** Mapeamento inteligente de nomes, garantindo que o nick real do jogador apareça no pódio em vez de UUIDs ou seletores crus.
- **Top 10 & Pódio:** Ordenação automática decrescente com destaque para o pódio (`1º`, `2º`, `3º`).
- **Feedback Audiovisual:** Efeitos sonoros de encantamento, partículas e notificação na Actionbar ao converter ou atualizar o livro.

#### 📖 Como Criar um Livro de Estatísticas:
1. Pegue um **Livro e Pena** (*Book and Quill*).
2. Em cada página, escreva o identificador ou atalho da estatística desejada (ex: `pulos`, `deaths`, `enriched.custom.jump`, `sb.custom.time_since_death`).
3. Assine o livro com o título **`EnrichedStats`** (ou **`MCStats`**).
4. Coloque o livro assinado em qualquer **Atril**. O datapack processará o livro instantaneamente!

#### ⚙️ Comandos de Jogador:
- `/trigger enriched.help` — Exibe o guia de ajuda e estatísticas disponíveis no chat.
- `/trigger enriched.optin` — Entra voluntariamente no rastreamento de estatísticas.
- `/trigger enriched.optout` — Oculta e remove seus dados do livro de estatísticas.
- `/trigger enriched.secret` — Alterna o modo secreto (mantém a pontuação oculta para outros jogadores).

---

### 🧭 Bússola & Navegação Avançada
Leve a navegação vanilla para outro nível sem poluir sua tela.

- **Exibição na Actionbar (Agachar / Shift):** Segure uma bússola (na mão principal ou secundária) e agache para ver em tempo real:
  - **Coordenadas Atuais:** `X`, `Y`, `Z`.
  - **Direção Cardeal (8 vias):** `Norte (N)`, `Nordeste (NE)`, `Leste (L)`, `Sudeste (SE)`, `Sul (S)`, `Sudoeste (SO)`, `Oeste (O)`, `Noroeste (NO)`.
  - **Distância:** Distância em blocos até o ponto de spawn ou até a magnetita vinculada.
- **Lore Automático de Magnetita (1.20.5+ / 26.3):** Ao vincular uma bússola a uma Magnetita (*Lodestone*), a bússola recebe automaticamente uma descrição formatada (*lore*) com as coordenadas exatas e a dimensão do destino, utilizando o formato moderno de componentes NBT.

---

### 🕒 Relógio & Relógios de Parede
Fácil controle do tempo e decoração funcional para suas construções.

- **Horário na Actionbar (Agachar / Shift):** Agache enquanto segura um relógio (na mão principal ou na mão secundária) para ver o horário formatado (ex: `14:35`) e o número de dias no mundo.
- **Relógios Digitais de Parede:**
  - Coloque uma **Moldura** (*Item Frame*) ou **Moldura Brilhante** (*Glow Item Frame*) na parede e insira um relógio nela.
  - Um mostrador digital holográfico aparecerá sobre a moldura indicando o horário em tempo real.
  - Ao remover o relógio ou quebrar a moldura, o texto flutuante é limpo automaticamente sem deixar entidades residuais.
- **Sincronização Anti-Desync:** Proteção e calibração contínua do ciclo dia/noite do mundo.

---

### 🎨 Cores e Formatação na Bigorna
Personalize nomes de itens e blocos diretamente na Bigorna usando códigos intuitivos de estilo Minecraft:

| Código | Efeito | Código | Efeito |
| :--- | :--- | :--- | :--- |
| `&0` a `&9` | Cores numéricas (Preto, Azul, Verde, etc.) | `&k` | Texto Mágico / Obfuscado |
| `&a` a `&f` | Cores em letras (Verde claro, Ciano, etc.) | `&l` | **Negrito** |
| `&m` | ~~Tachado~~ | `&n` | <u>Sublinhado</u> |
| `&o` | *Itálico* | `&r` | Resetar formatação |
| `&z` | 🌈 **Efeito Arco-Íris / Chroma** | `&&` | Escreve o caractere `&` literal |

*Funciona ao renomear itens na bigorna, aplicando os componentes de exibição nativos do jogo!*

---

---

### 🚩 Regiões & Marcadores com Estandartes
Crie demarcações territoriais simples e imersivas para cidades, bases ou pontos de interesse:

1. Renomeie um **Estandarte** (*Banner*) na bigorna com o nome do local desejado (ex: `Vila dos Ferreiros`).
2. Coloque o estandarte no chão ou parede.
3. Um marcador de área invisível será gerado no ponto.
4. Quando qualquer jogador entrar no raio da área, uma notificação de descoberta aparecerá no centro da tela:
   - **Título:** Nome da Região em Dourado e Negrito.
   - **Subtítulo:** *"Área Descoberta"*.

---

### 👻 Invisibilidade Prática para Construtores
Decore suas construções de forma profissional sem depender de comandos complexos de `/data` ou mods!

- **Tornar Invisível (Poção de Invisibilidade):**
  - Arremesse uma **Poção de Invisibilidade Arremessável** (*Splash*) ou **Prolongada** (*Lingering*) próximo aos itens decorativos.
  - Todas as entidades no raio de **3 blocos** da nuvem de efeito que pertençam à tag `#main:hideable_stands` ficarão invisíveis imediatamente (`Invisible:1b`).
  - **Entidades Suportadas:**
    - 🛡️ **Suporte de Armaduras** (*Armor Stands*): Ficam invisíveis, exibindo apenas as armaduras e itens equipados.
    - 🖼️ **Molduras Comuns** (*Item Frames*): A moldura de madeira desaparece, deixando o item flutuando elegantemente na parede ou piso.
    - ✨ **Molduras Brilhantes** (*Glow Item Frames*): Mantêm a luminescência e deixam apenas o item visível e reluzente.
  - **Efeito Visual:** Partículas de fumaça mágica (`minecraft:poof`) e som de desmaterialização.
  - **Sem Lag:** A nuvem de efeito é processada apenas uma única vez no impacto, prevenindo repetição contínua de comandos.

- **Reverter Visibilidade (Frasco de Água Arremessável):**
  - Arremesse um **Frasco de Água Arremessável** (*Splash Water Bottle*) diretamente nas entidades invisíveis.
  - Um sistema ultra leve de rastreamento detecta o impacto exato do frasco e restaura o estado visível original (`Invisible:0b`) de todas as entidades invisíveis no raio de **3 blocos**.
  - **Efeito Visual:** Erupção de partículas de água (`minecraft:splash` e `drip_water`) e som clássico de frasco de vidro quebrando.

---

## 📦 Requisitos & Compatibilidade

- **Versão do Minecraft:** `1.21+` (Pack Format 48 a 81 / Suporte total ao 26.3)
- **Tipo:** Datapack Vanilla Puro.
- **Compatibilidade:** Compatível com mundos Singleplayer, servidores Vanilla, Fabric, NeoForge, Paper e Purpur.

---

## 🚀 Instalação

1. Baixe ou clone esta pasta do datapack.
2. Coloque a pasta `VanillaEnriched` (ou o diretório descompactado) dentro da pasta `datapacks` do seu mundo:
   ```text
   .minecraft/saves/<SEU_MUNDO>/datapacks/
   ```
3. Dentro do jogo, execute o comando:
   ```text
   /reload
   ```
4. A seguinte mensagem confirmará o carregamento no chat:
   ```text
   [Vanilla Enriched] Systems Successfully Loaded!
   ```

---

## 🛠️ Estrutura do Projeto

```text
VanillaEnriched/
├── pack.mcmeta                         # Metadados e compatibilidade do pacote
├── README.md                           # Documentação completa
├── spyglass.json                       # Configuração de validação Spyglass (26.3)
└── data/
    ├── minecraft/
    │   └── tags/function/              # Tags padrão (#minecraft:load, #minecraft:tick)
    └── main/
        ├── advancement/
        │   ├── item/stat_book/         # Gatilho de interação com o Atril
        │   └── region/                 # Gatilho de colocação de estandartes
        ├── item_modifier/
        │   └── item/stat_book/         # Modificadores de dados dos livros
        ├── loot_table/
        │   └── item/stat_book/         # Resolução segura de nomes de jogadores
        ├── tags/
        │   ├── entity_type/            # Tags de tipos de entidades (#main:hideable_stands)
        │   └── function/item/stat_book/# Hooks de pré-armazenamento e ciclo
        └── function/
            ├── backend/
            │   ├── math/               # Utilitários matemáticos (cálculo de distâncias, raiz quadrada)
            │   └── sort/               # Algoritmo de ordenação de ranking
            ├── item/
            │   ├── clock/              # Sistema de horário e relógio digital de parede
            │   ├── compass/            # Navegação, 8 direções cardeais e lore de magnetita
            │   └── stat_book/          # Gerenciamento de livros, páginas e atrís
            ├── mechanic/
            │   ├── colored_names/      # Interpretador de cores e chroma na bigorna
            │   ├── invisibility/       # Invisibilidade e reversão com frasco de água
            │   ├── player/             # Detecção de ações (sneak / agachar)
            │   └── region/             # Sistema de detecção de regiões por estandarte
            └── setup/                  # Inicialização global (load) e loop principal (tick)
```

---

## 📄 Licença

Este projeto é de código aberto e está disponível gratuitamente para uso, modificação e distribuição em mundos e servidores de Minecraft.
