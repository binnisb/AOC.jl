module DataProcessing
export inputToData
using ..Common: Path, Data

function inputToData(path::Path, fFunc=readpuzzle, dFunc=identity)::Data
    path |> fFunc |> dFunc |> Data
end
function inputToData(stream::IO, fFunc=readpuzzle, dFunc=identity)::Data
    stream |> fFunc |> dFunc |> Data
end

readpuzzle(stream::IO) = readlines(stream)
readpuzzle(path::Path) = begin
    open(path.filePath) do f
        readpuzzle(f)
    end
end

end