if(($null -eq $TestName) -or ($TestName -contains 'New-AzServiceGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzServiceGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzServiceGroup' {
    It 'New-AzServiceGroup -Name <missing>' {
        {
            New-AzServiceGroup 
        } | Should -Throw 
    }

    It 'New-AzServiceGroup -Name -DisplayName <missing>' {
        {
            New-AzServiceGroup 
                -Name "cmdletServiceGroup" `
        } | Should -Throw 
    }

    It 'New-AzServiceGroup -Name -DisplayName -ParentResourceId <missing>' {
        {
            New-AzServiceGroup 
                -Name "cmdletServiceGroup" `
                -DisplayName "cmdletServiceGroup" `
        } | Should -Throw 
    }

    It 'New-AzServiceGroup -Name -DisplayName -ParentResourceId' {
        {
            New-AzServiceGroup `
                -Name "cmdletServiceGroup" `
                -DisplayName "cmdletServiceGroup" `
                -ParentResourceId "/providers/Microsoft.Management/serviceGroups/94430a9c-83e9-4f08-bbb0-64fccd0661fc"
        } | Should -Not -Throw
    }
}
