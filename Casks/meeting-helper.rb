cask "meeting-helper" do
  version "2026.01.04-b5b7e67"
  sha256 "044341f8cdbda89eab8f61cf13555c01d0becedccdd52c7a22d09fa8d19dd772"

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
