module Picli
  class Config < Clian::Config::Toplevel

    class General < Clian::Config::Element
      define_syntax :client_id => String,
                    :client_secret => String,
                    :token_store_path => String,
                    :context_store => String,
                    :default_user => String
    end # General

    define_syntax :general => General

  end # Config
end # Picli
