class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage "https://github.com/cloud-native-toolkit/itzcli"
    version "1.22"
    url "https://github.com/cloud-native-toolkit/itzcli/archive/refs/tags/1.22.tar.gz"
    sha256 "c42a6128a1325bf01df01a9e2aeebf2248b4d13fe81ef6f8b033d31686b3bb45"
    license "Apache"

    depends_on "go" => :build
  
    def install
        #ENV["GOPATH"] = buildpath
        #LDFLAGS="-X main.Version=${ITZ_VER}"
        bin.install 'itz'
        #bin.install 'itzcli'
        system "go", "build", "-o", "#{bin}/itzcli"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}itz version")
    end
end
