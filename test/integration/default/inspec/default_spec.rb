describe package('curl') do
  it { should be_installed }
end

describe package('gnupg') do
  it { should be_installed }
end

describe package('debian-archive-keyring') do
  it { should be_installed }
end

describe package('apt-transport-https') do
  it { should be_installed }
end

describe apt('https://packagecloud.io/sensu/prerelease/debian/') do
  it { should exist }
  it { should be_enabled }
end
