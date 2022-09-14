$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDTextFit {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Mode
     single or multi Algorithm to fit the text. Use single for headlines and multi for paragraphs. Default is single

    .PARAMETER SingleModeWidth
    When mode is single and forceSingleModeWidth is true, the element's height will be ignored. Default is false

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDTextFit -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [ValidateSet("single","multi")]
        [string]$Mode = "single",
        [Parameter()]
        [bool]$SingleModeWidth = $false,
        [Patermeter()]
        [string]$Text
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udtextfit"
            id = $Id

            mode = $Mode
            singleWidth = $SingleModeWidth
            text = $text

        }
    }
}