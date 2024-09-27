# Human template space transforms

This repository provides pairwise human template space transformation assets.
It's built on top of [ANTs](https://github.com/ANTsX/ANTs) (for transformation)
and [templateflow](https://github.com/templateflow/templateflow) (for access to
high-quality templates) which is in turn dependent on
[DataLad](https://github.com/datalad/datalad) (for data management and access).

The transformation files are inside the `xfms` directory and are sensibly named.

## Quickstart for replicating or generating new transforms

Make sure you have ANTs and DataLad installed, then proceed to get the templateflow
super-dataset in the repository root:

```sh
$ datalad install -r ///templateflow
```

After that, you can selectively get the T1w files for the template spaces:

```sh
$ cd templateflow
$ datalad get -r tpl-<template-space-of-your-choice>/<T1w.nii.gz>
```

Make sure to get a pair of them. Here's an example:

```sh
# Get MNI152NLin2009cAsym template
$ datalad get tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz
# Get MNI152NLin6Asym template
$ datalad get tpl-MNI152NLin6Asym/tpl-MNI152NLin6Asym_res-01_T1w.nii.gz
```

## Usage

```sh

```
