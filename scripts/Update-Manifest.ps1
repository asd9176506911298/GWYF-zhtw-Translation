param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot)
)

$translationsRoot = Join-Path $RepoRoot "translations"
$manifestPath = Join-Path $RepoRoot "manifest.txt"

if (-not (Test-Path $translationsRoot)) {
    throw "translations folder not found: $translationsRoot"
}

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# relative/path|sha256|size")

Get-ChildItem -LiteralPath $translationsRoot -Recurse -File |
    Sort-Object FullName |
    ForEach-Object {
        $rootWithSlash = (Resolve-Path -LiteralPath $translationsRoot).Path
        if (-not $rootWithSlash.EndsWith('\')) {
            $rootWithSlash += '\'
        }
        $full = (Resolve-Path -LiteralPath $_.FullName).Path
        $relative = $full.Substring($rootWithSlash.Length).Replace('\','/')
        $hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
        $lines.Add("$relative|$hash|$($_.Length)")
    }

Set-Content -LiteralPath $manifestPath -Value $lines -Encoding UTF8
Write-Host "Updated manifest: $manifestPath"
