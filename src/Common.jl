module Common
export Path, Data

struct Path
    filePath::String
end
abstract type Comparable end
import Base.==
function ==(a::T, b::T) where T <: Comparable
    f = fieldnames(T)
    getfield.(Ref(a),f) == getfield.(Ref(b),f)
end
struct Data <: Comparable
    data
end
    
end