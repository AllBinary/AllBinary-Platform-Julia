#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.input

mutable struct ABKeyEventWrapper <: JObject
    VK_ENTER::Int32
    VK_BACK_SPACE::Int32
    VK_TAB::Int32
    VK_CANCEL::Int32
    VK_CLEAR::Int32
    VK_SHIFT::Int32
    VK_CONTROL::Int32
    VK_ALT::Int32
    VK_PAUSE::Int32
    VK_CAPS_LOCK::Int32
    VK_ESCAPE::Int32
    VK_SPACE::Int32
    VK_PAGE_UP::Int32
    VK_PAGE_DOWN::Int32
    VK_END::Int32
    VK_HOME::Int32
    VK_LEFT::Int32
    VK_UP::Int32
    VK_RIGHT::Int32
    VK_DOWN::Int32
    VK_COMMA::Int32
    VK_MINUS::Int32
    VK_PERIOD::Int32
    VK_SLASH::Int32
    VK_0::Int32
    VK_1::Int32
    VK_2::Int32
    VK_3::Int32
    VK_4::Int32
    VK_5::Int32
    VK_6::Int32
    VK_7::Int32
    VK_8::Int32
    VK_9::Int32
    VK_SEMICOLON::Int32
    VK_EQUALS::Int32
    VK_A::Int32
    VK_B::Int32
    VK_C::Int32
    VK_D::Int32
    VK_E::Int32
    VK_F::Int32
    VK_G::Int32
    VK_H::Int32
    VK_I::Int32
    VK_J::Int32
    VK_K::Int32
    VK_L::Int32
    VK_M::Int32
    VK_N::Int32
    VK_O::Int32
    VK_P::Int32
    VK_Q::Int32
    VK_R::Int32
    VK_S::Int32
    VK_T::Int32
    VK_U::Int32
    VK_V::Int32
    VK_W::Int32
    VK_X::Int32
    VK_Y::Int32
    VK_Z::Int32
    VK_OPEN_BRACKET::Int32
    VK_BACK_SLASH::Int32
    VK_CLOSE_BRACKET::Int32
    VK_NUMPAD0::Int32
    VK_NUMPAD1::Int32
    VK_NUMPAD2::Int32
    VK_NUMPAD3::Int32
    VK_NUMPAD4::Int32
    VK_NUMPAD5::Int32
    VK_NUMPAD6::Int32
    VK_NUMPAD7::Int32
    VK_NUMPAD8::Int32
    VK_NUMPAD9::Int32
    VK_MULTIPLY::Int32
    VK_ADD::Int32
    VK_SEPARATER::Int32
    VK_SEPARATOR::Int32
    VK_SUBTRACT::Int32
    VK_DECIMAL::Int32
    VK_DIVIDE::Int32
    VK_DELETE::Int32
    VK_NUM_LOCK::Int32
    VK_SCROLL_LOCK::Int32
    VK_F1::Int32
    VK_F2::Int32
    VK_F3::Int32
    VK_F4::Int32
    VK_F5::Int32
    VK_F6::Int32
    VK_F7::Int32
    VK_F8::Int32
    VK_F9::Int32
    VK_F10::Int32
    VK_F11::Int32
    VK_F12::Int32
    VK_F13::Int32
    VK_F14::Int32
    VK_F15::Int32
    VK_F16::Int32
    VK_F17::Int32
    VK_F18::Int32
    VK_F19::Int32
    VK_F20::Int32
    VK_F21::Int32
    VK_F22::Int32
    VK_F23::Int32
    VK_F24::Int32
    VK_PRINTSCREEN::Int32
    VK_INSERT::Int32
    VK_HELP::Int32
    VK_META::Int32
    VK_BACK_QUOTE::Int32
    VK_QUOTE::Int32
    VK_KP_UP::Int32
    VK_KP_DOWN::Int32
    VK_KP_LEFT::Int32
    VK_KP_RIGHT::Int32
    VK_DEAD_GRAVE::Int32
    VK_DEAD_ACUTE::Int32
    VK_DEAD_CIRCUMFLEX::Int32
    VK_DEAD_TILDE::Int32
    VK_DEAD_MACRON::Int32
    VK_DEAD_BREVE::Int32
    VK_DEAD_ABOVEDOT::Int32
    VK_DEAD_DIAERESIS::Int32
    VK_DEAD_ABOVERING::Int32
    VK_DEAD_DOUBLEACUTE::Int32
    VK_DEAD_CARON::Int32
    VK_DEAD_CEDILLA::Int32
    VK_DEAD_OGONEK::Int32
    VK_DEAD_IOTA::Int32
    VK_DEAD_VOICED_SOUND::Int32
    VK_DEAD_SEMIVOICED_SOUND::Int32
    VK_AMPERSAND::Int32
    VK_ASTERISK::Int32
    VK_QUOTEDBL::Int32
    VK_LESS::Int32
    VK_GREATER::Int32
    VK_BRACELEFT::Int32
    VK_BRACERIGHT::Int32
    VK_AT::Int32
    VK_COLON::Int32
    VK_CIRCUMFLEX::Int32
    VK_DOLLAR::Int32
    VK_EURO_SIGN::Int32
    VK_EXCLAMATION_MARK::Int32
    VK_INVERTED_EXCLAMATION_MARK::Int32
    VK_LEFT_PARENTHESIS::Int32
    VK_NUMBER_SIGN::Int32
    VK_PLUS::Int32
    VK_RIGHT_PARENTHESIS::Int32
    VK_UNDERSCORE::Int32
    VK_WINDOWS::Int32
    VK_CONTEXT_MENU::Int32
    VK_FINAL::Int32
    VK_CONVERT::Int32
    VK_NONCONVERT::Int32
    VK_ACCEPT::Int32
    VK_MODECHANGE::Int32
    VK_KANA::Int32
    VK_KANJI::Int32
    VK_ALPHANUMERIC::Int32
    VK_KATAKANA::Int32
    VK_HIRAGANA::Int32
    VK_FULL_WIDTH::Int32
    VK_HALF_WIDTH::Int32
    VK_ROMAN_CHARACTERS::Int32
    VK_ALL_CANDIDATES::Int32
    VK_PREVIOUS_CANDIDATE::Int32
    VK_CODE_INPUT::Int32
    VK_JAPANESE_KATAKANA::Int32
    VK_JAPANESE_HIRAGANA::Int32
    VK_JAPANESE_ROMAN::Int32
    VK_KANA_LOCK::Int32
    VK_INPUT_METHOD_ON_OFF::Int32
    VK_CUT::Int32
    VK_COPY::Int32
    VK_PASTE::Int32
    VK_UNDO::Int32
    VK_AGAIN::Int32
    VK_FIND::Int32
    VK_PROPS::Int32
    VK_STOP::Int32
    VK_COMPOSE::Int32
    VK_ALT_GRAPH::Int32
    VK_BEGIN::Int32
    VK_UNDEFINED::Int32
    ABKeyEventWrapper() = new()
end

const ABKeyEventWrapper_instanceValue = Ref{Any}(nothing)
const ABKeyEventWrapper_instanceSet = Ref(false)
function staticGet_instance(::Type{ABKeyEventWrapper})
    if !ABKeyEventWrapper_instanceSet[]
        ABKeyEventWrapper_instanceSet[] = true
        ABKeyEventWrapper_instanceValue[] = newABKeyEventWrapper()
    end
    ABKeyEventWrapper_instanceValue[]
end
function staticSet_instance(::Type{ABKeyEventWrapper}, value)
    ABKeyEventWrapper_instanceSet[] = true
    ABKeyEventWrapper_instanceValue[] = value
end

function initFieldsABKeyEventWrapper(this::ABKeyEventWrapper)
    this.VK_ENTER = Int32(0)
    this.VK_BACK_SPACE = Int32(0)
    this.VK_TAB = Int32(0)
    this.VK_CANCEL = Int32(0)
    this.VK_CLEAR = Int32(0)
    this.VK_SHIFT = Int32(0)
    this.VK_CONTROL = Int32(0)
    this.VK_ALT = Int32(0)
    this.VK_PAUSE = Int32(0)
    this.VK_CAPS_LOCK = Int32(0)
    this.VK_ESCAPE = Int32(0)
    this.VK_SPACE = Int32(0)
    this.VK_PAGE_UP = Int32(0)
    this.VK_PAGE_DOWN = Int32(0)
    this.VK_END = Int32(0)
    this.VK_HOME = Int32(0)
    this.VK_LEFT = Int32(0)
    this.VK_UP = Int32(0)
    this.VK_RIGHT = Int32(0)
    this.VK_DOWN = Int32(0)
    this.VK_COMMA = Int32(0)
    this.VK_MINUS = Int32(0)
    this.VK_PERIOD = Int32(0)
    this.VK_SLASH = Int32(0)
    this.VK_0 = Int32(0)
    this.VK_1 = Int32(0)
    this.VK_2 = Int32(0)
    this.VK_3 = Int32(0)
    this.VK_4 = Int32(0)
    this.VK_5 = Int32(0)
    this.VK_6 = Int32(0)
    this.VK_7 = Int32(0)
    this.VK_8 = Int32(0)
    this.VK_9 = Int32(0)
    this.VK_SEMICOLON = Int32(0)
    this.VK_EQUALS = Int32(0)
    this.VK_A = Int32(0)
    this.VK_B = Int32(0)
    this.VK_C = Int32(0)
    this.VK_D = Int32(0)
    this.VK_E = Int32(0)
    this.VK_F = Int32(0)
    this.VK_G = Int32(0)
    this.VK_H = Int32(0)
    this.VK_I = Int32(0)
    this.VK_J = Int32(0)
    this.VK_K = Int32(0)
    this.VK_L = Int32(0)
    this.VK_M = Int32(0)
    this.VK_N = Int32(0)
    this.VK_O = Int32(0)
    this.VK_P = Int32(0)
    this.VK_Q = Int32(0)
    this.VK_R = Int32(0)
    this.VK_S = Int32(0)
    this.VK_T = Int32(0)
    this.VK_U = Int32(0)
    this.VK_V = Int32(0)
    this.VK_W = Int32(0)
    this.VK_X = Int32(0)
    this.VK_Y = Int32(0)
    this.VK_Z = Int32(0)
    this.VK_OPEN_BRACKET = Int32(0)
    this.VK_BACK_SLASH = Int32(0)
    this.VK_CLOSE_BRACKET = Int32(0)
    this.VK_NUMPAD0 = Int32(0)
    this.VK_NUMPAD1 = Int32(0)
    this.VK_NUMPAD2 = Int32(0)
    this.VK_NUMPAD3 = Int32(0)
    this.VK_NUMPAD4 = Int32(0)
    this.VK_NUMPAD5 = Int32(0)
    this.VK_NUMPAD6 = Int32(0)
    this.VK_NUMPAD7 = Int32(0)
    this.VK_NUMPAD8 = Int32(0)
    this.VK_NUMPAD9 = Int32(0)
    this.VK_MULTIPLY = Int32(0)
    this.VK_ADD = Int32(0)
    this.VK_SEPARATER = Int32(0)
    this.VK_SEPARATOR = Int32(0)
    this.VK_SUBTRACT = Int32(0)
    this.VK_DECIMAL = Int32(0)
    this.VK_DIVIDE = Int32(0)
    this.VK_DELETE = Int32(0)
    this.VK_NUM_LOCK = Int32(0)
    this.VK_SCROLL_LOCK = Int32(0)
    this.VK_F1 = Int32(0)
    this.VK_F2 = Int32(0)
    this.VK_F3 = Int32(0)
    this.VK_F4 = Int32(0)
    this.VK_F5 = Int32(0)
    this.VK_F6 = Int32(0)
    this.VK_F7 = Int32(0)
    this.VK_F8 = Int32(0)
    this.VK_F9 = Int32(0)
    this.VK_F10 = Int32(0)
    this.VK_F11 = Int32(0)
    this.VK_F12 = Int32(0)
    this.VK_F13 = Int32(0)
    this.VK_F14 = Int32(0)
    this.VK_F15 = Int32(0)
    this.VK_F16 = Int32(0)
    this.VK_F17 = Int32(0)
    this.VK_F18 = Int32(0)
    this.VK_F19 = Int32(0)
    this.VK_F20 = Int32(0)
    this.VK_F21 = Int32(0)
    this.VK_F22 = Int32(0)
    this.VK_F23 = Int32(0)
    this.VK_F24 = Int32(0)
    this.VK_PRINTSCREEN = Int32(0)
    this.VK_INSERT = Int32(0)
    this.VK_HELP = Int32(0)
    this.VK_META = Int32(0)
    this.VK_BACK_QUOTE = Int32(0)
    this.VK_QUOTE = Int32(0)
    this.VK_KP_UP = Int32(0)
    this.VK_KP_DOWN = Int32(0)
    this.VK_KP_LEFT = Int32(0)
    this.VK_KP_RIGHT = Int32(0)
    this.VK_DEAD_GRAVE = Int32(0)
    this.VK_DEAD_ACUTE = Int32(0)
    this.VK_DEAD_CIRCUMFLEX = Int32(0)
    this.VK_DEAD_TILDE = Int32(0)
    this.VK_DEAD_MACRON = Int32(0)
    this.VK_DEAD_BREVE = Int32(0)
    this.VK_DEAD_ABOVEDOT = Int32(0)
    this.VK_DEAD_DIAERESIS = Int32(0)
    this.VK_DEAD_ABOVERING = Int32(0)
    this.VK_DEAD_DOUBLEACUTE = Int32(0)
    this.VK_DEAD_CARON = Int32(0)
    this.VK_DEAD_CEDILLA = Int32(0)
    this.VK_DEAD_OGONEK = Int32(0)
    this.VK_DEAD_IOTA = Int32(0)
    this.VK_DEAD_VOICED_SOUND = Int32(0)
    this.VK_DEAD_SEMIVOICED_SOUND = Int32(0)
    this.VK_AMPERSAND = Int32(0)
    this.VK_ASTERISK = Int32(0)
    this.VK_QUOTEDBL = Int32(0)
    this.VK_LESS = Int32(0)
    this.VK_GREATER = Int32(0)
    this.VK_BRACELEFT = Int32(0)
    this.VK_BRACERIGHT = Int32(0)
    this.VK_AT = Int32(0)
    this.VK_COLON = Int32(0)
    this.VK_CIRCUMFLEX = Int32(0)
    this.VK_DOLLAR = Int32(0)
    this.VK_EURO_SIGN = Int32(0)
    this.VK_EXCLAMATION_MARK = Int32(0)
    this.VK_INVERTED_EXCLAMATION_MARK = Int32(0)
    this.VK_LEFT_PARENTHESIS = Int32(0)
    this.VK_NUMBER_SIGN = Int32(0)
    this.VK_PLUS = Int32(0)
    this.VK_RIGHT_PARENTHESIS = Int32(0)
    this.VK_UNDERSCORE = Int32(0)
    this.VK_WINDOWS = Int32(0)
    this.VK_CONTEXT_MENU = Int32(0)
    this.VK_FINAL = Int32(0)
    this.VK_CONVERT = Int32(0)
    this.VK_NONCONVERT = Int32(0)
    this.VK_ACCEPT = Int32(0)
    this.VK_MODECHANGE = Int32(0)
    this.VK_KANA = Int32(0)
    this.VK_KANJI = Int32(0)
    this.VK_ALPHANUMERIC = Int32(0)
    this.VK_KATAKANA = Int32(0)
    this.VK_HIRAGANA = Int32(0)
    this.VK_FULL_WIDTH = Int32(0)
    this.VK_HALF_WIDTH = Int32(0)
    this.VK_ROMAN_CHARACTERS = Int32(0)
    this.VK_ALL_CANDIDATES = Int32(0)
    this.VK_PREVIOUS_CANDIDATE = Int32(0)
    this.VK_CODE_INPUT = Int32(0)
    this.VK_JAPANESE_KATAKANA = Int32(0)
    this.VK_JAPANESE_HIRAGANA = Int32(0)
    this.VK_JAPANESE_ROMAN = Int32(0)
    this.VK_KANA_LOCK = Int32(0)
    this.VK_INPUT_METHOD_ON_OFF = Int32(0)
    this.VK_CUT = Int32(0)
    this.VK_COPY = Int32(0)
    this.VK_PASTE = Int32(0)
    this.VK_UNDO = Int32(0)
    this.VK_AGAIN = Int32(0)
    this.VK_FIND = Int32(0)
    this.VK_PROPS = Int32(0)
    this.VK_STOP = Int32(0)
    this.VK_COMPOSE = Int32(0)
    this.VK_ALT_GRAPH = Int32(0)
    this.VK_BEGIN = Int32(0)
    this.VK_UNDEFINED = Int32(0)
    this.VK_ENTER = staticGet_VK_ENTER(KeyEvent)
    this.VK_BACK_SPACE = staticGet_VK_BACK_SPACE(KeyEvent)
    this.VK_TAB = staticGet_VK_TAB(KeyEvent)
    this.VK_CANCEL = staticGet_VK_CANCEL(KeyEvent)
    this.VK_CLEAR = staticGet_VK_CLEAR(KeyEvent)
    this.VK_SHIFT = staticGet_VK_SHIFT(KeyEvent)
    this.VK_CONTROL = staticGet_VK_CONTROL(KeyEvent)
    this.VK_ALT = staticGet_VK_ALT(KeyEvent)
    this.VK_PAUSE = staticGet_VK_PAUSE(KeyEvent)
    this.VK_CAPS_LOCK = staticGet_VK_CAPS_LOCK(KeyEvent)
    this.VK_ESCAPE = staticGet_VK_ESCAPE(KeyEvent)
    this.VK_SPACE = staticGet_VK_SPACE(KeyEvent)
    this.VK_PAGE_UP = staticGet_VK_PAGE_UP(KeyEvent)
    this.VK_PAGE_DOWN = staticGet_VK_PAGE_DOWN(KeyEvent)
    this.VK_END = staticGet_VK_END(KeyEvent)
    this.VK_HOME = staticGet_VK_HOME(KeyEvent)
    this.VK_LEFT = staticGet_VK_LEFT(KeyEvent)
    this.VK_UP = staticGet_VK_UP(KeyEvent)
    this.VK_RIGHT = staticGet_VK_RIGHT(KeyEvent)
    this.VK_DOWN = staticGet_VK_DOWN(KeyEvent)
    this.VK_COMMA = staticGet_VK_COMMA(KeyEvent)
    this.VK_MINUS = staticGet_VK_MINUS(KeyEvent)
    this.VK_PERIOD = staticGet_VK_PERIOD(KeyEvent)
    this.VK_SLASH = staticGet_VK_SLASH(KeyEvent)
    this.VK_0 = staticGet_VK_0(KeyEvent)
    this.VK_1 = staticGet_VK_1(KeyEvent)
    this.VK_2 = staticGet_VK_2(KeyEvent)
    this.VK_3 = staticGet_VK_3(KeyEvent)
    this.VK_4 = staticGet_VK_4(KeyEvent)
    this.VK_5 = staticGet_VK_5(KeyEvent)
    this.VK_6 = staticGet_VK_6(KeyEvent)
    this.VK_7 = staticGet_VK_7(KeyEvent)
    this.VK_8 = staticGet_VK_8(KeyEvent)
    this.VK_9 = staticGet_VK_9(KeyEvent)
    this.VK_SEMICOLON = staticGet_VK_SEMICOLON(KeyEvent)
    this.VK_EQUALS = staticGet_VK_EQUALS(KeyEvent)
    this.VK_A = staticGet_VK_A(KeyEvent)
    this.VK_B = staticGet_VK_B(KeyEvent)
    this.VK_C = staticGet_VK_C(KeyEvent)
    this.VK_D = staticGet_VK_D(KeyEvent)
    this.VK_E = staticGet_VK_E(KeyEvent)
    this.VK_F = staticGet_VK_F(KeyEvent)
    this.VK_G = staticGet_VK_G(KeyEvent)
    this.VK_H = staticGet_VK_H(KeyEvent)
    this.VK_I = staticGet_VK_I(KeyEvent)
    this.VK_J = staticGet_VK_J(KeyEvent)
    this.VK_K = staticGet_VK_K(KeyEvent)
    this.VK_L = staticGet_VK_L(KeyEvent)
    this.VK_M = staticGet_VK_M(KeyEvent)
    this.VK_N = staticGet_VK_N(KeyEvent)
    this.VK_O = staticGet_VK_O(KeyEvent)
    this.VK_P = staticGet_VK_P(KeyEvent)
    this.VK_Q = staticGet_VK_Q(KeyEvent)
    this.VK_R = staticGet_VK_R(KeyEvent)
    this.VK_S = staticGet_VK_S(KeyEvent)
    this.VK_T = staticGet_VK_T(KeyEvent)
    this.VK_U = staticGet_VK_U(KeyEvent)
    this.VK_V = staticGet_VK_V(KeyEvent)
    this.VK_W = staticGet_VK_W(KeyEvent)
    this.VK_X = staticGet_VK_X(KeyEvent)
    this.VK_Y = staticGet_VK_Y(KeyEvent)
    this.VK_Z = staticGet_VK_Z(KeyEvent)
    this.VK_OPEN_BRACKET = staticGet_VK_OPEN_BRACKET(KeyEvent)
    this.VK_BACK_SLASH = staticGet_VK_BACK_SLASH(KeyEvent)
    this.VK_CLOSE_BRACKET = staticGet_VK_CLOSE_BRACKET(KeyEvent)
    this.VK_NUMPAD0 = staticGet_VK_NUMPAD0(KeyEvent)
    this.VK_NUMPAD1 = staticGet_VK_NUMPAD1(KeyEvent)
    this.VK_NUMPAD2 = staticGet_VK_NUMPAD2(KeyEvent)
    this.VK_NUMPAD3 = staticGet_VK_NUMPAD3(KeyEvent)
    this.VK_NUMPAD4 = staticGet_VK_NUMPAD4(KeyEvent)
    this.VK_NUMPAD5 = staticGet_VK_NUMPAD5(KeyEvent)
    this.VK_NUMPAD6 = staticGet_VK_NUMPAD6(KeyEvent)
    this.VK_NUMPAD7 = staticGet_VK_NUMPAD7(KeyEvent)
    this.VK_NUMPAD8 = staticGet_VK_NUMPAD8(KeyEvent)
    this.VK_NUMPAD9 = staticGet_VK_NUMPAD9(KeyEvent)
    this.VK_MULTIPLY = staticGet_VK_MULTIPLY(KeyEvent)
    this.VK_ADD = staticGet_VK_ADD(KeyEvent)
    this.VK_SEPARATER = staticGet_VK_SEPARATER(KeyEvent)
    this.VK_SEPARATOR = staticGet_VK_SEPARATOR(KeyEvent)
    this.VK_SUBTRACT = staticGet_VK_SUBTRACT(KeyEvent)
    this.VK_DECIMAL = staticGet_VK_DECIMAL(KeyEvent)
    this.VK_DIVIDE = staticGet_VK_DIVIDE(KeyEvent)
    this.VK_DELETE = staticGet_VK_DELETE(KeyEvent)
    this.VK_NUM_LOCK = staticGet_VK_NUM_LOCK(KeyEvent)
    this.VK_SCROLL_LOCK = staticGet_VK_SCROLL_LOCK(KeyEvent)
    this.VK_F1 = staticGet_VK_F1(KeyEvent)
    this.VK_F2 = staticGet_VK_F2(KeyEvent)
    this.VK_F3 = staticGet_VK_F3(KeyEvent)
    this.VK_F4 = staticGet_VK_F4(KeyEvent)
    this.VK_F5 = staticGet_VK_F5(KeyEvent)
    this.VK_F6 = staticGet_VK_F6(KeyEvent)
    this.VK_F7 = staticGet_VK_F7(KeyEvent)
    this.VK_F8 = staticGet_VK_F8(KeyEvent)
    this.VK_F9 = staticGet_VK_F9(KeyEvent)
    this.VK_F10 = staticGet_VK_F10(KeyEvent)
    this.VK_F11 = staticGet_VK_F11(KeyEvent)
    this.VK_F12 = staticGet_VK_F12(KeyEvent)
    this.VK_F13 = staticGet_VK_F13(KeyEvent)
    this.VK_F14 = staticGet_VK_F14(KeyEvent)
    this.VK_F15 = staticGet_VK_F15(KeyEvent)
    this.VK_F16 = staticGet_VK_F16(KeyEvent)
    this.VK_F17 = staticGet_VK_F17(KeyEvent)
    this.VK_F18 = staticGet_VK_F18(KeyEvent)
    this.VK_F19 = staticGet_VK_F19(KeyEvent)
    this.VK_F20 = staticGet_VK_F20(KeyEvent)
    this.VK_F21 = staticGet_VK_F21(KeyEvent)
    this.VK_F22 = staticGet_VK_F22(KeyEvent)
    this.VK_F23 = staticGet_VK_F23(KeyEvent)
    this.VK_F24 = staticGet_VK_F24(KeyEvent)
    this.VK_PRINTSCREEN = staticGet_VK_PRINTSCREEN(KeyEvent)
    this.VK_INSERT = staticGet_VK_INSERT(KeyEvent)
    this.VK_HELP = staticGet_VK_HELP(KeyEvent)
    this.VK_META = staticGet_VK_META(KeyEvent)
    this.VK_BACK_QUOTE = staticGet_VK_BACK_QUOTE(KeyEvent)
    this.VK_QUOTE = staticGet_VK_QUOTE(KeyEvent)
    this.VK_KP_UP = staticGet_VK_KP_UP(KeyEvent)
    this.VK_KP_DOWN = staticGet_VK_KP_DOWN(KeyEvent)
    this.VK_KP_LEFT = staticGet_VK_KP_LEFT(KeyEvent)
    this.VK_KP_RIGHT = staticGet_VK_KP_RIGHT(KeyEvent)
    this.VK_DEAD_GRAVE = staticGet_VK_DEAD_GRAVE(KeyEvent)
    this.VK_DEAD_ACUTE = staticGet_VK_DEAD_ACUTE(KeyEvent)
    this.VK_DEAD_CIRCUMFLEX = staticGet_VK_DEAD_CIRCUMFLEX(KeyEvent)
    this.VK_DEAD_TILDE = staticGet_VK_DEAD_TILDE(KeyEvent)
    this.VK_DEAD_MACRON = staticGet_VK_DEAD_MACRON(KeyEvent)
    this.VK_DEAD_BREVE = staticGet_VK_DEAD_BREVE(KeyEvent)
    this.VK_DEAD_ABOVEDOT = staticGet_VK_DEAD_ABOVEDOT(KeyEvent)
    this.VK_DEAD_DIAERESIS = staticGet_VK_DEAD_DIAERESIS(KeyEvent)
    this.VK_DEAD_ABOVERING = staticGet_VK_DEAD_ABOVERING(KeyEvent)
    this.VK_DEAD_DOUBLEACUTE = staticGet_VK_DEAD_DOUBLEACUTE(KeyEvent)
    this.VK_DEAD_CARON = staticGet_VK_DEAD_CARON(KeyEvent)
    this.VK_DEAD_CEDILLA = staticGet_VK_DEAD_CEDILLA(KeyEvent)
    this.VK_DEAD_OGONEK = staticGet_VK_DEAD_OGONEK(KeyEvent)
    this.VK_DEAD_IOTA = staticGet_VK_DEAD_IOTA(KeyEvent)
    this.VK_DEAD_VOICED_SOUND = staticGet_VK_DEAD_VOICED_SOUND(KeyEvent)
    this.VK_DEAD_SEMIVOICED_SOUND = staticGet_VK_DEAD_SEMIVOICED_SOUND(KeyEvent)
    this.VK_AMPERSAND = staticGet_VK_AMPERSAND(KeyEvent)
    this.VK_ASTERISK = staticGet_VK_ASTERISK(KeyEvent)
    this.VK_QUOTEDBL = staticGet_VK_QUOTEDBL(KeyEvent)
    this.VK_LESS = staticGet_VK_LESS(KeyEvent)
    this.VK_GREATER = staticGet_VK_GREATER(KeyEvent)
    this.VK_BRACELEFT = staticGet_VK_BRACELEFT(KeyEvent)
    this.VK_BRACERIGHT = staticGet_VK_BRACERIGHT(KeyEvent)
    this.VK_AT = staticGet_VK_AT(KeyEvent)
    this.VK_COLON = staticGet_VK_COLON(KeyEvent)
    this.VK_CIRCUMFLEX = staticGet_VK_CIRCUMFLEX(KeyEvent)
    this.VK_DOLLAR = staticGet_VK_DOLLAR(KeyEvent)
    this.VK_EURO_SIGN = staticGet_VK_EURO_SIGN(KeyEvent)
    this.VK_EXCLAMATION_MARK = staticGet_VK_EXCLAMATION_MARK(KeyEvent)
    this.VK_INVERTED_EXCLAMATION_MARK = staticGet_VK_INVERTED_EXCLAMATION_MARK(KeyEvent)
    this.VK_LEFT_PARENTHESIS = staticGet_VK_LEFT_PARENTHESIS(KeyEvent)
    this.VK_NUMBER_SIGN = staticGet_VK_NUMBER_SIGN(KeyEvent)
    this.VK_PLUS = staticGet_VK_PLUS(KeyEvent)
    this.VK_RIGHT_PARENTHESIS = staticGet_VK_RIGHT_PARENTHESIS(KeyEvent)
    this.VK_UNDERSCORE = staticGet_VK_UNDERSCORE(KeyEvent)
    this.VK_WINDOWS = staticGet_VK_WINDOWS(KeyEvent)
    this.VK_CONTEXT_MENU = staticGet_VK_CONTEXT_MENU(KeyEvent)
    this.VK_FINAL = staticGet_VK_FINAL(KeyEvent)
    this.VK_CONVERT = staticGet_VK_CONVERT(KeyEvent)
    this.VK_NONCONVERT = staticGet_VK_NONCONVERT(KeyEvent)
    this.VK_ACCEPT = staticGet_VK_ACCEPT(KeyEvent)
    this.VK_MODECHANGE = staticGet_VK_MODECHANGE(KeyEvent)
    this.VK_KANA = staticGet_VK_KANA(KeyEvent)
    this.VK_KANJI = staticGet_VK_KANJI(KeyEvent)
    this.VK_ALPHANUMERIC = staticGet_VK_ALPHANUMERIC(KeyEvent)
    this.VK_KATAKANA = staticGet_VK_KATAKANA(KeyEvent)
    this.VK_HIRAGANA = staticGet_VK_HIRAGANA(KeyEvent)
    this.VK_FULL_WIDTH = staticGet_VK_FULL_WIDTH(KeyEvent)
    this.VK_HALF_WIDTH = staticGet_VK_HALF_WIDTH(KeyEvent)
    this.VK_ROMAN_CHARACTERS = staticGet_VK_ROMAN_CHARACTERS(KeyEvent)
    this.VK_ALL_CANDIDATES = staticGet_VK_ALL_CANDIDATES(KeyEvent)
    this.VK_PREVIOUS_CANDIDATE = staticGet_VK_PREVIOUS_CANDIDATE(KeyEvent)
    this.VK_CODE_INPUT = staticGet_VK_CODE_INPUT(KeyEvent)
    this.VK_JAPANESE_KATAKANA = staticGet_VK_JAPANESE_KATAKANA(KeyEvent)
    this.VK_JAPANESE_HIRAGANA = staticGet_VK_JAPANESE_HIRAGANA(KeyEvent)
    this.VK_JAPANESE_ROMAN = staticGet_VK_JAPANESE_ROMAN(KeyEvent)
    this.VK_KANA_LOCK = staticGet_VK_KANA_LOCK(KeyEvent)
    this.VK_INPUT_METHOD_ON_OFF = staticGet_VK_INPUT_METHOD_ON_OFF(KeyEvent)
    this.VK_CUT = staticGet_VK_CUT(KeyEvent)
    this.VK_COPY = staticGet_VK_COPY(KeyEvent)
    this.VK_PASTE = staticGet_VK_PASTE(KeyEvent)
    this.VK_UNDO = staticGet_VK_UNDO(KeyEvent)
    this.VK_AGAIN = staticGet_VK_AGAIN(KeyEvent)
    this.VK_FIND = staticGet_VK_FIND(KeyEvent)
    this.VK_PROPS = staticGet_VK_PROPS(KeyEvent)
    this.VK_STOP = staticGet_VK_STOP(KeyEvent)
    this.VK_COMPOSE = staticGet_VK_COMPOSE(KeyEvent)
    this.VK_ALT_GRAPH = staticGet_VK_ALT_GRAPH(KeyEvent)
    this.VK_BEGIN = staticGet_VK_BEGIN(KeyEvent)
    this.VK_UNDEFINED = staticGet_VK_UNDEFINED(KeyEvent)
    nothing
end

function initABKeyEventWrapper(this::ABKeyEventWrapper)
    initFieldsABKeyEventWrapper(this)
end

function newABKeyEventWrapper()
    this = ABKeyEventWrapper()
    initABKeyEventWrapper(this)
    this
end


function getInstance(::Type{ABKeyEventWrapper})
        return staticGet_instance(ABKeyEventWrapper)
end

