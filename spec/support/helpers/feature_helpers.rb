module FeatureHelpers
  def t(*args, &block)
    I18n.t(*args, &block)
  end
end

RSpec.configure {|config| config.include FeatureHelpers }
