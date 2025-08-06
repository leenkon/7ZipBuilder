param(
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [string] $buildDir,
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [string] $BuildVersion
)

$workDir = $PSScriptRoot
$resDir = "$workDir\Resources"
$buildDir = "$workDir\$BuildVersion"

# 拷贝资源文件
Copy-Item -Force -Path "$resDir\Format7zF.rc" -Destination "$buildDir\CPP\7zip\Bundles\Format7zF\resource.rc"
Copy-Item -Force -Path "$resDir\Fm.rc" -Destination "$buildDir\CPP\7zip\Bundles\Fm\resource.rc"

# 拷贝UI图
Copy-Item -Force -Path "$resDir\ToolBarIcons\*.bmp" -Destination "$buildDir\CPP\7zip\UI\FileManager"

# 拷贝图标
Copy-Item -Force -Recurse -Path "$resDir\FileIcons\*.ico" -Destination "$buildDir\CPP\7zip\Archive\Icons"
