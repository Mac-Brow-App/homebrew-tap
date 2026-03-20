cask "brow" do
  version :latest
  sha256 :no_check

  url "https://releases.brow-app.com/Brow-latest.dmg"
  name "Brow"
  desc "All-in-one Mac productivity app with launcher, clipboard, window manager, and more"
  homepage "https://brow-app.com"

  depends_on macos: ">= :ventura"

  app "Brow.app"

  zap trash: [
    "~/Library/Application Support/com.bp.brow",
    "~/Library/Caches/com.bp.brow",
    "~/Library/HTTPStorages/com.bp.brow",
    "~/Library/Preferences/com.bp.brow.plist",
  ]
end
