
# 📦 Project Setup Guide (with `renv`)

This guide explains how to install and run the R project using [`renv`](https://rstudio.github.io/renv/) for dependency management. Please follow the steps below.

## ✅ Prerequisites

- [R](https://cran.r-project.org/) (version ≥ 4.0.0 recommended)
- [RStudio](https://www.rstudio.com/products/rstudio/download/)
- Internet connection (to install dependencies)

## 📁 Cloning the Project

First, clone the repository to your local machine:

```bash
git clone git@github.com:anadiedrichs/contaminantes.git
cd contaminantes
```

## 🔄 Restore the Project Environment

This project uses [`renv`](https://rstudio.github.io/renv/) to manage dependencies. When you open the project in RStudio for the first time, follow these steps:

1. Open `first_revision.Rproj` in RStudio.
2. Run the following in the **Console** to restore the exact package versions used:

```r
renv::restore()
```

This will read the `renv.lock` file and install all required packages.

> ⚠️ The first time you run `renv::restore()`, it may take several minutes to download and install packages.

#️ Running the Project

Once all dependencies are installed, you can run the file Quarto experiment.qmd.

# Update the project

- If you install new packages during development, remember to update the lockfile with:

```r
renv::snapshot()
```

