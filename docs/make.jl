using AdventOfCode2022
using Documenter

DocMeta.setdocmeta!(AdventOfCode2022, :DocTestSetup, :(using AdventOfCode2022); recursive=true)

makedocs(;
    modules=[AdventOfCode2022],
    authors="Brynjar Smári Bjarnason <binni@binnisb.com> and contributors",
    repo="https://github.com/binnisb/AdventOfCode2022.jl/blob/{commit}{path}#{line}",
    sitename="AdventOfCode2022.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://binnisb.github.io/AdventOfCode2022.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/binnisb/AdventOfCode2022.jl",
    devbranch="main",
)
