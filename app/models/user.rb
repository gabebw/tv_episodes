class User < ActiveRecord::Base
  # Automagically adds authlogic magic
  acts_as_authentic
end
