$choices = '&Yes', '&No'

$ssh = $Host.UI.PromptForChoice('', 'Would you like to setup ssh key?', $choices, 1)
$git = $Host.UI.PromptForChoice('', 'Would you like to setup gitconfig?', $choices, 1)

if ($ssh -eq 0) {
    ssh-keygen -P """"
    Copy-Item ".\config" -Destination $env:userprofile\.ssh\
    # New-Item $env:userprofile\.ssh\test.txt
}

if ($git -eq 0) {
    Copy-Item ".\.gitconfig" -Destination $env:userprofile\
}