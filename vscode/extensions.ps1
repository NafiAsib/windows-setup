# List all extensions
$ls_extensions = "code --list-extensions"
Invoke-Expression $ls_extensions -OutVariable output | Out-Null
$installed_extensions = $output -split "\s"

$ui_extensions = 
"teabyii.ayu",
"pkief.material-icon-theme"

$js_extensions = 
"formulahendry.auto-rename-tag",
"esbenp.prettier-vscode",
"dbaeumer.vscode-eslint",
"dsznajder.es7-react-js-snippets",
"albert.TabOut"

$live_server_extension = "ritwickdey.liveserver"

$flutter_extensions =
"dart-code.flutter",
"dart-code.dart-code",
"hirantha.json-to-dart",
"kisstkondoros.vscode-gutter-preview"

$ps_extension = "ms-vscode.powershell"

$choices = '&Yes', '&No'

$ui = $Host.UI.PromptForChoice('', 'Install ayu theme & Material icons?', $choices, 0)
$js = $Host.UI.PromptForChoice('', 'Install extensions for Web Development(React & Node)?', $choices, 0)
$live_server = $Host.UI.PromptForChoice('', 'Install live server extension?', $choices, 1)
$flutter = $Host.UI.PromptForChoice('', 'Install extension for Flutter?', $choices, 1)
$ps = $Host.UI.PromptForChoice('', 'Install extension for developing powershell scripts?', $choices, 1)

# Themes
if ($ui -eq 0) {
    foreach ($extension in $ui_extensions) {
        if ($installed_extensions.Contains($extension)) {
            Write-Host $extension "already installed." -ForegroundColor Gray
        }
        else {
            Write-Host "Installing" $extension "..." -ForegroundColor White
            code --install-extension $extension
        }
    }
    Write-Host 'Installed theme & icon pack!'
}
else {
    Write-Host 'Cancelled installation theme & icon pack'
}

# Web Development w/ JS
if ($js -eq 0) {
    foreach ($extension in $js_extensions) {
        if ($installed_extensions.Contains($extension)) {
            Write-Host $extension "already installed." -ForegroundColor Gray
        }
        else {
            Write-Host "Installing" $extension "..." -ForegroundColor White
            code --install-extension $extension
        }
    }
    Write-Host 'Installed all JavaScript extensions'
}
else {
    Write-Host 'Cancelled installation of JavaScript extensions'
}

# Live server
if ($live_server -eq 0) {
    if ($installed_extensions.Contains($live_server_extension)) {
        Write-Host $live_server_extension "already installed." -ForegroundColor Gray
    }
    else {
        Write-Host "Installing" $live_server_extension "..." -ForegroundColor White
        code --install-extension $live_server_extension
    }
    Write-Host 'Installed all JavaScript extensions'
}
else {
    Write-Host 'Cancelled installation of liver server'
}

# Flutter
if ($flutter -eq 0) {
    foreach ($extension in $flutter_extensions) {
        if ($installed_extensions.Contains($extension)) {
            Write-Host $extension "already installed." -ForegroundColor Gray
        }
        else {
            Write-Host "Installing" $extension "..." -ForegroundColor White
            code --install-extension $extension
        }
    }
    Write-Host 'Installed all Flutter extensions'
}
else {
    Write-Host 'Cancelled installation of Flutter extensions'
}

# Powershell
if ($ps -eq 0) {
    if ($installed_extensions.Contains($ps_extension)) {
        Write-Host $ps_extension "already installed." -ForegroundColor Gray
    }
    else {
        Write-Host "Installing" $ps_extension "..." -ForegroundColor White
        code --install-extension $ps_extension
    }
    Write-Host 'Installed PowerShell extensions'
}
else {
    Write-Host 'Cancelled installation of PowerShell extensions'
}



# https://stackoverflow.com/questions/24649019/how-to-use-confirm-in-powershell
<#
abstract int PromptForChoice(System::String ^ caption, System::String ^ message, System::Collections::ObjectModel::Collection<System::Management::Automation::Host::ChoiceDescription ^> ^ choices, int defaultChoice);
#>