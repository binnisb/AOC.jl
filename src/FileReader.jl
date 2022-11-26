module FileReader
    export readaocfile

    function readaocfile(f)
        lines = readlines(f)
        return lines
    end
end