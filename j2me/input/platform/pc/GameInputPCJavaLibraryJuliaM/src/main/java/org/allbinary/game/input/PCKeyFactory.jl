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
    keyEventWrapper::Any
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
    this.keyEventWrapper = nothing
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
    this.keyEventWrapper = AllBinary.getInstance(ABKeyEventWrapper)
    this.UNKNOWN = newPCGameKey(this.keyEventWrapper.VK_UNDEFINED, "UNKNOWN")
    this.ENTER = newPCGameKey(Int32(5), "Enter")
    this._A = newPCGameKey(this.keyEventWrapper.VK_A, "A")
    this._B = newPCGameKey(this.keyEventWrapper.VK_B, "B")
    this._C = newPCGameKey(this.keyEventWrapper.VK_C, "C")
    this._D = newPCGameKey(this.keyEventWrapper.VK_D, "D")
    this._E = newPCGameKey(this.keyEventWrapper.VK_E, "E")
    this._F = newPCGameKey(this.keyEventWrapper.VK_F, "F")
    this._G = newPCGameKey(this.keyEventWrapper.VK_G, "G")
    this._H = newPCGameKey(this.keyEventWrapper.VK_H, "H")
    this._I = newPCGameKey(this.keyEventWrapper.VK_I, "I")
    this._J = newPCGameKey(this.keyEventWrapper.VK_J, "J")
    this._K = newPCGameKey(this.keyEventWrapper.VK_K, "K")
    this._L = newPCGameKey(this.keyEventWrapper.VK_L, "L")
    this._M = newPCGameKey(this.keyEventWrapper.VK_M, "M")
    this._N = newPCGameKey(this.keyEventWrapper.VK_N, "N")
    this._O = newPCGameKey(this.keyEventWrapper.VK_O, "O")
    this._P = newPCGameKey(this.keyEventWrapper.VK_P, "P")
    this._Q = newPCGameKey(this.keyEventWrapper.VK_Q, "Q")
    this._R = newPCGameKey(this.keyEventWrapper.VK_R, "R")
    this._S = newPCGameKey(this.keyEventWrapper.VK_S, "S")
    this._T = newPCGameKey(this.keyEventWrapper.VK_T, "T")
    this._U = newPCGameKey(this.keyEventWrapper.VK_U, "U")
    this._V = newPCGameKey(this.keyEventWrapper.VK_V, "V")
    this._W = newPCGameKey(this.keyEventWrapper.VK_W, "W")
    this._X = newPCGameKey(this.keyEventWrapper.VK_X, "X")
    this._Y = newPCGameKey(this.keyEventWrapper.VK_Y, "Y")
    this._Z = newPCGameKey(this.keyEventWrapper.VK_Z, "Z")
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
    this.ZERO = newPCGameKey(this.keyEventWrapper.VK_0, AllBinary.getInstance(CommonPhoneStrings).ZERO)
    this.ONE = newPCGameKey(this.keyEventWrapper.VK_1, AllBinary.getInstance(CommonPhoneStrings).ONE)
    this.TWO = newPCGameKey(this.keyEventWrapper.VK_2, AllBinary.getInstance(CommonPhoneStrings).TWO)
    this.THREE = newPCGameKey(this.keyEventWrapper.VK_3, AllBinary.getInstance(CommonPhoneStrings).THREE)
    this.FOUR = newPCGameKey(this.keyEventWrapper.VK_4, AllBinary.getInstance(CommonPhoneStrings).FOUR)
    this.FIVE = newPCGameKey(this.keyEventWrapper.VK_5, AllBinary.getInstance(CommonPhoneStrings).FIVE)
    this.SIX = newPCGameKey(this.keyEventWrapper.VK_6, AllBinary.getInstance(CommonPhoneStrings).SIX)
    this.SEVEN = newPCGameKey(this.keyEventWrapper.VK_7, AllBinary.getInstance(CommonPhoneStrings).SEVEN)
    this.EIGHT = newPCGameKey(this.keyEventWrapper.VK_8, AllBinary.getInstance(CommonPhoneStrings).EIGHT)
    this.NINE = newPCGameKey(this.keyEventWrapper.VK_9, AllBinary.getInstance(CommonPhoneStrings).NINE)
    this.DPAD_UP = newPCGameKey(this.keyEventWrapper.VK_UP, AllBinary.getInstance(CommonPhoneStrings).UP)
    this.DPAD_DOWN = newPCGameKey(this.keyEventWrapper.VK_DOWN, AllBinary.getInstance(CommonPhoneStrings).DOWN)
    this.DPAD_LEFT = newPCGameKey(this.keyEventWrapper.VK_LEFT, AllBinary.getInstance(CommonPhoneStrings).LEFT)
    this.DPAD_RIGHT = newPCGameKey(this.keyEventWrapper.VK_RIGHT, AllBinary.getInstance(CommonPhoneStrings).RIGHT)
    this.DPAD_UP2 = this.DPAD_UP
    this.DPAD_DOWN2 = this.DPAD_DOWN
    this.DPAD_LEFT2 = this.DPAD_LEFT
    this.DPAD_RIGHT2 = this.DPAD_RIGHT
    this.COMMA = newPCGameKey(this.keyEventWrapper.VK_COMMA, "COMMA")
    this.SPACE = newPCGameKey(this.keyEventWrapper.VK_SPACE, "SPACE")
    this.DEL = newPCGameKey(this.keyEventWrapper.VK_DELETE, "DEL")
    this.STAR = newPCGameKey(Int32(42), AllBinary.getInstance(CommonPhoneStrings).STAR)
    this.QUESTION = newPCGameKey(Int32(47), "?")
    this.PERIOD = newPCGameKey(this.keyEventWrapper.VK_PERIOD, AllBinary.getInstance(CommonSeps).PERIOD)
    this.ESCAPE = newPCGameKey(this.keyEventWrapper.VK_ESCAPE, "Esc")
    this.BACK_SPACE = newPCGameKey(this.keyEventWrapper.VK_BACK_SPACE, "Backspace")
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

