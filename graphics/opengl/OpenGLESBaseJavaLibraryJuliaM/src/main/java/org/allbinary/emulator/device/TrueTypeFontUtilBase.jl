#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.emulator.device

mutable struct TrueTypeFontUtilBase <: JObject
    shortPattern::Any
    patternAsBytes::Any
    pattern::Any
    charArray::Any
    _characterWidth::Any
    characterArray::Any
    size::Int32
    lastCapIndex::Int32
    currentFont::Any
    scale::Int32
    CELLS_PER_ROW::Int32
    fontSize::Int32
    baseCharWidth::Int32
    cellSize::Int32
    textureSize::Int32
    actualCellsPerRow::Int32
    TrueTypeFontUtilBase() = new()
end


function initFieldsTrueTypeFontUtilBase(this::TrueTypeFontUtilBase)
    this.shortPattern = nothing
    this.patternAsBytes = nothing
    this.pattern = nothing
    this.charArray = nothing
    this._characterWidth = nothing
    this.characterArray = nothing
    this.size = Int32(0)
    this.lastCapIndex = Int32(0)
    this.currentFont = nothing
    this.scale = Int32(0)
    this.CELLS_PER_ROW = Int32(0)
    this.fontSize = Int32(0)
    this.baseCharWidth = Int32(0)
    this.cellSize = Int32(0)
    this.textureSize = Int32(0)
    this.actualCellsPerRow = Int32(0)
    
    this.patternAsBytes = Int8[Int32(32), Int32(48), Int32(49), Int32(50), Int32(51), Int32(52), Int32(53), Int32(54), Int32(55), Int32(56), Int32(57), Int32(65), Int32(66), Int32(32), Int32(32), Int32(32), Int32(67), Int32(68), Int32(69), Int32(70), Int32(71), Int32(72), Int32(73), Int32(74), Int32(75), Int32(76), Int32(77), Int32(78), Int32(79), Int32(32), Int32(32), Int32(32), Int32(80), Int32(81), Int32(82), Int32(83), Int32(84), Int32(85), Int32(86), Int32(87), Int32(88), Int32(89), Int32(90), Int32(97), Int32(98), Int32(32), Int32(32), Int32(32), Int32(99), Int32(100), Int32(101), Int32(102), Int32(103), Int32(104), Int32(105), Int32(106), Int32(107), Int32(108), Int32(109), Int32(110), Int32(111), Int32(32), Int32(32), Int32(32), Int32(112), Int32(113), Int32(114), Int32(115), Int32(116), Int32(117), Int32(118), Int32(119), Int32(120), Int32(121), Int32(122), Int32(46), Int32(63), Int32(32), Int32(32), Int32(32), Int32(33), Int32(36), Int32(37), Int32(96), ((-Int32(62)) % Int8), ((-Int32(84)) % Int8), ((-Int32(62)) % Int8), ((-Int32(84)) % Int8), Int32(34), ((-Int32(62)) % Int8), ((-Int32(93)) % Int8), ((-Int32(62)) % Int8), ((-Int32(93)) % Int8), Int32(94), Int32(38), Int32(42), Int32(40), Int32(32), Int32(32), Int32(32), Int32(41), Int32(95), Int32(43), Int32(45), Int32(61), Int32(91), Int32(93), Int32(123), Int32(125), Int32(59), Int32(39), Int32(35), Int32(58), Int32(32), Int32(32), Int32(32), Int32(64), Int32(126), Int32(44), Int32(47), Int32(60), Int32(62), Int32(92), Int32(124), ((-Int32(62)) % Int8), ((-Int32(82)) % Int8), ((-Int32(62)) % Int8), ((-Int32(82)) % Int8), ((-Int32(62)) % Int8), ((-Int32(87)) % Int8), ((-Int32(62)) % Int8), ((-Int32(87)) % Int8)]
    this.pattern = this.patternAsBytes
    this.charArray = Int16[Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x6f), Int32(0x50), Int32(0x56), Int32(0x6b), Int32(0x51), Int32(0x52), Int32(0x5a), Int32(0x6a), Int32(0x5c), Int32(0x60), Int32(0x5b), Int32(0x62), Int32(0x72), Int32(0x63), Int32(0x4b), Int32(0x73), Int32(0x1), Int32(0x2), Int32(0x3), Int32(0x4), Int32(0x5), Int32(0x6), Int32(0x7), Int32(0x8), Int32(0x9), Int32(0xa), Int32(0x6c), Int32(0x69), Int32(0x74), Int32(0x64), Int32(0x75), Int32(0x4c), Int32(0x70), Int32(0xb), Int32(0xc), Int32(0x10), Int32(0x11), Int32(0x12), Int32(0x13), Int32(0x14), Int32(0x15), Int32(0x16), Int32(0x17), Int32(0x18), Int32(0x19), Int32(0x1a), Int32(0x1b), Int32(0x1c), Int32(0x20), Int32(0x21), Int32(0x22), Int32(0x23), Int32(0x24), Int32(0x25), Int32(0x26), Int32(0x27), Int32(0x28), Int32(0x29), Int32(0x2a), Int32(0x65), Int32(0x76), Int32(0x66), Int32(0x59), Int32(0x61), Int32(0x53), Int32(0x2b), Int32(0x2c), Int32(0x30), Int32(0x31), Int32(0x32), Int32(0x33), Int32(0x34), Int32(0x35), Int32(0x36), Int32(0x37), Int32(0x38), Int32(0x39), Int32(0x3a), Int32(0x3b), Int32(0x3c), Int32(0x40), Int32(0x41), Int32(0x42), Int32(0x43), Int32(0x44), Int32(0x45), Int32(0x46), Int32(0x47), Int32(0x48), Int32(0x49), Int32(0x4a), Int32(0x67), Int32(0x77), Int32(0x68), Int32(0x71), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x58), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x7b), Int32(0x0), Int32(0x0), Int32(0x55), Int32(0x0), Int32(0x79), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0), Int32(0x0)]
    this._characterWidth = jNewArray(Int32, jLength(this.pattern), Int32(0))
    this.characterArray = jNewArray(UInt16, Int32(1), UInt16(0))
    this.size = jLength(this.pattern)
    this.lastCapIndex = jIndexOf(this.pattern, UInt16('Z'))
    this.currentFont = AllBinary.getDefaultFont(Font)
    
    
    
    
    
    
    
    nothing
end


function initTrueTypeFontUtilBase(this::TrueTypeFontUtilBase, scale)
        initFieldsTrueTypeFontUtilBase(this)
        local shortPattern = AllBinary.getInstance(StringUtil).EMPTY_STRING
        if AllBinary.isAvian(AvianUtil)
            shortPatterAsByteArray = Int8[Int32(32), Int32(48), Int32(49), Int32(50), Int32(51), Int32(52), Int32(53), Int32(54), Int32(55), Int32(56), Int32(57), Int32(65), Int32(66), Int32(67), Int32(68), Int32(69), Int32(70), Int32(71), Int32(72), Int32(73), Int32(74), Int32(75), Int32(76), Int32(77), Int32(78), Int32(79), Int32(80), Int32(81), Int32(82), Int32(83), Int32(84), Int32(85), Int32(86), Int32(87), Int32(88), Int32(89), Int32(90), Int32(97), Int32(98), Int32(99), Int32(100), Int32(101), Int32(102), Int32(103), Int32(104), Int32(105), Int32(106), Int32(107), Int32(108), Int32(109), Int32(110), Int32(111), Int32(112), Int32(113), Int32(114), Int32(115), Int32(116), Int32(117), Int32(118), Int32(119), Int32(120), Int32(121), Int32(122), Int32(46), Int32(63), Int32(33), Int32(36), Int32(37), Int32(96), ((-Int32(62)) % Int8), ((-Int32(84)) % Int8), ((-Int32(62)) % Int8), ((-Int32(84)) % Int8), Int32(34), ((-Int32(62)) % Int8), ((-Int32(93)) % Int8), ((-Int32(62)) % Int8), ((-Int32(93)) % Int8), Int32(94), Int32(38), Int32(42), Int32(40), Int32(41), Int32(95), Int32(43), Int32(45), Int32(61), Int32(91), Int32(93), Int32(123), Int32(125), Int32(59), Int32(39), Int32(35), Int32(58), Int32(64), Int32(126), Int32(44), Int32(47), Int32(60), Int32(62), Int32(92), Int32(124), ((-Int32(62)) % Int8), ((-Int32(82)) % Int8), ((-Int32(62)) % Int8), ((-Int32(82)) % Int8), ((-Int32(62)) % Int8), ((-Int32(87)) % Int8), ((-Int32(62)) % Int8), ((-Int32(87)) % Int8)]
            shortPattern = shortPatterAsByteArray
        else
            local shortPatterAsByteArray = Int8[Int32(32), Int32(48), Int32(49), Int32(50), Int32(51), Int32(52), Int32(53), Int32(54), Int32(55), Int32(56), Int32(57), Int32(65), Int32(66), Int32(67), Int32(68), Int32(69), Int32(70), Int32(71), Int32(72), Int32(73), Int32(74), Int32(75), Int32(76), Int32(77), Int32(78), Int32(79), Int32(80), Int32(81), Int32(82), Int32(83), Int32(84), Int32(85), Int32(86), Int32(87), Int32(88), Int32(89), Int32(90), Int32(97), Int32(98), Int32(99), Int32(100), Int32(101), Int32(102), Int32(103), Int32(104), Int32(105), Int32(106), Int32(107), Int32(108), Int32(109), Int32(110), Int32(111), Int32(112), Int32(113), Int32(114), Int32(115), Int32(116), Int32(117), Int32(118), Int32(119), Int32(120), Int32(121), Int32(122), Int32(46), Int32(63), Int32(33), Int32(36), Int32(37), Int32(96), ((-Int32(62)) % Int8), ((-Int32(84)) % Int8), Int32(34), ((-Int32(62)) % Int8), ((-Int32(93)) % Int8), Int32(94), Int32(38), Int32(42), Int32(40), Int32(41), Int32(95), Int32(43), Int32(45), Int32(61), Int32(91), Int32(93), Int32(123), Int32(125), Int32(59), Int32(39), Int32(35), Int32(58), Int32(64), Int32(126), Int32(44), Int32(47), Int32(60), Int32(62), Int32(92), Int32(124), ((-Int32(62)) % Int8), ((-Int32(82)) % Int8), ((-Int32(62)) % Int8), ((-Int32(87)) % Int8)]
            shortPattern = shortPatterAsByteArray
        end
        this.shortPattern = shortPattern
        this.scale = scale
        this.CELLS_PER_ROW = Int32(16)
        this.fontSize = (Int32(20) + Int32(6)) * this.scale
        this.baseCharWidth = this.fontSize + (Int32(6) * this.scale)
        this.cellSize = this.fontSize + (Int32(6) * this.scale)
        this.textureSize = AllBinary.getAsTextureSize(this, this.CELLS_PER_ROW * this.cellSize)
        this.actualCellsPerRow = this.textureSize ÷ this.cellSize
        nothing
end

function newTrueTypeFontUtilBase(scale)
    this = TrueTypeFontUtilBase()
    initTrueTypeFontUtilBase(this, scale)
    this
end


function getAsTextureSize(this::TrueTypeFontUtilBase, textureSize)
        if textureSize <= Int32(64)
            textureSize = Int32(64)
        elseif textureSize <= Int32(128)
            textureSize = Int32(128)
        elseif textureSize <= Int32(256)
            textureSize = Int32(256)
        elseif textureSize <= Int32(512)
            textureSize = Int32(512)
        elseif textureSize <= Int32(1024)
            textureSize = Int32(1024)
        end
        return textureSize
end


function getCellSize(this::TrueTypeFontUtilBase, cellSize)
        if cellSize <= Int32(16)
            cellSize = Int32(16)
        elseif cellSize <= Int32(32)
            cellSize = Int32(32)
        elseif cellSize <= Int32(64)
            cellSize = Int32(64)
        elseif cellSize <= Int32(128)
            cellSize = Int32(128)
        elseif cellSize <= Int32(256)
            cellSize = Int32(256)
        end
        return cellSize
end


function getYOffset(this::TrueTypeFontUtilBase)
        return ((this.scale - Int32(1)) * this.cellSize)
end

