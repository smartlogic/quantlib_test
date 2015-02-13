module QuantLib
  extend FFI::Library
  class ReturnValue < FFI::Struct
    layout :value, :int
  end
  ffi_lib "test_quantlib.so"
  attach_function :test, [:int, :float], ReturnValue.by_value
end
