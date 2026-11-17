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
# package org.allbinary.graphics.form

mutable struct ScrollSelectionFormNoneFactory <: JObject
    ScrollSelectionFormNoneFactory() = new()
end


function initFieldsScrollSelectionFormNoneFactory(this::ScrollSelectionFormNoneFactory)
    nothing
end

function initScrollSelectionFormNoneFactory(this::ScrollSelectionFormNoneFactory)
    initFieldsScrollSelectionFormNoneFactory(this)
end

function newScrollSelectionFormNoneFactory()
    this = ScrollSelectionFormNoneFactory()
    initScrollSelectionFormNoneFactory(this)
    this
end


function getInstance(::Type{ScrollSelectionFormNoneFactory})
        return AllBinary.getNullScrollSelectionFormHorizontal(ScrollSelectionForm)
end

