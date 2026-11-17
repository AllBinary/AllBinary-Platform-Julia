#=
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
=#
# Generated Code Do Not Modify
# package org.allbinary.game.input

mutable struct PCKeyFactory <: JObject
    UNKNOWN::Any
    ENTER::Any
    _A::Any
    _B::Any
    _C::Any
    _D::Any
    _E::Any
    _F::Any
    _G::Any
    _H::Any
    _I::Any
    _J::Any
    _K::Any
    _L::Any
    _M::Any
    _N::Any
    _O::Any
    _P::Any
    _Q::Any
    _R::Any
    _S::Any
    _T::Any
    _U::Any
    _V::Any
    _W::Any
    _X::Any
    _Y::Any
    _Z::Any
    a::Any
    b::Any
    c::Any
    d::Any
    e::Any
    f::Any
    g::Any
    h::Any
    i::Any
    j::Any
    k::Any
    l::Any
    m::Any
    n::Any
    o::Any
    p::Any
    q::Any
    r::Any
    s::Any
    t::Any
    u::Any
    v::Any
    w::Any
    x::Any
    y::Any
    z::Any
    ZERO::Any
    ONE::Any
    TWO::Any
    THREE::Any
    FOUR::Any
    FIVE::Any
    SIX::Any
    SEVEN::Any
    EIGHT::Any
    NINE::Any
    DPAD_UP::Any
    DPAD_DOWN::Any
    DPAD_LEFT::Any
    DPAD_RIGHT::Any
    DPAD_UP2::Any
    DPAD_DOWN2::Any
    DPAD_LEFT2::Any
    DPAD_RIGHT2::Any
    COMMA::Any
    SPACE::Any
    DEL::Any
    STAR::Any
    QUESTION::Any
    PERIOD::Any
    ESCAPE::Any
    BACK_SPACE::Any
    PCKeyFactory() = new()
end

const PCKeyFactory_SINGLETONValue = Ref{Any}(nothing)
const PCKeyFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PCKeyFactory})
    if !PCKeyFactory_SINGLETONSet[]
        PCKeyFactory_SINGLETONSet[] = true
        PCKeyFactory_SINGLETONValue[] = newPCKeyFactory()
    end
    PCKeyFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PCKeyFactory}, value)
    PCKeyFactory_SINGLETONSet[] = true
    PCKeyFactory_SINGLETONValue[] = value
end

function initFieldsPCKeyFactory(this::PCKeyFactory)
    this.UNKNOWN = nothing
    this.ENTER = nothing
    this._A = nothing
    this._B = nothing
    this._C = nothing
    this._D = nothing
    this._E = nothing
    this._F = nothing
    this._G = nothing
    this._H = nothing
    this._I = nothing
    this._J = nothing
    this._K = nothing
    this._L = nothing
    this._M = nothing
    this._N = nothing
    this._O = nothing
    this._P = nothing
    this._Q = nothing
    this._R = nothing
    this._S = nothing
    this._T = nothing
    this._U = nothing
    this._V = nothing
    this._W = nothing
    this._X = nothing
    this._Y = nothing
    this._Z = nothing
    this.a = nothing
    this.b = nothing
    this.c = nothing
    this.d = nothing
    this.e = nothing
    this.f = nothing
    this.g = nothing
    this.h = nothing
    this.i = nothing
    this.j = nothing
    this.k = nothing
    this.l = nothing
    this.m = nothing
    this.n = nothing
    this.o = nothing
    this.p = nothing
    this.q = nothing
    this.r = nothing
    this.s = nothing
    this.t = nothing
    this.u = nothing
    this.v = nothing
    this.w = nothing
    this.x = nothing
    this.y = nothing
    this.z = nothing
    this.ZERO = nothing
    this.ONE = nothing
    this.TWO = nothing
    this.THREE = nothing
    this.FOUR = nothing
    this.FIVE = nothing
    this.SIX = nothing
    this.SEVEN = nothing
    this.EIGHT = nothing
    this.NINE = nothing
    this.DPAD_UP = nothing
    this.DPAD_DOWN = nothing
    this.DPAD_LEFT = nothing
    this.DPAD_RIGHT = nothing
    this.DPAD_UP2 = nothing
    this.DPAD_DOWN2 = nothing
    this.DPAD_LEFT2 = nothing
    this.DPAD_RIGHT2 = nothing
    this.COMMA = nothing
    this.SPACE = nothing
    this.DEL = nothing
    this.STAR = nothing
    this.QUESTION = nothing
    this.PERIOD = nothing
    this.ESCAPE = nothing
    this.BACK_SPACE = nothing
    this.UNKNOWN = newPCGameKey(Int32(254), "UNKNOWN")
    this.ENTER = newPCGameKey(Int32(13), "Enter")
    this._A = newPCGameKey(Int32(65), "A")
    this._B = newPCGameKey(Int32(66), "B")
    this._C = newPCGameKey(Int32(67), "C")
    this._D = newPCGameKey(Int32(68), "D")
    this._E = newPCGameKey(Int32(69), "E")
    this._F = newPCGameKey(Int32(70), "F")
    this._G = newPCGameKey(Int32(71), "G")
    this._H = newPCGameKey(Int32(72), "H")
    this._I = newPCGameKey(Int32(73), "I")
    this._J = newPCGameKey(Int32(74), "J")
    this._K = newPCGameKey(Int32(75), "K")
    this._L = newPCGameKey(Int32(76), "L")
    this._M = newPCGameKey(Int32(77), "M")
    this._N = newPCGameKey(Int32(78), "N")
    this._O = newPCGameKey(Int32(79), "O")
    this._P = newPCGameKey(Int32(80), "P")
    this._Q = newPCGameKey(Int32(81), "Q")
    this._R = newPCGameKey(Int32(82), "R")
    this._S = newPCGameKey(Int32(83), "S")
    this._T = newPCGameKey(Int32(84), "T")
    this._U = newPCGameKey(Int32(85), "U")
    this._V = newPCGameKey(Int32(86), "V")
    this._W = newPCGameKey(Int32(87), "W")
    this._X = newPCGameKey(Int32(88), "X")
    this._Y = newPCGameKey(Int32(89), "Y")
    this._Z = newPCGameKey(Int32(90), "Z")
    this.a = newPCGameKey(Int32(97), "a")
    this.b = newPCGameKey(Int32(98), "b")
    this.c = newPCGameKey(Int32(99), "c")
    this.d = newPCGameKey(Int32(100), "d")
    this.e = newPCGameKey(Int32(101), "e")
    this.f = newPCGameKey(Int32(102), "f")
    this.g = newPCGameKey(Int32(103), "g")
    this.h = newPCGameKey(Int32(104), "h")
    this.i = newPCGameKey(Int32(105), "i")
    this.j = newPCGameKey(Int32(106), "j")
    this.k = newPCGameKey(Int32(107), "k")
    this.l = newPCGameKey(Int32(108), "l")
    this.m = newPCGameKey(Int32(109), "m")
    this.n = newPCGameKey(Int32(110), "n")
    this.o = newPCGameKey(Int32(111), "o")
    this.p = newPCGameKey(Int32(112), "p")
    this.q = newPCGameKey(Int32(113), "q")
    this.r = newPCGameKey(Int32(114), "r")
    this.s = newPCGameKey(Int32(115), "s")
    this.t = newPCGameKey(Int32(116), "t")
    this.u = newPCGameKey(Int32(117), "u")
    this.v = newPCGameKey(Int32(118), "v")
    this.w = newPCGameKey(Int32(119), "w")
    this.x = newPCGameKey(Int32(120), AllBinary.getInstance(PositionStrings).X)
    this.y = newPCGameKey(Int32(121), AllBinary.getInstance(PositionStrings).Y)
    this.z = newPCGameKey(Int32(122), "z")
    this.ZERO = newPCGameKey(Int32(48), AllBinary.getInstance(CommonPhoneStrings).ZERO)
    this.ONE = newPCGameKey(Int32(49), AllBinary.getInstance(CommonPhoneStrings).ONE)
    this.TWO = newPCGameKey(Int32(50), AllBinary.getInstance(CommonPhoneStrings).TWO)
    this.THREE = newPCGameKey(Int32(51), AllBinary.getInstance(CommonPhoneStrings).THREE)
    this.FOUR = newPCGameKey(Int32(52), AllBinary.getInstance(CommonPhoneStrings).FOUR)
    this.FIVE = newPCGameKey(Int32(53), AllBinary.getInstance(CommonPhoneStrings).FIVE)
    this.SIX = newPCGameKey(Int32(54), AllBinary.getInstance(CommonPhoneStrings).SIX)
    this.SEVEN = newPCGameKey(Int32(55), AllBinary.getInstance(CommonPhoneStrings).SEVEN)
    this.EIGHT = newPCGameKey(Int32(56), AllBinary.getInstance(CommonPhoneStrings).EIGHT)
    this.NINE = newPCGameKey(Int32(57), AllBinary.getInstance(CommonPhoneStrings).NINE)
    this.DPAD_UP = newPCGameKey(Int32(38), AllBinary.getInstance(CommonPhoneStrings).UP)
    this.DPAD_DOWN = newPCGameKey(Int32(40), AllBinary.getInstance(CommonPhoneStrings).DOWN)
    this.DPAD_LEFT = newPCGameKey(Int32(37), AllBinary.getInstance(CommonPhoneStrings).LEFT)
    this.DPAD_RIGHT = newPCGameKey(Int32(39), AllBinary.getInstance(CommonPhoneStrings).RIGHT)
    this.DPAD_UP2 = this.DPAD_UP
    this.DPAD_DOWN2 = this.DPAD_DOWN
    this.DPAD_LEFT2 = this.DPAD_LEFT
    this.DPAD_RIGHT2 = this.DPAD_RIGHT
    this.COMMA = newPCGameKey(Int32(44), "COMMA")
    this.SPACE = newPCGameKey(Int32(32), "SPACE")
    this.DEL = newPCGameKey(Int32(46), "DEL")
    this.STAR = newPCGameKey(Int32(42), AllBinary.getInstance(CommonPhoneStrings).STAR)
    this.QUESTION = newPCGameKey(Int32(47), "?")
    this.PERIOD = newPCGameKey(Int32(46), AllBinary.getInstance(CommonSeps).PERIOD)
    this.ESCAPE = newPCGameKey(Int32(27), "Esc")
    this.BACK_SPACE = newPCGameKey(Int32(8), "Backspace")
    nothing
end

function initPCKeyFactory(this::PCKeyFactory)
    initFieldsPCKeyFactory(this)
end

function newPCKeyFactory()
    this = PCKeyFactory()
    initPCKeyFactory(this)
    this
end


function getInstance(::Type{PCKeyFactory})
        return staticGet_SINGLETON(PCKeyFactory)
end


function isSubmission(this::PCKeyFactory, input)
        if input === this.ENTER
            return true
        end
        return false
end


function isDelete(this::PCKeyFactory, input)
        if input === this.DEL
            return true
        end
        return false
end


function isBackSpace(this::PCKeyFactory, input)
        if input === this.BACK_SPACE
            return true
        end
        return false
end


function isUp(this::PCKeyFactory, input)
        if input === this.DPAD_UP || input === this.DPAD_UP2
            return true
        end
        return false
end


function isDown(this::PCKeyFactory, input)
        if input === this.DPAD_DOWN || input === this.DPAD_DOWN2
            return true
        end
        return false
end


function isLeft(this::PCKeyFactory, input)
        if input === this.DPAD_LEFT || input === this.DPAD_LEFT2
            return true
        end
        return false
end


function isRight(this::PCKeyFactory, input)
        if input === this.DPAD_RIGHT || input === this.DPAD_RIGHT2
            return true
        end
        return false
end


function isEnter(this::PCKeyFactory, input)
        if input === this.ENTER
            return true
        end
        return false
end

