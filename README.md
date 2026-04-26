# Science Fair Board Layout

A printable Typst template system for making clean, readable science fair tri-fold boards from normal letter-size paper, plus optional custom-size title banners.

This project is meant for parents who want their child’s science fair board to look organized without fighting with word processors, resizing text boxes, or guessing whether something will print correctly.

The goal is simple:

- Write the project text once.
- Add photos in one folder.
- Compile each section to a PDF.
- Print at **300 dpi** on normal **8.5 × 11 inch letter paper**.
- Tape the finished pages onto the tri-fold board.

## Why use this?

Science fair boards are surprisingly hard to lay out by hand. Text is often too small, sections do not line up, and photos can print at the wrong size.

This template helps by giving you:

- **Consistent section sizes** for a clean board.
- **Large readable text** for adults, judges, grandparents, and teachers.
- **PDF output** so pages print the same way every time.
- **Separate files for each board section**, so one mistake does not ruin the whole board.
- **Image placeholders** for photos, materials, demonstrations, and test results.
- **A custom title banner template** for larger print shops such as Staples.
- **Easy editing with ChatGPT or another LLM**, even if you do not know Typst.

## Example board sections

This project includes templates for common science fair board sections:

- Title banner
- Question
- Hypothesis
- Report
- Procedure
- Materials
- Variables
- Data
- Photos
- Conclusion
- Real World Application

You can rename, remove, or rearrange sections as needed.

## Folder structure

After downloading or cloning this repository, the folder should look like this:

```text
science-fair-board-layout/
  README.md
  common.typ
  title_banner.typ
  report.typ
  conclusion_strip.typ
  real_world_application_strip.typ
  question_hypothesis_strip.typ
  photos_strip.typ
  procedure.typ
  materials.typ
  variables_data_strip.typ
  compile_all.sh

  assets/
    materials.jpg
    setup.jpg
    tesla-coil.jpg
    faraday-cage.jpg
    test-result.jpg

  out/
    generated PDFs go here
```

If the `assets` or `out` folders do not exist yet, create them.

## What is Typst?

Typst is a tool that turns simple text-based template files into polished PDFs.

You do not need to understand programming to use this project. Most edits are plain text changes inside `.typ` files.

The files ending in `.typ` are the source files. The files ending in `.pdf` are the printable files.

## Step 1: Install Typst

### Windows

Open **PowerShell** and run:

```powershell
winget install --id Typst.Typst
```

Then check that it installed:

```powershell
typst --version
```

### Mac

Open **Terminal** and run:

```bash
brew install typst
```

Then check that it installed:

```bash
typst --version
```

If you do not have Homebrew installed, install Homebrew first from:

```text
https://brew.sh
```

### Linux

Install Typst using your system package manager, Snap, or the official Typst download page.

Then check that it installed:

```bash
typst --version
```

## Step 2: Download this project

### Option A: Download as ZIP from GitHub

1. Open this repository on GitHub.
2. Click the green **Code** button.
3. Click **Download ZIP**.
4. Unzip the folder.
5. Open the folder on your computer.

### Option B: Clone with Git

```bash
git clone https://github.com/YOUR-GITHUB-USERNAME/science-fair-board-layout.git
cd science-fair-board-layout
```

Replace `YOUR-GITHUB-USERNAME` with your GitHub username.

## Step 3: Add your images

Put all project photos inside the `assets` folder.

Example:

```text
assets/
  materials.jpg
  setup.jpg
  tesla-coil.jpg
  faraday-cage.jpg
  test-result.jpg
```

You can use `.jpg`, `.jpeg`, or `.png` images.

### Recommended image sizes for 300 dpi printing

For sharp printing, use images that are at least this large:

| Image use | Printed size | Minimum image size |
|---|---:|---:|
| Materials photo | about 5.1 in × 5.7 in | 1535 × 1710 px |
| Each photo in a 4-photo grid | about 4.94 in × 2.32 in | 1485 × 700 px |
| Full landscape letter page | 11 in × 8.5 in | 3300 × 2550 px |
| Full portrait letter page | 8.5 in × 11 in | 2550 × 3300 px |
| Custom title banner | 23.75 in × 6.5 in | 7125 × 1950 px |

Most modern phone photos are large enough. The main thing to watch is cropping.

Use wide photos for wide photo boxes. Use vertical photos for portrait-style boxes.

## Step 4: Edit the project text

Open the `.typ` files in a text editor.

Good options:

- Notepad on Windows
- TextEdit on Mac in plain-text mode
- Visual Studio Code
- Typst web app
- Any simple code editor

Each file contains obvious placeholder text, usually marked with wording like:

```text
PLACEHOLDER - replace this text before printing.
```

Search for `PLACEHOLDER` before printing so you do not accidentally leave sample text in the final board.

## Step 5: Compile all PDFs

### Mac or Linux

Open Terminal in the project folder and run:

```bash
bash compile_all.sh
```

The generated PDFs will appear in the `out` folder.

### Windows PowerShell

If you do not have Bash installed, run these commands from the project folder:

```powershell
mkdir out

typst compile title_banner.typ out/title_banner.pdf
typst compile report.typ out/report.pdf
typst compile conclusion_strip.typ out/conclusion_strip.pdf
typst compile real_world_application_strip.typ out/real_world_application_strip.pdf
typst compile question_hypothesis_strip.typ out/question_hypothesis_strip.pdf
typst compile photos_strip.typ out/photos_strip.pdf
typst compile procedure.typ out/procedure.pdf
typst compile materials.typ out/materials.pdf
typst compile variables_data_strip.typ out/variables_data_strip.pdf
```

## Step 6: Review the PDFs

Open each PDF in the `out` folder.

Check for:

- Text that is too long
- Text that runs off the page
- Images that are cropped badly
- Placeholder text you forgot to replace
- Misspelled words
- Section titles that need renaming

If something looks wrong, edit the matching `.typ` file and compile again.

## Step 7: Print

For normal letter-size section PDFs:

- Paper size: **Letter, 8.5 × 11 in**
- Scale: **100%**
- Do not choose **Fit to page**
- Do not choose **Shrink oversized pages**
- Print quality: **Best** or **High**
- Color: use color if your images need it

For the custom title banner:

1. Use `out/title_banner.pdf`.
2. Ask the print shop to print it at the exact PDF page size.
3. Use the trim marks to cut it.
4. Tape or glue it into the title area of the tri-fold board.

## How to change images

Images are usually inserted with a line like this:

```typst
#image("assets/materials.jpg", width: 100%, height: 100%, fit: "contain")
```

Change the file name to match your photo:

```typst
#image("assets/my-new-photo.jpg", width: 100%, height: 100%, fit: "contain")
```

### `contain` vs `cover`

Use `contain` when you want the full photo visible:

```typst
fit: "contain"
```

Use `cover` when you want the photo box fully filled, even if the edges are cropped:

```typst
fit: "cover"
```

For science fair boards, `contain` is usually safer.

## How to change font sizes

Most font settings are in:

```text
common.typ
```

Look for lines like these:

```typst
#let title-size = 30pt
#let heading-size = 22pt
#let body-size = 16pt
```

Change the numbers, save the file, and compile again.

Example:

```typst
#let body-size = 18pt
```

Larger text is easier to read, but less text will fit on each page.

## How to change the font

The default font is Arial.

In `common.typ`, look for:

```typst
#let board-font = "Arial"
```

Change it to another font installed on your computer:

```typst
#let board-font = "Aptos"
```

Then compile again.

For science fair boards, plain fonts usually work best.

Good choices:

- Arial
- Aptos
- Calibri
- Helvetica

## How to change the tri-fold board size

Board measurements affect the physical layout, not just the PDFs.

To adjust the design:

1. Measure the full board height.
2. Measure the left panel width.
3. Measure the middle panel width.
4. Measure the right panel width.
5. Measure any title header area.
6. Measure anything that blocks the board, such as a model, coil, volcano, display stand, or shelf.
7. Decide which sections go on each panel.

Then update the relevant `.typ` files.

Normal letter-size pages usually stay at:

```typst
#set page(width: 8.5in, height: 11in)
```

Landscape pages use:

```typst
#set page(width: 11in, height: 8.5in)
```

The title banner may use a custom size, for example:

```typst
#set page(width: 23.75in, height: 6.5in)
```

## How to use ChatGPT or another LLM to modify the templates

You can ask an LLM to help adjust the templates. The best way is to give it very specific information.

### Good prompt for changing the board size

```text
I have a Typst science fair board template. The board size changed.

New board measurements:
- Left panel: __ inches wide by __ inches tall
- Middle panel: __ inches wide by __ inches tall
- Right panel: __ inches wide by __ inches tall
- Title area: __ inches wide by __ inches tall
- Bottom area blocked by project model: __ inches high by __ inches wide

I want to keep printing on 8.5 x 11 letter paper.

Please update the Typst templates so each printed section still fits on letter paper, uses readable text, and does not place important content behind the physical model.
```

### Good prompt for adding pictures

```text
I want to add photos to my Typst science fair board template.

Here are the photo file names:
- assets/materials.jpg
- assets/setup.jpg
- assets/result-1.jpg
- assets/result-2.jpg

Please update the template so the photos fit inside bordered boxes, keep the full image visible, and do not crop important parts.
Use fit: "contain" unless there is a better reason to crop.
```

### Good prompt for changing font size

```text
Please update this Typst template so:
- section titles are 30pt bold and underlined
- section headings are 22pt bold
- body text is 16pt
- captions are 12pt
- the font is Arial

Keep the layout clean and academic.
```

### Good prompt for making text fit

```text
This Typst section has too much text and it runs off the page.

Please shorten the placeholder text area or adjust spacing so the content fits on one 8.5 x 11 page.
Keep the body text at least 16pt.
Do not reduce readability.
```

### Good prompt for troubleshooting compile errors

```text
Typst gives me this compile error:

PASTE ERROR HERE

Here is the Typst file:

PASTE FILE CONTENT HERE

Please fix the Typst syntax while keeping the layout the same.
```

## Tips for using LLMs safely

Before printing, always check the generated PDFs yourself.

LLMs can make helpful edits, but they can also:

- Remove a margin by accident
- Change a page size
- Crop a photo
- Leave placeholder text
- Break Typst syntax
- Make text too small

Always compile and review the PDF after each change.

## Suggested parent workflow

1. Measure the board.
2. Decide where each science fair section goes.
3. Edit one `.typ` file at a time.
4. Add photos to `assets`.
5. Compile the PDFs.
6. Review everything on screen.
7. Print one test page.
8. Tape pages loosely onto the board.
9. Adjust spacing before gluing.
10. Print the final copies.
11. Cut and mount everything.

## Suggested print checklist

Before printing final copies, confirm:

- No `PLACEHOLDER` text remains.
- All section names are correct.
- Student name, grade, and project title are correct.
- Photos are clear.
- Charts and tables are readable.
- Text is large enough from a few feet away.
- The title banner has the right size.
- The PDF print scale is set to 100%.
- Nothing important will be blocked by a physical display item.

## Common problems

### The text is too small

Increase the body font size in `common.typ`, or split the content into two sections.

### The text does not fit

Shorten the text, reduce spacing slightly, or split the section across two pages.

Do not make the body text tiny just to fit more words.

### The image is cropped

Change:

```typst
fit: "cover"
```

to:

```typst
fit: "contain"
```

### The PDF prints too small

Check your print settings.

Use:

```text
Scale: 100%
```

Do not use:

```text
Fit to page
```

### Typst cannot find an image

Check that the image file is in the `assets` folder and that the file name matches exactly.

These are different file names:

```text
materials.jpg
Materials.jpg
materials.jpeg
materials.png
```

## License

Use this for personal, classroom, and school science fair projects.

If you publish modifications, please credit the original project.

## Contributing

Pull requests are welcome.

Useful improvements include:

- More board size presets
- More section templates
- Kid-friendly theme options
- Chart templates
- Data table templates
- Better title banner options
- Example finished boards
