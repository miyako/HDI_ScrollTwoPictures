![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_ScrollTwoPictures

Synchronising the scroll position of two picture inputs so they pan together, driven by the picture scroll form event. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v14**; restored so it runs on current 4D releases.

## What it demonstrates

- Two scaled picture inputs (`Pict1`, `Pict2`), each with automatic vertical and horizontal scroll bars, kept in lockstep.
- Reading a picture input's scroll offset with `OBJECT GET SCROLL POSITION` and mirroring it onto the other object with `OBJECT SET SCROLL POSITION`.
- Reacting to the picture scroll form event from the object method of each picture.
- Loading pictures from the resources folder at form load into the `vPict1`/`vPict2` picture variables.
- A secondary tab showing `LISTBOX MOVE COLUMN` reordering a list box column programmatically.

## Key commands

| Command | Used for |
|---|---|
| `OBJECT GET SCROLL POSITION` | Read the current scroll offset of a picture input |
| `OBJECT SET SCROLL POSITION` | Apply that offset to the partner picture input |
| `READ PICTURE FILE` | Load the two sample images into picture variables |
| `Get 4D folder` | Resolve the current resources folder path |
| `Open form window` | Open the demo dialog window |
| `LISTBOX MOVE COLUMN` | Reorder a list box column on the demo tab |

## How it works

`Demo_Start` (called from the `onStartup` database method) opens `HDI2` and runs it as a dialog. The form method (`Project/Sources/Forms/HDI2/method.4dm`) handles `On Load`: it reads `Sample_1.jpg` and `Sample_2.jpg` from the current resources folder into `vPict1` and `vPict2`.

The two picture inputs are defined in `form.4DForm` as scaled pictures with automatic scroll bars and each subscribes to the `onScroll` event. The interesting code is in the object methods `ObjectMethods/Pict1.4dm` and `Pict2.4dm`: on `On Scroll` each reads its own scroll position and pushes the same vertical and horizontal values onto the other picture, so panning one image pans the other. The `*` on `OBJECT SET SCROLL POSITION` suppresses re-firing the event, avoiding a feedback loop.

## Points of interest

- The picture scroll form event used here (`On Scroll:K2:57` in source) has since been renamed **On Scroll** in the 4D language.
- Passing `*` to `OBJECT SET SCROLL POSITION` stops the mirrored update from generating another scroll event and looping between the two objects.

## References

- [4D documentation: OBJECT GET SCROLL POSITION](https://developer.4d.com/docs/commands/object-get-scroll-position)
- [4D documentation: OBJECT SET SCROLL POSITION](https://developer.4d.com/docs/commands/object-set-scroll-position)
- [4D documentation: READ PICTURE FILE](https://developer.4d.com/docs/commands/read-picture-file)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="500" height="auto" alt="" src="https://github.com/user-attachments/assets/0e0f0df7-8282-4beb-b24a-46c8a8e0c9a0" />
