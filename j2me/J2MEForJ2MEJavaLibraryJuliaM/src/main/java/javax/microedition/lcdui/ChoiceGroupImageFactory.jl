#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package javax.microedition.lcdui

mutable struct ChoiceGroupImageFactory <: JObject
    multiOff::Any
    multiOn::Any
    radioOff::Any
    radioOn::Any
    midpUtil::Any
    imgMultiOffO::Any
    imgMultiOnO::Any
    imgRadioOffO::Any
    imgRadioOnO::Any
    imgMultiOff::Any
    imgMultiOn::Any
    imgRadioOff::Any
    imgRadioOn::Any
    imageArray::Any
    ChoiceGroupImageFactory() = new()
end

const ChoiceGroupImageFactory_instanceValue = Ref{Any}(nothing)
const ChoiceGroupImageFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ChoiceGroupImageFactory})
    if !ChoiceGroupImageFactory_instanceSet[]
        ChoiceGroupImageFactory_instanceSet[] = true
        ChoiceGroupImageFactory_instanceValue[] = newChoiceGroupImageFactory()
    end
    ChoiceGroupImageFactory_instanceValue[]
end
function staticSet_instance(::Type{ChoiceGroupImageFactory}, value)
    ChoiceGroupImageFactory_instanceSet[] = true
    ChoiceGroupImageFactory_instanceValue[] = value
end

function initFieldsChoiceGroupImageFactory(this::ChoiceGroupImageFactory)
    this.multiOff = nothing
    this.multiOn = nothing
    this.radioOff = nothing
    this.radioOn = nothing
    this.midpUtil = nothing
    this.imgMultiOffO = nothing
    this.imgMultiOnO = nothing
    this.imgRadioOffO = nothing
    this.imgRadioOnO = nothing
    this.imgMultiOff = nothing
    this.imgMultiOn = nothing
    this.imgRadioOff = nothing
    this.imgRadioOn = nothing
    this.imageArray = nothing
    this.multiOff = Int8[((-Int32(119)) % Int8), Int32(80), Int32(78), Int32(71), Int32(13), Int32(10), Int32(26), Int32(10), Int32(0), Int32(0), Int32(0), Int32(13), Int32(73), Int32(72), Int32(68), Int32(82), Int32(0), Int32(0), Int32(0), Int32(10), Int32(0), Int32(0), Int32(0), Int32(11), Int32(2), Int32(3), Int32(0), Int32(0), Int32(0), Int32(59), Int32(0), ((-Int32(12)) % Int8), ((-Int32(117)) % Int8), Int32(0), Int32(0), Int32(0), Int32(6), Int32(80), Int32(76), Int32(84), Int32(69), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), ((-Int32(57)) % Int8), Int32(75), ((-Int32(33)) % Int8), ((-Int32(8)) % Int8), Int32(0), Int32(0), Int32(0), Int32(30), Int32(73), Int32(68), Int32(65), Int32(84), Int32(120), ((-Int32(38)) % Int8), Int32(99), Int32(96), Int32(96), Int32(96), Int32(96), Int32(12), Int32(101), ((-Int32(8)) % Int8), ((-Int32(51)) % Int8), ((-Int32(32)) % Int8), ((-Int32(64)) % Int8), Int32(32), ((-Int32(64)) % Int8), ((-Int32(60)) % Int8), ((-Int32(64)) % Int8), ((-Int32(64)) % Int8), ((-Int32(128)) % Int8), Int32(11), Int32(51), ((-Int32(122)) % Int8), Int32(50), ((-Int32(4)) % Int8), Int32(6), Int32(0), Int32(63), Int32(116), Int32(3), Int32(1), Int32(53), ((-Int32(108)) % Int8), Int32(39), ((-Int32(26)) % Int8), Int32(0), Int32(0), Int32(0), Int32(0), Int32(73), Int32(69), Int32(78), Int32(68), ((-Int32(82)) % Int8), Int32(66), Int32(96), ((-Int32(126)) % Int8)]
    this.multiOn = Int8[((-Int32(119)) % Int8), Int32(80), Int32(78), Int32(71), Int32(13), Int32(10), Int32(26), Int32(10), Int32(0), Int32(0), Int32(0), Int32(13), Int32(73), Int32(72), Int32(68), Int32(82), Int32(0), Int32(0), Int32(0), Int32(10), Int32(0), Int32(0), Int32(0), Int32(11), Int32(2), Int32(3), Int32(0), Int32(0), Int32(0), Int32(59), Int32(0), ((-Int32(12)) % Int8), ((-Int32(117)) % Int8), Int32(0), Int32(0), Int32(0), Int32(12), Int32(80), Int32(76), Int32(84), Int32(69), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), Int32(106), Int32(106), Int32(106), Int32(2), Int32(2), Int32(2), Int32(106), ((-Int32(103)) % Int8), Int32(14), ((-Int32(47)) % Int8), Int32(0), Int32(0), Int32(0), Int32(53), Int32(73), Int32(68), Int32(65), Int32(84), Int32(120), ((-Int32(38)) % Int8), Int32(99), Int32(96), Int32(96), Int32(124), ((-Int32(64)) % Int8), ((-Int32(16)) % Int8), ((-Int32(1)) % Int8), ((-Int32(77)) % Int8), Int32(3), ((-Int32(45)) % Int8), Int32(65), ((-Int32(111)) % Int8), Int32(15), Int32(76), Int32(12), Int32(108), Int32(12), Int32(76), Int32(12), ((-Int32(4)) % Int8), Int32(12), Int32(76), Int32(12), Int32(18), Int32(12), Int32(76), ((-Int32(68)) % Int8), Int32(127), Int32(24), ((-Int32(104)) % Int8), Int32(126), Int32(45), Int32(96), Int32(96), ((-Int32(7)) % Int8), ((-Int32(11)) % Int8), ((-Int32(109)) % Int8), ((-Int32(127)) % Int8), ((-Int32(23)) % Int8), ((-Int32(65)) % Int8), Int32(3), Int32(3), ((-Int32(29)) % Int8), Int32(127), ((-Int32(122)) % Int8), ((-Int32(113)) % Int8), Int32(0), Int32(5), Int32(37), Int32(12), ((-Int32(34)) % Int8), Int32(1), ((-Int32(99)) % Int8), ((-Int32(83)) % Int8), Int32(100), Int32(0), Int32(0), Int32(0), Int32(0), Int32(73), Int32(69), Int32(78), Int32(68), ((-Int32(82)) % Int8), Int32(66), Int32(96), ((-Int32(126)) % Int8)]
    this.radioOff = Int8[((-Int32(119)) % Int8), Int32(80), Int32(78), Int32(71), Int32(13), Int32(10), Int32(26), Int32(10), Int32(0), Int32(0), Int32(0), Int32(13), Int32(73), Int32(72), Int32(68), Int32(82), Int32(0), Int32(0), Int32(0), Int32(11), Int32(0), Int32(0), Int32(0), Int32(11), Int32(2), Int32(3), Int32(0), Int32(0), Int32(0), ((-Int32(44)) % Int8), ((-Int32(62)) % Int8), ((-Int32(97)) % Int8), ((-Int32(75)) % Int8), Int32(0), Int32(0), Int32(0), Int32(9), Int32(80), Int32(76), Int32(84), Int32(69), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), Int32(106), Int32(106), Int32(106), ((-Int32(44)) % Int8), Int32(13), ((-Int32(1)) % Int8), ((-Int32(24)) % Int8), Int32(0), Int32(0), Int32(0), Int32(42), Int32(73), Int32(68), Int32(65), Int32(84), Int32(120), ((-Int32(38)) % Int8), Int32(99), Int32(96), Int32(90), ((-Int32(59)) % Int8), ((-Int32(64)) % Int8), Int32(32), ((-Int32(63)) % Int8), Int32(48), ((-Int32(127)) % Int8), Int32(65), ((-Int32(127)) % Int8), Int32(65), ((-Int32(127)) % Int8), Int32(41), ((-Int32(127)) % Int8), ((-Int32(31)) % Int8), Int32(5), Int32(19), Int32(3), Int32(3), Int32(3), Int32(50), Int32(102), Int32(80), Int32(96), Int32(80), Int32(96), ((-Int32(6)) % Int8), ((-Int32(63)) % Int8), Int32(80), ((-Int32(64)) % Int8), ((-Int32(64)) % Int8), ((-Int32(76)) % Int8), ((-Int32(118)) % Int8), Int32(1), Int32(0), Int32(113), Int32(24), Int32(5), Int32(61), Int32(73), ((-Int32(68)) % Int8), ((-Int32(100)) % Int8), Int32(98), Int32(0), Int32(0), Int32(0), Int32(0), Int32(73), Int32(69), Int32(78), Int32(68), ((-Int32(82)) % Int8), Int32(66), Int32(96), ((-Int32(126)) % Int8)]
    this.radioOn = Int8[((-Int32(119)) % Int8), Int32(80), Int32(78), Int32(71), Int32(13), Int32(10), Int32(26), Int32(10), Int32(0), Int32(0), Int32(0), Int32(13), Int32(73), Int32(72), Int32(68), Int32(82), Int32(0), Int32(0), Int32(0), Int32(11), Int32(0), Int32(0), Int32(0), Int32(11), Int32(2), Int32(3), Int32(0), Int32(0), Int32(0), ((-Int32(44)) % Int8), ((-Int32(62)) % Int8), ((-Int32(97)) % Int8), ((-Int32(75)) % Int8), Int32(0), Int32(0), Int32(0), Int32(12), Int32(80), Int32(76), Int32(84), Int32(69), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(1)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), ((-Int32(69)) % Int8), Int32(106), Int32(106), Int32(106), Int32(2), Int32(2), Int32(2), Int32(106), ((-Int32(103)) % Int8), Int32(14), ((-Int32(47)) % Int8), Int32(0), Int32(0), Int32(0), Int32(50), Int32(73), Int32(68), Int32(65), Int32(84), Int32(120), ((-Int32(38)) % Int8), Int32(5), ((-Int32(63)) % Int8), Int32(65), Int32(13), Int32(0), Int32(32), Int32(12), Int32(4), ((-Int32(63)) % Int8), ((-Int32(19)) % Int8), ((-Int32(11)) % Int8), ((-Int32(117)) % Int8), Int32(1), Int32(18), Int32(68), ((-Int32(100)) % Int8), Int32(10), Int32(52), Int32(19), Int32(94), Int32(72), Int32(64), Int32(17), Int32(101), ((-Int32(122)) % Int8), Int32(44), ((-Int32(44)) % Int8), ((-Int32(29)) % Int8), Int32(98), ((-Int32(52)) % Int8), Int32(89), Int32(77), ((-Int32(102)) % Int8), Int32(40), Int32(2), Int32(85), ((-Int32(95)) % Int8), ((-Int32(73)) % Int8), ((-Int32(63)) % Int8), ((-Int32(104)) % Int8), ((-Int32(63)) % Int8), Int32(37), ((-Int32(117)) % Int8), Int32(15), ((-Int32(40)) % Int8), Int32(119), Int32(10), Int32(41), Int32(78), Int32(26), ((-Int32(79)) % Int8), Int32(59), Int32(0), Int32(0), Int32(0), Int32(0), Int32(73), Int32(69), Int32(78), Int32(68), ((-Int32(82)) % Int8), Int32(66), Int32(96), ((-Int32(126)) % Int8)]
    this.midpUtil = AllBinary.getInstance(MIDPUtil)
    this.imgMultiOffO = AllBinary.createImageFromByteArray(this.midpUtil, this.multiOff, Int32(0), Int32(Base.length(this.multiOff)))
    this.imgMultiOnO = AllBinary.createImageFromByteArray(this.midpUtil, this.multiOn, Int32(0), Int32(Base.length(this.multiOn)))
    this.imgRadioOffO = AllBinary.createImageFromByteArray(this.midpUtil, this.radioOff, Int32(0), Int32(Base.length(this.radioOff)))
    this.imgRadioOnO = AllBinary.createImageFromByteArray(this.midpUtil, this.radioOn, Int32(0), Int32(Base.length(this.radioOn)))
    this.imgMultiOff = this.imgMultiOffO
    this.imgMultiOn = this.imgMultiOnO
    this.imgRadioOff = this.imgRadioOffO
    this.imgRadioOn = this.imgRadioOnO
    this.imageArray = Any[this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn]
    nothing
end

function initChoiceGroupImageFactory(this::ChoiceGroupImageFactory)
    initFieldsChoiceGroupImageFactory(this)
end

function newChoiceGroupImageFactory()
    this = ChoiceGroupImageFactory()
    initChoiceGroupImageFactory(this)
    this
end


function getInstance(::Type{ChoiceGroupImageFactory})
        return staticGet_instance(ChoiceGroupImageFactory)
end


function getImageArray(this::ChoiceGroupImageFactory)
        return this.imageArray
end


function init(this::ChoiceGroupImageFactory, imageArray)
        this.imgMultiOff = imageArray[Int32(0) + 1]
        this.imageArray[Int32(0) + 1] = this.imgMultiOff
        this.imgMultiOn = imageArray[Int32(1) + 1]
        this.imageArray[Int32(1) + 1] = this.imgMultiOn
        this.imgRadioOff = imageArray[Int32(2) + 1]
        this.imageArray[Int32(2) + 1] = this.imgRadioOff
        this.imgRadioOn = imageArray[Int32(3) + 1]
        this.imageArray[Int32(3) + 1] = this.imgRadioOn
        nothing
end

