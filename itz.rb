class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/itzcli-release/releases/download/v0.1.20/itzcli-darwin-amd64.tar.gz"
    sha256 "d5d8682b2248dcd48b6c2560500419fdc422b28d30a93653cedd6bebb80f3373"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'itz'
        bin.install 'itzcli'
    end
  
  end
