class Atk < Formula
    desc "The atk command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/atkcli-release/releases/download/v0.1.11/atkcli-darwin-amd64.tar.gz"
    sha256 "0aed0716f1a8023242ba3fd6c0b1b9c819b27657b6dedb7d885a95740f421c0e"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'atk'
    end
  
  end
  