# happy_factorio

Pastel recolor for **Factorio 2.1**.



https://github.com/user-attachments/assets/c5e759bb-1926-40ac-b92e-3e45f2ff9709



This repository contains:

- `pastel-factorio/` — Python-based texture recoloring tool
- `pastel-water_0.1.1.zip` — optional Factorio mod for lighter cyan water

## Requirements

- Factorio 2.1
- Python 3
- `pip`

## Installation

Clone the repository:

```bash
git clone https://github.com/adityapatel149/happy_factorio.git
cd happy_factorio/pastel-factorio
```

Alternatively, use **Code → Download ZIP** on GitHub and extract the repository.

## 1. Prepare the Factorio Graphics

Inside `pastel-factorio/`, create:

```text
data/
├── base/
└── core/
```

From your Factorio installation, copy:

```text
Factorio/data/base/graphics
Factorio/data/core/graphics
```

into the project so that you have:

```text
pastel-factorio/
├── config/
├── data/
│   ├── base/
│   │   └── graphics/
│   └── core/
│       └── graphics/
├── pastel/
├── README.md
└── requirements.txt
```

Use graphics from an unmodified Factorio installation.

## 2. Install Python Dependencies

From the `pastel-factorio` directory:

```bash
pip install -r requirements.txt
```

## 3. Build the Recolored Graphics

Run:

```bash
python -m pastel build
```

The generated graphics will be written to:

```text
data/base/updated_graphics
data/core/updated_graphics
```

The first build can take some time because Factorio 2.1 contains several large sprite sheets.

Do not install the generated files unless the build finishes with:

```text
All files passed validation.
```

## 4. Back Up the Original Factorio Graphics

Close Factorio.

In your Factorio installation, rename the original graphics folders:

```text
Factorio/data/base/graphics
Factorio/data/core/graphics
```

to:

```text
Factorio/data/base/ORIGINAL_graphics
Factorio/data/core/ORIGINAL_graphics
```

This keeps the original game textures available if you want to restore them later.

## 5. Install the Recolored Graphics

Copy:

```text
pastel-factorio/data/base/updated_graphics
```

to:

```text
Factorio/data/base/
```

and rename the copied folder from:

```text
updated_graphics
```

to:

```text
graphics
```

Then copy:

```text
pastel-factorio/data/core/updated_graphics
```

to:

```text
Factorio/data/core/
```

and rename that copied folder to:

```text
graphics
```

Your Factorio installation should now contain:

```text
Factorio/data/base/
├── ORIGINAL_graphics/
└── graphics/

Factorio/data/core/
├── ORIGINAL_graphics/
└── graphics/
```

Launch Factorio normally.

## Restoring the Original Graphics

To restore the vanilla graphics:

1. Close Factorio.
2. Delete the modified `Factorio/data/base/graphics` folder.
3. Delete the modified `Factorio/data/core/graphics` folder.
4. Rename `Factorio/data/base/ORIGINAL_graphics` back to `graphics`.
5. Rename `Factorio/data/core/ORIGINAL_graphics` back to `graphics`.

If you did not make a backup, verify or reinstall Factorio through your game launcher to restore the original files.

Factorio updates may overwrite modified graphics, in which case the recolored graphics may need to be rebuilt and installed again. After a major game update, copy the updated vanilla graphics folders into pastel-factorio/data/ again before rebuilding.

## Optional: Pastel Water

`pastel-water_0.1.1.zip` is an optional Factorio 2.1 mod that changes the water color to a lighter cyan.

To install it:

1. Copy `pastel-water_0.1.1.zip` into the Factorio `mods` folder.
2. Do not unzip it.
3. Enable **Pastel Water** from the in-game Mods menu.
4. Adjust its strength from the mod settings if desired.

## Customization

Palette and recoloring settings are stored in:

```text
pastel-factorio/config/
```

See `pastel-factorio/README.md` for additional configuration details.

## Notes

- Factorio assets are not included in this repository.
- The tool operates on graphics copied from your own Factorio installation.
- Pastel Factorio modifies local texture files and is not a standard Factorio mod.
- Pastel Water is optional and installed separately as a standard Factorio mod.

## Credits

Forked from [oigyoig/happy_factorio](https://github.com/oigyoig/happy_factorio).
