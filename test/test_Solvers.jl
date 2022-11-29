using TestItems

@testitem "solveproblem 1" begin
    using AOC2022.Solvers: solveproblem
    @test solveproblem("asdf") == "asdf"
end

@testitem "Solve 1 path" begin
    res = solve(Path("$(@__DIR__)/assets/test_DataProcessing.txt"))
    @test res == ["1,2,3","4,5,6"]
end

@testitem "Solve 1 data" begin
    res = solve(Data("stuff"))
    @test res == "stuff"
end

@testitem "Solve 1 different method" begin
    doublefunc(x) = x*2
    res = solve(Data(10); sFunc=x -> x*2)
    res2 = solve(Data(10); sFunc=doublefunc)
    @test res == 20
    @test res2 == 20
end