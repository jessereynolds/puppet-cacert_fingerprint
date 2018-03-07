require 'puppet'

Facter.add('cacert_fingerprint') do
  setcode do
    cacert_path = Puppet.settings['cacert']
    file_data = File.read(cacert_path)
    cert = OpenSSL::X509::Certificate.new(file_data)
    OpenSSL::Digest::SHA1.new(cert.to_der).to_s
  end
end

Facter.add('cacert_fingerprint_colonated') do
  setcode do
    cacert_path = Puppet.settings['cacert']
    file_data = File.read(cacert_path)
    cert = OpenSSL::X509::Certificate.new(file_data)
    OpenSSL::Digest::SHA1.new(cert.to_der).to_s.scan(%r{..}).map { |s| s.upcase }.join(':')
  end
end
