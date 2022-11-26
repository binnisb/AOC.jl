using AOC2022
using Documenter

DocMeta.setdocmeta!(AOC2022, :DocTestSetup, :(using AOC2022); recursive=true)

makedocs(;
    modules=[AOC2022],
    authors="Brynjar Smári Bjarnason <binni@binnisb.com> and contributors",
    repo="https://github.com/binnisb/AOC2022.jl/blob/{commit}{path}#{line}",
    sitename="AOC2022.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://binnisb.github.io/AOC2022.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/binnisb/AOC2022.jl",
    devbranch="main",
)
