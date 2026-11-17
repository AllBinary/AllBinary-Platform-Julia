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
# package org.allbinary.game.combat.damage

# extends DamageFloaters: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PtsDamageFloaters <: JObject
    basicSetColorUtil::Any
    layerInterface::Any
    lastDamage::Any
    lastDamageString::Any
    lastDamageStringSizeArray::Any
    circularIndexUtil::Any
    primitiveLongUtil::Any
    myRandomFactory::Any
    PtsDamageFloaters() = new()
end

const PtsDamageFloaters_basicColorArrayIndexerValue = Ref{Any}(nothing)
const PtsDamageFloaters_basicColorArrayIndexerSet = Ref(false)
function staticGet_basicColorArrayIndexer(::Type{PtsDamageFloaters})
    if !PtsDamageFloaters_basicColorArrayIndexerSet[]
        PtsDamageFloaters_basicColorArrayIndexerSet[] = true
        PtsDamageFloaters_basicColorArrayIndexerValue[] = newBasicColorArrayIndexer(Any[AllBinary.getInstance(BasicColorFactory).WHITE, AllBinary.getInstance(BasicColorFactory).RED, AllBinary.getInstance(BasicColorFactory).YELLOW, AllBinary.getInstance(BasicColorFactory).BLUE])
    end
    PtsDamageFloaters_basicColorArrayIndexerValue[]
end
function staticSet_basicColorArrayIndexer(::Type{PtsDamageFloaters}, value)
    PtsDamageFloaters_basicColorArrayIndexerSet[] = true
    PtsDamageFloaters_basicColorArrayIndexerValue[] = value
end

function initFieldsPtsDamageFloaters(this::PtsDamageFloaters)
    this.basicSetColorUtil = nothing
    this.layerInterface = nothing
    this.lastDamage = nothing
    this.lastDamageString = nothing
    this.lastDamageStringSizeArray = nothing
    this.circularIndexUtil = nothing
    this.primitiveLongUtil = nothing
    this.myRandomFactory = nothing
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    
    this.lastDamage = jNewArray(Int32, Int32(5), Int32(0))
    this.lastDamageString = jNewArrayOf(Vector{UInt16}, Int32(5), () -> jNewArray(UInt16, Int32(0), UInt16(0)))
    this.lastDamageStringSizeArray = jNewArray(Int32, Int32(5), Int32(0))
    this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(5))
    
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    nothing
end


function initPtsDamageFloaters(this::PtsDamageFloaters, layerInterface)
        initDamageFloaters(this)
        initFieldsPtsDamageFloaters(this)
        this.primitiveLongUtil = AllBinary.createPowerOfTen(PrimitiveLongUtil, Int32(100000))
        this.layerInterface = layerInterface
        local CHAR_ARRAY = AllBinary.getZeroCharArray(AllBinary.getInstance(CharArrayFactory))
        let
            local index::Int32 = Int32(Base.length(this.lastDamageString)) - Int32(1)
            while index >= Int32(0)
            try
            this.lastDamageString[index + 1] = CHAR_ARRAY
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

function newPtsDamageFloaters(layerInterface)
    this = PtsDamageFloaters()
    initPtsDamageFloaters(this, layerInterface)
    this
end


function add(this::PtsDamageFloaters, damage)
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        this.lastDamage[index + 1] = damage
        this.lastDamageString[index + 1] = AllBinary.getCharArray(this.primitiveLongUtil, this.lastDamage[index + 1])
        this.lastDamageStringSizeArray[index + 1] = AllBinary.getCurrentTotalDigits(this.primitiveLongUtil)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function paint(this::PtsDamageFloaters, graphics)
        local viewPosition = AllBinary.getViewPosition(this.layerInterface)
        local x::Int32 = AllBinary.getX(viewPosition)
        local y::Int32 = AllBinary.getY(viewPosition)
        let
            local index::Int32 = Int32(Base.length(this.lastDamage)) - Int32(1)
            while index >= Int32(0)
            try
            if this.lastDamage[index + 1] != Int32(0)
                local delta::Int32 = Int32(10) * (index + Int32(2))
                AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.get(staticGet_basicColorArrayIndexer(PtsDamageFloaters)))
                AllBinary.drawChars(graphics, this.lastDamageString[index + 1], Int32(0), this.lastDamageStringSizeArray[index + 1], x - AllBinary.getNextInt(this.myRandomFactory, delta), y - delta, Int32(0))
                AllBinary.next(staticGet_basicColorArrayIndexer(PtsDamageFloaters))
            end
            this.lastDamage[index + 1] = Int32(0)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

