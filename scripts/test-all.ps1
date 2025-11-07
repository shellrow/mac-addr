#!/usr/bin/env pwsh
# PowerShell 7+ recommended

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Run-Pair {
    param (
        [Parameter(Mandatory = $false)]
        [string[]]$Args
    )

    Write-Host ""
    Write-Host "=== cargo build $Args ===" -ForegroundColor Cyan
    cargo build @Args

    Write-Host "=== cargo test  $Args ===" -ForegroundColor Yellow
    cargo test @Args
}

# 1) default (std)
Run-Pair

# 2) no_std
Run-Pair --no-default-features

# 3) alloc only
Run-Pair --no-default-features --features alloc

# 4) serde only
Run-Pair --no-default-features --features serde

# 5) alloc + serde
Run-Pair --no-default-features --features alloc,serde

# 6) all features
Run-Pair --all-features
