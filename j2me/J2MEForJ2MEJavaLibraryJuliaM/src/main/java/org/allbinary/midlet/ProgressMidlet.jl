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
# package org.allbinary.midlet

#J2MEForJ2ME
# extends AllBinaryMidlet: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ProgressMidlet <: JObject
    abeClientInformation::Any
    ProgressMidlet() = new()
end


function initFieldsProgressMidlet(this::ProgressMidlet)
    this.abeClientInformation = nothing
    
    nothing
end


function initProgressMidlet(this::ProgressMidlet, clientInformationFactory)
        initAllBinaryMidlet(this)
        initFieldsProgressMidlet(this)
        AllBinary.preInit(this)
        this.abeClientInformation = AllBinary.getInstance(clientInformationFactory)
        nothing
end

function newProgressMidlet(clientInformationFactory)
    this = ProgressMidlet()
    initProgressMidlet(this, clientInformationFactory)
    this
end


function preInit(this::ProgressMidlet)
        nothing
        nothing
end


function exitProgress(this::ProgressMidlet, isProgress)
        local processor = AllBinary.getExitInstance(AllBinary.getInstance(MidletExitProcessorFactory), this)
        try
            local primaryThreadPool = AllBinary.getInstance(PrimaryThreadPool)
            local runnable = newExitRunnable(this, processor, isProgress)
            AllBinary.runTask(primaryThreadPool, runnable)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "exit", e)
            try
                AllBinary.process(processor)
            catch e2
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "exit", e)
            end
        end
        nothing
end

