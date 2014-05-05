require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true

  c.before :each do
    if ENV['STRICT_VARIABLES'] == 'yes'
      Puppet.settings[:strict_variables]=true
    end
  end
end

shared_examples :compile, :compile => true do
  it { should compile.with_all_deps }
end
