using TestItems

@testitem "readpuzzle IO" begin
    using AOC.DataProcessing: readpuzzle
    using Base: IOBuffer
    lines_in = ["a,b,c","1,2,3"]
    data = join(lines_in, "\n")
    f = IOBuffer(data)
    lines = readpuzzle(f)
    @test lines_in == lines
end

@testitem "readpuzzle File" begin
    using AOC.DataProcessing: readpuzzle
    using AOC.Solvers: Path
    test_file = Path("$(@__DIR__)/assets/test_DataProcessing.txt")
    lines = readpuzzle(test_file)
    @test ["1,2,3","4,5,6"] == lines
end

@testitem "inputToData IO" begin
    using AOC.DataProcessing: inputToData
    using Base: IOBuffer
    lines_in = ["a,b,c","1,2,3"]
    data = join(lines_in, "\n")
    f = IOBuffer(data)
    res = inputToData(f)
    @test res == Data(lines_in)
end

@testitem "inputToData File" begin
    using AOC.DataProcessing: inputToData
    using AOC.Solvers: Path
    testfile = Path("$(@__DIR__)/assets/test_DataProcessing.txt")
    res = inputToData(testfile)
    @test res ==  Data(["1,2,3","4,5,6"])
end