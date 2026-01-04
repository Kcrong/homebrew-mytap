cask "meeting-helper" do
  version "2026.01.04-28c0e3c"
  sha256 "6e198db1345e4ac6304779acb25013c7386b2822a48462bc1508b7923a71f6f0"

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
