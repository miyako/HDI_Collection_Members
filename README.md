# HDI_Collection_Members

A 4D **HDI** (How Do I) example demonstrating the **Collection** object's built-in query/transform methods -- `map`, `reduce`, `filter`, `find`, `slice`, `orderBy`, `average`/`min`/`max`/`sum`, and more -- driven by callback functions instead of manual loops. Originally distributed as a binary `.4DB` database, it has been converted to the modern 4D project (`.4DProject`) architecture.

## What this demonstrates

- Splitting a CSV/text blob into a collection, and converting between arrays, collections, and objects (`ARRAY TO COLLECTION`, `COLLECTION TO ARRAY`, `SELECTION TO ARRAY`).
- Populating a collection from random samples and from a `[Countries]` table selection.
- Transforming every element with `.map()`, backed by a callback method (`PriceCalc`) that returns a new object per element.
- Aggregating a collection with `.average()`, `.min()`, `.max()`, `.sum()`, and `.reduce()` (with an accumulator callback, `TotalPriceExclTax`).
- Inserting, extracting, and copying elements/properties (`.insert()`, `.extract()`, `.copy()`, `.concat()`).
- Searching a collection with `.find()` / `.findIndex()` using match-callback methods (`FindContinent`, `GreaterThan`, `WordLength`), each following the 4D convention of a `$1.value` / `$1.result` parameter object.
- Detecting `Null` vs `Undefined` slots after sparse inserts, and counting each with `.length` / `Value type`.
- Sorting a collection with `.orderBy()`.

## Project structure

| Path | Contents |
|------|----------|
| `Project/Sources/Methods/` | Startup method, per-tab initializers (`Init`, `InitCountries`, `InitPrices`, ...), and the collection callback functions (`PriceCalc`, `TotalPriceExclTax`, `FindContinent`, `GreaterThan`, `Double`, `WordLength`). |
| `Project/Sources/Forms/HDI/` | Splash screen form and its method/object methods. |
| `Project/Sources/Forms/HDI2/` | Main demo form: a 13-page tab control (Info, Split, Conversion, Populate, Map, Calculation, Insert, Extract, Find elements, Find indices, Duplicate, Concat, Order), one button per collection method demonstrated. |
| `Project/Sources/TableForms/1/`, `.../2/`, `.../3/` | Default input/output forms for the `INFO`, `DICO`, and `Countries` tables backing the demo data. |
| `Project/Sources/catalog.4DCatalog` | Table structure: `INFO`, `DICO`, `Countries`. |
| `Project/Sources/menus.json` | Menu bar definition (File/Edit/Mode), using standard actions where applicable. |
| `Resources/Countries.csv` | Sample country data parsed by the "Split"/"Conversion" tabs. |

## Points of interest

- Every callback method used by a collection function (`.map()`, `.reduce()`, `.find()`, `.query()`, etc.) follows the same shape: it receives an object with `$1.value` (the current element) and sets `$1.result` (or `$1.accumulator` for `.reduce()`), keeping the calling code declarative.
- `GreaterThan` and `WordLength` show that the same callback pattern works for both numeric comparisons and derived comparisons (string length), by reading a second value off the parameter object (`$1.value2`, or a closed-over `$2`).
- The "Insert" and "Duplicate" tabs illustrate that `Null` and `Undefined` are distinct collection element states in 4D, and that `.copy()` is required to avoid two variables referencing the same underlying collection.
- `InitCountriesObj` fills its collection straight from a table selection with `SELECTION TO ARRAY` + `ARRAY TO COLLECTION`, showing the shortest path from a 4D selection to a collection of objects.

## Requirements

- 4D 21 or later (project uses `compatibilityVersion: 2101`).

## Getting started

1. Open `Project/HDI_Collection_Members.4DProject` in 4D.
2. Run the `00_Start` method (or use the **File > Demo** menu item) to open the splash screen, then click through to `HDI2` to try each tab.

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-new-worktree-session`](../../tree/miyako-new-worktree-session) | Converted the project to modern syntax and UI conventions: XLIFF localisation, `var`/`#DECLARE` variable declarations, menu standard actions, method visibility attributes, a rewritten startup dialog, dark mode/Liquid Glass CSS, and listbox display defaults. | [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md), [listbox.instructions.md](.github/instructions/listbox.instructions.md) |

## Copilot Token Usage

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| New worktree (README rewrite + full modernisation) | `miyako-new-worktree-session` | Claude Sonnet 5 | 27,966,433 | 123,832 | 4 |
| **Total** | | | **27,966,433** | **123,832** | **4** |

## Model Selection Assessment

The full modernisation (localisation, variable-declaration migration, menu/method/CSS/listbox conventions, and this README) was carried out in a single Claude Sonnet 5 session spanning 4 turns and ~180 tool calls. The work required cross-referencing several project-specific instruction files simultaneously (token-safety rules, CSS specificity, `#DECLARE` parameter constraints) and repeatedly auditing the whole project rather than a single file, which benefits from a capable model; Sonnet 5 was appropriate here rather than overkill. **Recommendation:** for a repeat of this scope of work, Sonnet 5 in interactive mode remains a good default; plan mode could have caught the `#DECLARE`-with-numbered-parameters mistake earlier had a plan review preceded the bulk method-code migration.

## References

- **Blog post:** https://blog.4d.com/find-items-in-a-collection/
- **4D documentation:** [Collections](https://developer.4d.com/docs/Concepts/collections)
- **Original download:** https://download.4d.com/Demos/4D_v16_R6/HDI_Collection_Members.zip
- **Index of v16/v17 HDIs:** [miyako/4d-hdi](https://github.com/miyako/4d-hdi)
