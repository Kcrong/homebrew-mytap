cask "meeting-helper" do
  version "2026.01.04-9487b0f"
  sha256 "8665e5efc65c98bb67d702c74e00131beb58084b7630ddf47d80573cc08cb934"

  url "https://github.com/kcrong/meetinghelper/releases/download/v#{version}/MeetingHelper.dmg"
  name "Meeting Helper"
  desc "Real-time meeting transcription with AI assistant"
  homepage "https://github.com/kcrong/meetinghelper"

  depends_on macos: ">= :ventura"

  app "MeetingHelper.app"

  zap trash: [
    "~/Library/Preferences/com.example.MeetingHelper.plist",
  ]
end
