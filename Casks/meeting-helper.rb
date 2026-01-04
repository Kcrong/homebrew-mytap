cask "meeting-helper" do
  version "2025.12.31-b6c5b21"
  sha256 "dee2dfa2bdf7c4bae5f29bb7d6df55c14464da102f9386d98596450a397a3ff7"

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
