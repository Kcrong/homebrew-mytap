cask "meeting-helper" do
  version "2026.01.04-7d60eb6"
  sha256 "d14086a3cb8c1a2a9c5815b478446aed8617f086d95cba8b23ffba2743290a5b"

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
