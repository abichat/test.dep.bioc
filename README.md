
<!-- README.md is generated from README.Rmd. Please edit that file -->

# test.dep.bioc

The goal of **test.dep.bioc** is to test installation of Bioconductor
dependencies with GitHub Actions.

## Installation

    remotes::install_github("abichat/test.dep.bioc")

## Configurations tested

### With `limma` (no recursive bioconductor dependencies)

**No Remotes field**

- Pass GitHub Actions.

- Can’t be installed with `install_github()`:

<!-- -->

    dependency ‘limma’ is not available for package ‘test.dep.bioc’

**Remotes with `bioc::release/limma` style**

- GitHub Action failed:

<!-- -->

    Error: 
      ! error in pak subprocess
      Caused by error: 
      ! Could not solve package dependencies:
      * deps::.: ! pkgdepends resolution error for deps::..
      Caused by error: 
      ! Cannot determine package name for 1 package: "bioc::release/limma".
      ℹ Maybe you need to add a `<packagename>=` prefix?

- Can be installed with `install_github()`.

**Remotes with `bioc::limma` style**

- Pass GitHub Actions.

- Can be installed with `install_github()`.

### With `affy` (recursive bioconductor dependency on `Biobase`)

**No Remotes field**

- Pass GitHub Actions.

- Can’t be installed with `install_github()`:

<!-- -->

    dependencies ‘affy’, ‘limma’ are not available for package ‘test.dep.bioc’

**Remotes with `bioc::release/limma` style**

- GitHub Action failed:

<!-- -->

    Error: 
      ! error in pak subprocess
      Caused by error: 
      ! Could not solve package dependencies:
      * deps::.: ! pkgdepends resolution error for deps::..
      Caused by error: 
      ! Cannot determine package names for 2 packages: "bioc::release/affy" and
      "bioc::release/limma".
      ℹ Maybe you need to add a `<packagename>=` prefix?

- Can be installed with `install_github()`.

**Remotes with `bioc::limma` style**

- Pass GitHub Actions.

- Can be installed with `install_github()`.

### With `affy` (recursive bioconductor dependency on `Biobase`) and `Biobase`

**All Bioconductor Imports in Remotes with `bioc::limma` style**

    Remotes:
        bioc::affy,
        bioc::Biobase,
        bioc::limma

- GitHub Action failed:

<!-- -->

    Error: 
      ! error in pak subprocess
      Caused by error: 
      ! Could not solve package dependencies:
      * deps::.: Can't install dependency bioc::affy
      * bioc::affy: Can't install dependency Biobase (>= 2.5.5)

- Can be installed with `install_github()`.

**Only “terminal Imports Bioconductor dependencies” in Remotes with
`bioc::limma` style**

    Remotes:
        bioc::affy,
        bioc::limma

- Pass GitHub Actions.

- Can be installed with `install_github()`.
