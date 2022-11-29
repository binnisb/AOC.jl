# AOC [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://binnisb.github.io/AOC.jl/stable/) [![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://binnisb.github.io/AOC.jl/dev/) [![Build Status](https://github.com/binnisb/AOC.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/binnisb/AOC.jl/actions/workflows/CI.yml?query=branch%3Amain) [![Coverage](https://codecov.io/gh/binnisb/AOC.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/binnisb/AOC.jl)

## Citing

See [`CITATION.bib`](CITATION.bib) for the relevant reference(s).

## Adding the module in src
In Julia repl in root in DrWatson project and pkg
```
julia> pwd()
"/home/binni/projects/AdventOfCode2022"

(AdventOfCode2022) pkg> dev src/AOC/
   Resolving package versions...
    Updating `~/projects/AdventOfCode2022/Project.toml`
  [b5010307] + AOC v0.1.0 `src/AOC`
    Updating `~/projects/AdventOfCode2022/Manifest.toml`
  [b5010307] + AOC v0.1.0 `src/AOC`
```
Now I can
```julia
using AOC
```