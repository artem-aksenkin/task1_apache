# # encoding: utf-8

# Inspec test for recipe task1_apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe port(80) do
  it { should be_listening }
end

describe port(443) do
  it { should_not be_listening }
end


describe package("httpd") do
  it { should be_installed }
end

describe service("httpd") do
  it { should be_enabled }
  it { should be_running }
end