require "bawi/engine"

module Bawi
  mattr_accessor :user_class
  
  @@user_class ||= "User"
end
