class Itz < Formula
    desc "The itz command line interface is a scriptable command line interface that provides CLI access to IBM TechZone."
    homepage "https://github.com/cloud-native-toolkit/itzcli"
    version "v0.1.24"
    url "https://github.com/cloud-native-toolkit/itzcli/archive/refs/tags/v0.1.24.tar.gz"
    sha256 "22945c649f337259a0bab12c2d46cd9e814f503c070e4c050a8f1b328ee5efff"
    license "Apache"

    depends_on "go" => :build
  
    def install
        bin.install 'itz'
        system "go", "build", "-ldflags", "-X main.Version=#{version.to_s}", "-o", "#{bin}/itzcli"
        # Configure command line completion for bash
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}itz version")
    end
end
