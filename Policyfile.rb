# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'wit-cookbook'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'wit-cookbook::default'

# Specify a custom source for a single cookbook:
# cookbook 'opsworks_ruby', '1.4.0'
cookbook 'wit-cookbook', path: '.'
cookbook 'packages', '~> 1.0.0'
cookbook 'mysql', '~> 11.0.8', :supermarket