using TestItems

@testitem "TestPath" begin
    @test Path("p1").filePath == "p1"
end

@testitem "Test Data" begin
    @test Data("d1").data == "d1"
end

@testitem "Test compare data" begin
    d1 = Data(Data([1,2,"123",["1",2]]))
    d2 = Data(Data([1,2,"123",["1",2]]))
    @test d1 == d2
end