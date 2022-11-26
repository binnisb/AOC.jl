module Solvers
    export solve, FullInput, TestInput

    abstract type Puzzle end
    abstract type FullInput <: Puzzle end
    abstract type TestInput <: Puzzle end

    readpuzzle(path::String) = begin
        open(path) do f
            readlines(f)
        end
    end
    readpuzzle(::Type{FullInput}, num::Int) ="$(@__DIR__)/../data/puzzle/$(num).txt" |> readpuzzle
    readpuzzle(::Type{TestInput}, num::Int) = "$(@__DIR__)/../data/puzzle_test/$(num).txt" |> readpuzzle

    solve(::Type{T}, problem::Int, part::Int, dataIn) where T <: Puzzle = 
        solve(T, Val(problem), Val(part), dataIn)

    solve(::Type{T}, ::Val{N}, ::Val{M}, dataIn) where T <: Puzzle where {N,M} = 
        readpuzzle(T, N) |> solveproblem(Val(N),Val(M), dataIn)

    function solveproblem(::Val{1}, ::Val{1}, dataIn)
        return dataIn
    end
end