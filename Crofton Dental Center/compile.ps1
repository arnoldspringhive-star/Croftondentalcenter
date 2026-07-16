# compile.ps1
# Crofton Dental Center Static Site Compiler (No-Node Static Stack)

$ErrorActionPreference = "Stop"

# Paths
$workspaceRoot = Get-Item .
$srcDir = Join-Path $workspaceRoot "src"
$pagesDir = Join-Path $srcDir "pages"
$stylesDir = Join-Path $srcDir "styles"
$scriptsDir = Join-Path $srcDir "scripts"
$assetsDir = Join-Path $srcDir "assets"
$layoutPath = Join-Path $workspaceRoot "template-layout.html"

Write-Host "Starting Crofton Dental Center website compiler..." -ForegroundColor Cyan

# 1. Clean output directories
$foldersToClean = @("about-us", "general-dentistry", "cosmetic-dentistry", "orthodontics", "restorative-dentistry", "dental-implants", "relieving-dental-anxiety", "oral-surgery", "tmj-treatment", "community", "new-patients", "crofton-experience", "technology", "smile-gallery", "team", "contact-us", "styles", "scripts", "assets")
foreach ($folder in $foldersToClean) {
    $targetPath = Join-Path $workspaceRoot $folder
    if (Test-Path $targetPath) {
        Write-Host "Cleaning target directory: $folder" -ForegroundColor DarkGray
        Remove-Item -Path $targetPath -Recurse -Force -ErrorAction SilentlyContinue
    }
}
$filesToClean = @("index.html", "index2.html", "sleep-apnea.html", "dental-emergencies.html", "dental-technology.html", "specials-promotions.html", "patient-forms.html", "payment-options.html", "crofton-dental-center-smile-club.html")
foreach ($file in $filesToClean) {
    $targetPath = Join-Path $workspaceRoot $file
    if (Test-Path $targetPath) {
        Write-Host "Cleaning target file: $file" -ForegroundColor DarkGray
        Remove-Item -Path $targetPath -Force -ErrorAction SilentlyContinue
    }
}

# 2. Copy asset folders to root
Write-Host "Copying assets..." -ForegroundColor Gray
if (Test-Path $stylesDir) {
    $dest = Join-Path $workspaceRoot "styles"
    New-Item -ItemType Directory -Path $dest -Force | Out-Null
    Get-ChildItem -Path $stylesDir -File -Recurse | ForEach-Object {
        $targetFile = Join-Path $dest $_.Name
        try { Copy-Item -Path $_.FullName -Destination $targetFile -Force } catch { Write-Host "Style copy warning for $($_.Name): $_" -ForegroundColor Yellow }
    }
}
if (Test-Path $scriptsDir) {
    $dest = Join-Path $workspaceRoot "scripts"
    New-Item -ItemType Directory -Path $dest -Force | Out-Null
    Get-ChildItem -Path $scriptsDir -File -Recurse | ForEach-Object {
        $targetFile = Join-Path $dest $_.Name
        try { Copy-Item -Path $_.FullName -Destination $targetFile -Force } catch { Write-Host "Script copy warning for $($_.Name): $_" -ForegroundColor Yellow }
    }
}
if (Test-Path $assetsDir) {
    $dest = Join-Path $workspaceRoot "assets"
    New-Item -ItemType Directory -Path $dest -Force | Out-Null
    Get-ChildItem -Path $assetsDir -File -Recurse | ForEach-Object {
        # Get path relative to src/assets
        $relPath = $_.FullName.Substring($assetsDir.Length)
        $relPath = $relPath -replace "^[\\/]", ""
        $targetFile = Join-Path $dest $relPath
        $targetParent = Split-Path -Path $targetFile -Parent
        if (-not (Test-Path $targetParent)) { New-Item -ItemType Directory -Path $targetParent -Force | Out-Null }
        try { Copy-Item -Path $_.FullName -Destination $targetFile -Force } catch { Write-Host "Asset copy warning for $($_.Name): $_" -ForegroundColor Yellow }
    }
}

# 3. Read template layout
if (-not (Test-Path $layoutPath)) {
    Write-Error "Master layout template-layout.html not found!"
}
$layoutTemplate = Get-Content -Raw -Path $layoutPath -Encoding utf8

# 4. Recursively compile page fragments
$pages = Get-ChildItem -Path $pagesDir -Filter "*.html" -Recurse
Write-Host "Found $($pages.Count) page fragments to compile..." -ForegroundColor Gray

foreach ($page in $pages) {
    $pageRelPath = $page.FullName.Substring($pagesDir.Length)
    # Trim leading slash or backslash
    $pageRelPath = $pageRelPath -replace "^[\\/]", ""
    # Normalize slashes to forward slashes
    $pageRelPath = $pageRelPath -replace "\\", "/"

    Write-Host "Compiling: $pageRelPath" -ForegroundColor Yellow

    # Calculate output file path and path prefix
    # e.g., index.html -> root index.html, prefix "./"
    # e.g., general-dentistry/dental-cleanings-exams.html -> general-dentistry/dental-cleanings-exams/index.html, prefix "../../"
    # e.g., sleep-apnea.html -> sleep-apnea/index.html (clean URL) -> prefix "../"
    
    $outRelPath = ""
    $prefix = ""
    
    if ($pageRelPath -eq "index.html") {
        $outRelPath = "index.html"
        $prefix = "./"
    } elseif ($pageRelPath -eq "index2.html") {
        $outRelPath = "index2.html"
        $prefix = "./"
    } else {
        # Split path
        $parts = $pageRelPath.Split('/')
        $fileName = $parts[-1]
        $baseName = $fileName.Replace(".html", "")
        
        $subFolderList = @()
        if ($parts.Length -gt 1) {
            for ($i = 0; $i -lt ($parts.Length - 1); $i++) {
                $subFolderList += $parts[$i]
            }
        }
        $subFolderList += $baseName
        
        $outRelPath = ($subFolderList -join "/") + "/index.html"
        
        # Relative prefix calculator (number of directory hops back to root)
        $hops = $subFolderList.Length
        $prefix = "../" * $hops
    }
    
    # Read page content
    $pageContent = Get-Content -Raw -Path $page.FullName -Encoding utf8
    
    # Parse Metadata Comment Block
    # Look for <!-- title: ... description: ... -->
    $title = "Crofton Dental Center"
    $description = "Crofton Dental Center - Where Health and Happiness Meet"
    $activeTab = "home"
    
    if ($pageContent -match "(?s)<!--\s*(.*?)\s*-->") {
        $metaBlock = $Matches[1]
        
        if ($metaBlock -match "title:\s*(.*)") {
            $title = $Matches[1].Trim()
        }
        if ($metaBlock -match "description:\s*(.*)") {
            $description = $Matches[1].Trim()
        }
        if ($metaBlock -match "activeTab:\s*(.*)") {
            $activeTab = $Matches[1].Trim()
        }
        
        # Remove metadata comment from the HTML
        $bodyContent = $pageContent -replace "(?s)<!--.*?-->", ""
    } else {
        $bodyContent = $pageContent
    }
    
    # Substitute values in layout
    $outputHtml = $layoutTemplate
    $outputHtml = $outputHtml.Replace("{{title}}", $title)
    $outputHtml = $outputHtml.Replace("{{meta_description}}", $description)
    $outputHtml = $outputHtml.Replace("{{content}}", $bodyContent.Trim())
    $outputHtml = $outputHtml.Replace("{{path_prefix}}", $prefix)
    
    # Active navigation tab indicator replacement
    # We will replace target active tab class in layout
    $outputHtml = $outputHtml.Replace("data-nav-item=`"$activeTab`"", "data-nav-item=`"$activeTab`" class=`"active`"")
    $outputHtml = $outputHtml.Replace("data-mobile-item=`"$activeTab`"", "data-mobile-item=`"$activeTab`" class=`"active`"")
    
    # Create destination directory
    $destFile = Join-Path $workspaceRoot $outRelPath
    $destDir = Split-Path -Path $destFile -Parent
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    
    # Write output
    $outputHtml | Out-File -FilePath $destFile -Encoding utf8 -Force
    Write-Host "Generated: $outRelPath (Prefix: $prefix)" -ForegroundColor Green
}

Write-Host "Compilation completed successfully!" -ForegroundColor Green
