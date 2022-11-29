using AOC
using Documenter

DocMeta.setdocmeta!(AOC, :DocTestSetup, :(using AOC); recursive=true)

makedocs(;
    modules=[AOC],
    authors="Brynjar Smári Bjarnason <binni@binnisb.com> and contributors",
    repo="https://github.com/binnisb/AOC.jl/blob/{commit}{path}#{line}",
    sitename="AOC.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://binnisb.github.io/AOC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/binnisb/AOC.jl",
    devbranch="main",
)
