using AOC2022
using TestItems
using Base: IOBuffer

@testitem "readaocfile" begin
    lines_in = ["a,b,c","1,2,3"]
    data = join(lines_in, "\n")
    f = IOBuffer(data)
    lines = AOC2022.FileReader.readaocfile(f)
    @test lines_in == lines
end
