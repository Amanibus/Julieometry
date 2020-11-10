import Pkg
Pkg.add(["Test", "LinearAlgebra"])
using Test, LinearAlgebra
include("../src/Shapes.jl")

tr=Triangle([0.0, 0.0], [0.0, 1.0], [1.0, 1.0])
@test area(tf) ≈ 0.5
