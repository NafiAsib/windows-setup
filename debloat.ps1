$choices = '&Yes', '&No'

$xbox = $Host.UI.PromptForChoice('', 'Remove Xbox apps?', $choices, 1)
$skype = $Host.UI.PromptForChoice('', 'Remove Skype?', $choices, 1)
$office_one = $Host.UI.PromptForChoice('', 'Remove Office One apps?', $choices, 1)

if ($xbox -eq 0) {
    Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
}

if ($skype -eq 0) {
    Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
}

Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCommunicationsApps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage

if ($office_one -eq 0) {
    Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage
    Get-AppxPackage *Microsoft.Office.Todo.List* | Remove-AppxPackage
    C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
}