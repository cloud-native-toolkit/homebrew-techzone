class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage ""
    url "https://github.com/cloud-native-toolkit/itzcli-release/releases/download/v0.1.22/itzcli-darwin-amd64.tar.gz"
    sha256 "35a74784ad33806b68342466ca396bbfeb727d0a1d5b9f640f43d6342b8be25e"
    license ""
  
    # depends_on "cmake" => :build
    def install
        bin.install 'itz'
        bin.install 'itzcli'
    end
  
  end
