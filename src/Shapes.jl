using LinearAlgebra

abstract type AbstractShape end

function area(sh::AbstractShape)
  throw("Not Implemented area")
end

struct Triangle{T} <: AbstractShape
  p1::Vector{T}
  p2::Vector{T}
  p3::Vector{T}
end

function area(tr::Triangle)
  b=p2-p1
  l=norm(b)
  bnorm=b/l
  h=bnorm'*(p3-p1)
  return abs(l*h/2)
end
