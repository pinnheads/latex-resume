[![Build and Upload LaTeX document](https://github.com/pinnheads/latex-resume/actions/workflows/upload.yml/badge.svg)](https://github.com/pinnheads/latex-resume/actions/workflows/upload.yml) [![Build and Verify LaTeX document](https://github.com/pinnheads/latex-resume/actions/workflows/latexToPdf.yml/badge.svg)](https://github.com/pinnheads/latex-resume/actions/workflows/latexToPdf.yml)

# Latex Resume to PDF w/ Actions

This repository contains the source code and the PDF file of my resume, which is written in LaTeX. LaTeX is a document preparation system that allows you to create professional-looking documents with high-quality typesetting.

## Features

- The resume is based on the **resume.cls** class file, which defines the layout and style of the document.
- The resume content is written in the **resume.tex** file, which contains the personal information, education, work experience, skills, and other sections.
- The resume can be compiled into a PDF file using the **pdflatex** command or any other LaTeX compiler.

## How to use

- To see live previews in VS Code install [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) extension. See the [wiki](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install) for the requirements to install the extension.
- You can clone this repository using the following command:

```bash
git clone https://github.com/pinnheads/latex-resume.git
```

- You can edit the **resume.tex** file to customize your resume content. You can also modify the **resume.cls** file if you want to change the appearance of your resume.
- You can compile your resume into a PDF file using the following command:

```bash
pdflatex resume.tex
```

- You can view your resume PDF file using any PDF viewer.
