# HDI_Collection_Members

A 4D v16 **HDI** (How Do I) example demonstrating the **Collection** object's built-in query/transform methods -- `map`, `reduce`, `filter`, `find`, `slice`, `orderBy`, `average`/`min`/`max`/`sum`, and more -- driven by callback functions instead of manual loops.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v16 R6. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool, then modernised (syntax, localisation, dark mode) with the help of **GitHub Copilot**.

- **Blog post:** https://blog.4d.com/find-items-in-a-collection/
- **Original download:** https://download.4d.com/Demos/4D_v16_R6/HDI_Collection_Members.zip

## Features

- Splitting a CSV/text blob into a collection, and converting between arrays, collections, and objects (`ARRAY TO COLLECTION`, `COLLECTION TO ARRAY`, `SELECTION TO ARRAY`).
- Populating a collection from random samples and from a `[Countries]` table selection.
- Transforming every element with `.map()`, backed by a callback method (`PriceCalc`) that returns a new object per element.
- Aggregating a collection with `.average()`, `.min()`, `.max()`, `.sum()`, and `.reduce()` (with an accumulator callback, `TotalPriceExclTax`).
- Inserting, extracting, and copying elements/properties (`.insert()`, `.extract()`, `.copy()`, `.concat()`).
- Searching a collection with `.find()` / `.findIndex()` using match-callback methods (`FindContinent`, `GreaterThan`, `WordLength`), each following the 4D convention of a `$1.value` / `$1.result` parameter object.
- Detecting `Null` vs `Undefined` slots after sparse inserts, and counting each with `.length` / `Value type`.
- Sorting a collection with `.orderBy()`.

## Points of Interest

- **Callback shape convention** -- every callback method used by a collection function (`.map()`, `.reduce()`, `.find()`, etc.) follows the same shape: it receives an object with `$1.value` (the current element) and sets `$1.result` (or `$1.accumulator` for `.reduce()`), keeping the calling code declarative. `GreaterThan` and `WordLength` show the same pattern extended to a second comparison value.
- **`Null` vs `Undefined`** -- the "Insert" and "Duplicate" tabs illustrate that these are distinct collection element states in 4D, and that `.copy()` is required to avoid two variables referencing the same underlying collection.
- **Table selection to collection** -- `InitCountriesObj` fills its collection straight from a table selection with `SELECTION TO ARRAY` + `ARRAY TO COLLECTION`, showing the shortest path from a 4D selection to a collection of objects.
- **XLIFF localisation** -- all menu, form, and method-level user-facing strings are resolved via `:xliff:ID` (JSON) and `Localized string(...)` (method code), backed by `Resources/en.lproj` and `Resources/ja.lproj` translation files, instead of hardcoded literals.
- **Modern startup pattern** -- `00_Start` uses `CALL WORKER` + non-blocking `DIALOG(...; *)` and a window-reuse-by-title check, replacing the older `New process` / blocking-dialog pattern; `INVOKE ACTION(ak return to design mode)` replaces `QUIT 4D` for a graceful return to the IDE.
- **Dark mode support** -- form colours use 4D's `"automatic"` / `"automaticAlternate"` values, with the few intentionally branded colours (dividers, muted text, links) driven by CSS classes and `prefers-color-scheme` media queries in `styleSheets.css`.
- **macOS Tahoe Liquid Glass adaptation** -- button heights are set via `form-theme: liquid-glass` / `mac-classic` media queries in `styleSheets_mac.css` rather than hardcoded in the form JSON, so buttons render with the correct rounded/square style per platform theme.
- **Listbox display defaults** -- the demo's listbox disables ellipsis truncation (`truncateMode: "none"`) and uses legacy (last-column-grows) resizing (`resizingMode: "legacy"`), so column widths stay predictable.
- **Run Method dialog hygiene** -- callback/subroutine methods (`PriceCalc`, `FindContinent`, `GreaterThan`, `WordLength`, `Double`, `TotalPriceExclTax`, the `Init*` initializers) and form-dependent object methods are marked `invisible` so they don't appear as spurious standalone entries in Run > Method....
- **Modern variable declarations** -- legacy `C_LONGINT`/`C_TEXT`/`C_OBJECT` directives have been replaced with `var` (locals) and `#DECLARE` (parameters/return values), per current 4D language conventions.
- **Menu standard actions** -- the File > Quit item uses the built-in `"action": "quit"` instead of a one-line method wrapper.

## Requirements

4D 21 or later (project mode, `.4DProject`, `compatibilityVersion: 2101`).

## Getting started

1. Open `Project/HDI_Collection_Members.4DProject` in 4D.
2. Run the `00_Start` method (or use the **File > Demo** menu item) to open the splash screen, then click through to `HDI2` to try each tab.

## References

- [Collections](https://developer.4d.com/docs/Concepts/collections)
- [XLIFF localisation in 4D](https://developer.4d.com/docs/Notes/xliff)
- [Dark mode / automatic colours](https://developer.4d.com/docs/settings/interface#color-scheme)
- [CSS in 4D forms](https://developer.4d.com/docs/FormEditor/stylesheets)
- [Menus -- standard actions](https://developer.4d.com/docs/Menus/properties)
- [Project method properties (`invisible`, etc.)](https://developer.4d.com/docs/Project/project-method-properties)
- [List Box Column properties (`truncateMode`, `resizingMode`)](https://developer.4d.com/docs/FormObjects/listbox-column)
- **Index of v16/v17 HDIs:** [miyako/4d-hdi](https://github.com/miyako/4d-hdi)
