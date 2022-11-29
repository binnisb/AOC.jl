module Solvers
export solve

using ..Common: Path, Data
using ..DataProcessing: inputToData, readpuzzle

function solve(path::Path; fFunc=readpuzzle, dFunc=identity, sFunc=solveproblem)
    inputToData(path, fFunc, dFunc) |> data -> solve(data; sFunc=sFunc) 
end

function solve(data::Data; sFunc=solveproblem)
    sFunc(data.data)
end

function solveproblem(data)
    return data
end

end