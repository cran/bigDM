# bigDM

<!-- badges: start -->
[![R-CMD-check](https://github.com/spatialstatisticsupna/bigDM/workflows/R-CMD-check/badge.svg)](https://github.com/spatialstatisticsupna/bigDM/actions)
<!-- badges: end -->


Scalable Bayesian disease mapping models for high-dimensional data using a divide and conquer approach.

## Table of contents

- [The package](#the-package)
- [Installation](#installation)
- [Basic Use](#basic-use)
- [Updates](#updates)
- [Copyright and license](#copyright-and-license)


# The package
This package implements several (scalable) spatial and spatio-temporal generalised linear mixed models for high-dimensional areal count data in a fully Bayesian setting using the integrated nested Laplace approximation (INLA) technique.

Below, there is a list with a brief overview of all package functions:

* ```add_neighbour``` Adds isolated areas (polygons) to its nearest neighbour.
* ```CAR_INLA``` Fits several spatial CAR models for high-dimensional count data.
* ```clustering_partition``` Obtain a spatial partition using the DBSC algorithm.
* ```connect_subgraphs``` Merges disjoint connected subgraphs.
* ```divide_carto``` Divides the spatial domain into subregions.
* ```mergeINLA``` Merges inla objects for partition models.
* ```random_partition``` Defines a random partition of the spatial domain based on a regular grid.
* ```STCAR_INLA``` Fits several spatio-temporal CAR models for high-dimensional count data.


# Installation

[Installing Rtools40 for Windows](https://cran.r-project.org/bin/windows/Rtools/)

R version 4.0.0 and newer for Windows requires the new Rtools40 to build R packages with C/C++/Fortran code from source.


## Install from CRAN
Not in CRAN

## Install from GitHub
```
# Install devtools package from CRAN repository
install.packages("devtools")

# Load devtools library
library(devtools)

# Install the R-INLA package
install.packages("INLA", repos=c(getOption("repos"), INLA="https://inla.r-inla-download.org/R/stable"), dep=TRUE)

# In some Linux OS, it might be necessary to first install the following packages
install.packages(c("cpp11","proxy","progress","tzdb","vroom"))

# Install bigDM from GitHub repositoy
install_github("spatialstatisticsupna/bigDM")
```
**IMPORTANT NOTE: The latest stable version of INLA (22.11.22) must be installed for the correct use of the bigDM package.**


# Basic Use
See the following vignettes for further details and examples using this package:
* [bigDM: fitting spatial models](https://emi-sstcdapp.unavarra.es/bigDM/bigDM-1-fitting-spatial-models.html)
* [bigDM: parallel and distributed modelling](https://emi-sstcdapp.unavarra.es/bigDM/bigDM-2-parallel-and-distributed-modelling.html)
* [bigDM: fitting spatio-temporal models](https://emi-sstcdapp.unavarra.es/bigDM/bigDM-3-fitting-spatio-temporal-models.html)

When using this package, please cite the following papers:

[Orozco-Acosta, E., Adin, A., and Ugarte, M.D. (2021). Scalable Bayesian modeling for smoothing disease risks in large spatial data sets using INLA. _Spatial Statistics_, __41__, 100496.](https://doi.org/10.1016/j.spasta.2021.100496)

[Orozco-Acosta, E., Adin, A., and Ugarte, M.D. (2022). Parallel and distributed Bayesian modelling for analysing high-dimensional spatio-temporal count data. _arXiv preprint_.](https://arxiv.org/abs/2201.08323)

# Updates

```
news(package="bigDM")
```

__Changes in version 0.4.1__ (2022 Feb 01)
* small bugs fixed
* version submmited to CRAN

__Changes in version 0.4.0__ (2022 Jan 21)
* new `STCAR_INLA()` function to fit scalable spatio-temporal CAR models

__Changes in version 0.3.2__ (2021 Nov 05)
* `X` and `confounding` arguments included to `CAR_INLA()` function
* new function included: `clustering_partition()`

__Changes in version 0.3.1__ (2021 May 03)
* `W` argument included to `CAR_INLA()` function

__Changes in version 0.3.0__ (2021 Apr 19)
* parallel and distributed computation strategies when fitting inla models with the `CAR_INLA()` function

__Changes in version 0.2.2__ (2021 Mar 12)
* new arguments included to `random_partition()` function

__Changes in version 0.2.1__ (2021 Feb 25)
* `Carto_SpainMUN` data changed

__Changes in version 0.2.0__ (2020 Oct 01)
* speedup improvements in `mergeINLA()` function
* small bugs fixed


# Acknowledgments
This work has been supported by Project MTM2017-82553-R (AEI/FEDER, UE) and Project PID2020-113125RB-I00/MCIN/AEI/10.13039/501100011033. It has also been partially funded by the Public University of Navarra (project PJUPNA2001) and by la Caixa Foundation (ID 1000010434), Caja Navarra Foundation and UNED Pamplona, under agreement LCF/PR/PR15/51100007 (project REF P/13/20).

![plot](https://github.com/spatialstatisticsupna/bigDM/blob/master/micin-aei.jpg)