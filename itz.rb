class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/itzcli-release/releases/download/v0.1.18/itzcli-darwin-amd64.tar.gz"
    sha256 "9a2c17c4b19a1f739184b64c79eb53518b941bf98b0f475eff1c0b744c633a7a"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'itz'
        bin.install 'itzcli'
    end
  
  end
