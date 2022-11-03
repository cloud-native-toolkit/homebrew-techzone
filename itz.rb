class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/itzcli-release/releases/download/v0.1.17/itzcli-darwin-amd64.tar.gz"
    sha256 "90e2d8722b09d82f00a0c77447542879addaf3c6d88f5467e2ee812a5e5df6c0"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'itz'
        bin.install 'itzcli'
    end
  
  end
