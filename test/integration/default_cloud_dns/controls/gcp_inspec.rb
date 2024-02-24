# Chef InSpec
# https://www.chef.io/inspec

# Since this is the default test, we want to test as much as possible here and not be
# redundant in the other tests.

project = input('project')

control 'dns_managed_zone' do
  title 'DNS Managed Zone'

  # DNS Managed Zone Resource
  # https://docs.chef.io/inspec/resources/google_dns_managed_zone

  describe google_dns_managed_zone(project: project, zone: 'gcp-priv-osinfra-io') do
    it { should exist }
    its('dns_name') { should cmp 'gcp-priv.osinfra.io.' }

    # To access the network_url property correctly, you need to iterate over each network object in the array.

    its('private_visibility_config.networks') do
      networks = subject.private_visibility_config.networks

      # By using the map method with &:network_url, we can efficiently extract the network_url property from each object
      # in the networks array and perform the necessary assertion.

      network_urls = networks.map(&:network_url)
      expect(network_urls).to include("https://www.googleapis.com/compute/v1/projects/#{project}/global/networks/kitchen-vpc")
    end
    its('visibility') { should eq 'private' }
  end

  describe google_dns_managed_zone(project: project, zone: 'gcp-osinfra-io') do
    it { should exist }
    its('dns_name') { should cmp 'gcp.osinfra.io.' }
    its('dnssec_config.state') { should eq 'on' }
    its('visibility') { should eq 'public' }
  end
end
