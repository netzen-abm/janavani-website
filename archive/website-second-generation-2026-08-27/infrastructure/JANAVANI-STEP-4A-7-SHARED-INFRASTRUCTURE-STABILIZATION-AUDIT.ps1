# ============================================================
# JANAVANI — STEP 4A-7
# SHARED REBUILD INFRASTRUCTURE — STABILIZATION AUDIT
#
# READ ONLY
# NO PRODUCTION HTML/CSS/JS MODIFICATION
# NO ASSET MOVEMENT
# NO DELETION
# NO DEPLOYMENT
#
# Audits:
#   styles-rebuild.css
#   script-rebuild.js
#   gtranslation.js
#   rebuild-shell-test.html
#
# Goal:
# Establish whether the shared rebuild layer is ready to
# support all six new pages.
# ============================================================

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "JANAVANI — STEP 4A-7" -ForegroundColor Green
Write-Host "SHARED REBUILD INFRASTRUCTURE — STABILIZATION AUDIT" -ForegroundColor Yellow
Write-Host "READ ONLY — NO FILE MODIFICATION" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

# ============================================================
# 1. TARGET INVENTORY
# ============================================================

$targets = @(
    ".\styles-rebuild.css",
    ".\script-rebuild.js",
    ".\gtranslation.js",
    ".\rebuild-shell-test.html"
)

$production = @(
    ".\index.html",
    ".\about.html",
    ".\how-it-works.html",
    ".\resources.html",
    ".\vision.html",
    ".\contact.html",
    ".\styles.css",
    ".\script.js"
)

$contents = @{}

foreach ($file in $targets) {

    if (-not (Test-Path $file)) {
        Write-Host "[FAIL] Missing shared asset: $file" -ForegroundColor Red
        exit 1
    }

    $full = (Resolve-Path $file).Path
    $bytes = [System.IO.File]::ReadAllBytes($full)

    try {
        $utf8 = New-Object System.Text.UTF8Encoding($false, $true)
        $text = $utf8.GetString($bytes)
    }
    catch {
        Write-Host "[FAIL] UTF-8 decode failure: $file" -ForegroundColor Red
        exit 1
    }

    $contents[$file] = $text

    $replacement = ([regex]::Matches(
        $text,
        [regex]::Escape([string][char]0xFFFD)
    )).Count

    if ($replacement -eq 0) {
        Write-Host "[PASS] UTF-8 / Unicode integrity → $file" -ForegroundColor Green
    }
    else {
        Write-Host "[FAIL] Replacement characters → $file : $replacement" -ForegroundColor Red
    }
}

# ============================================================
# 2. PRODUCTION PROTECTION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "2. PRODUCTION FILE PROTECTION" -ForegroundColor Cyan
Write-Host "============================================================"

foreach ($file in $production) {

    if (Test-Path $file) {
        Write-Host "[PROTECTED / PRESENT] $file" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] Missing expected production file: $file" -ForegroundColor Yellow
    }
}

# ============================================================
# 3. SHELL STRUCTURE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "3. SHARED SHELL STRUCTURE" -ForegroundColor Cyan
Write-Host "============================================================"

$shell = $contents[".\rebuild-shell-test.html"]

$requiredShellMarkers = @(
    "<!doctype html",
    "<html",
    "<head",
    "<meta charset",
    "<meta name=",
    "<title",
    "<body",
    "<a",
    "<header",
    "<nav",
    "<main",
    "<footer",
    "skip-link",
    "jv-site-header",
    "jv-navigation",
    "jv-site-footer",
    "jv-scroll-top",
    "jv-menu-toggle",
    "jv-language",
    "jv-social-links"
)

foreach ($marker in $requiredShellMarkers) {

    if ($shell -match [regex]::Escape($marker)) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 4. HEADER / STICKY NAVIGATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "4. HEADER / STICKY NAVIGATION CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$css = $contents[".\styles-rebuild.css"]
$js  = $contents[".\script-rebuild.js"]

$stickyChecks = @(
    "position:\s*sticky",
    "top:\s*0",
    "z-index",
    "\.jv-site-header",
    "\.jv-header-inner",
    "\.jv-navigation",
    "\.jv-menu-toggle"
)

foreach ($pattern in $stickyChecks) {

    if ($css -match $pattern) {
        Write-Host "[FOUND CSS] $pattern" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW CSS] $pattern" -ForegroundColor Yellow
    }
}

$navJsChecks = @(
    "\.jv-menu-toggle",
    "\.jv-navigation",
    "aria-expanded",
    "aria-controls",
    "Escape",
    "focus"
)

foreach ($pattern in $navJsChecks) {

    if ($js -match [regex]::Escape($pattern)) {
        Write-Host "[FOUND JS] $pattern" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW JS] $pattern" -ForegroundColor Yellow
    }
}

# ============================================================
# 5. BACK-TO-TOP CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "5. BACK-TO-TOP CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$backTopChecks = @(
    "jv-scroll-top",
    "initBackToTop",
    "scroll",
    "scrollTo",
    "hidden",
    "aria-label"
)

foreach ($marker in $backTopChecks) {

    $found = ($css -match [regex]::Escape($marker)) -or
             ($js -match [regex]::Escape($marker)) -or
             ($shell -match [regex]::Escape($marker))

    if ($found) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 6. FOOTER / SOCIAL CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "6. FOOTER / SOCIAL INFRASTRUCTURE" -ForegroundColor Cyan
Write-Host "============================================================"

$sharedFooterMarkers = @(
    ".jv-site-footer",
    ".jv-footer-inner",
    ".jv-footer-grid",
    ".jv-footer-navigation",
    ".jv-social-links",
    ".jv-social-link",
    ".jv-social-monogram",
    "[data-current-year]"
)

foreach ($marker in $sharedFooterMarkers) {

    $found = ($css -match [regex]::Escape($marker)) -or
             ($js -match [regex]::Escape($marker)) -or
             ($shell -match [regex]::Escape($marker))

    if ($found) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 7. TRANSLATION BOUNDARY
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "7. TRANSLATION INFRASTRUCTURE BOUNDARY" -ForegroundColor Cyan
Write-Host "============================================================"

$translation = $contents[".\gtranslation.js"]

$translationMarkers = @(
    "translate",
    "language",
    "select",
    "option",
    "gt-",
    "DOMContentLoaded"
)

foreach ($marker in $translationMarkers) {

    if ($translation -match [regex]::Escape($marker)) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

if ($translation -match "https://cdn\.gtranslate\.net") {
    Write-Host "[FOUND] GTranslate CDN dependency" -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] GTranslate CDN dependency not detected" -ForegroundColor Yellow
}

if ($js -match "gtranslate|translate\.google|googtrans|TranslateElement|googleTranslateElementInit") {
    Write-Host "[REVIEW] Rebuild JS contains translator-specific logic." -ForegroundColor Yellow
}
else {
    Write-Host "[PASS] Rebuild JS does not contain obvious translator implementation." -ForegroundColor Green
}

if ($shell -match "gtranslation\.js" -and $shell -match "script-rebuild\.js") {
    Write-Host "[PASS] Shell loads translation and rebuild JS separately." -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Shared script loading boundary." -ForegroundColor Yellow
}

# ============================================================
# 8. CSS → SHELL CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "8. CSS → SHELL CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$shellClasses = [regex]::Matches(
    $shell,
    'class\s*=\s*"([^"]+)"'
) |
ForEach-Object {
    $_.Groups[1].Value -split '\s+'
} |
Where-Object { $_ } |
Sort-Object -Unique

$missingCss = @()

foreach ($class in $shellClasses) {

    if ($class -match '^(active|open|hidden|visible|js-|no-js)$') {
        continue
    }

    if ($css -notmatch ("(?m)\." + [regex]::Escape($class) + "(\b|[\s:{,])")) {
        $missingCss += $class
    }
}

if ($missingCss.Count -eq 0) {
    Write-Host "[PASS] Every shell class has an obvious CSS definition." -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Shell classes without obvious CSS definitions: $($missingCss.Count)" -ForegroundColor Yellow
    $missingCss | ForEach-Object { Write-Host "  .$($_)" }
}

# ============================================================
# 9. JS → SHELL CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "9. JS → SHELL CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$selectorPatterns = [regex]::Matches(
    $js,
    '(?:querySelector|querySelectorAll)\(\s*["'']([^"'']+)["'']\s*\)'
) |
ForEach-Object {
    $_.Groups[1].Value
} |
Sort-Object -Unique

foreach ($selector in $selectorPatterns) {

    $normalized = $selector -replace ':[A-Za-z-]+(\([^)]*\))?', ''

    if ($shell -match [regex]::Escape($normalized)) {
        Write-Host "[CONNECTED] $selector" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] JS selector not obvious in shell: $selector" -ForegroundColor Yellow
    }
}

# ============================================================
# 10. PAGE-SPECIFIC LEAKAGE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "10. PAGE-SPECIFIC LOGIC LEAKAGE" -ForegroundColor Cyan
Write-Host "============================================================"

$pageNames = @(
    "index.html",
    "about.html",
    "how-it-works.html",
    "resources.html",
    "vision.html",
    "contact.html"
)

foreach ($pair in @(
    @{Name="REBUILD CSS"; Text=$css},
    @{Name="REBUILD JS"; Text=$js},
    @{Name="TRANSLATION"; Text=$translation}
)) {

    $found = @()

    foreach ($page in $pageNames) {
        if ($pair.Text.Contains($page)) {
            $found += $page
        }
    }

    if ($found.Count -eq 0) {
        Write-Host "[PASS] $($pair.Name) has no obvious production-page filename references." -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $($pair.Name) references:" -ForegroundColor Yellow
        $found | ForEach-Object { Write-Host "  $_" }
    }
}

# ============================================================
# 11. INLINE / EMBEDDED IMPLEMENTATION CHECK
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "11. SHELL IMPLEMENTATION PURITY" -ForegroundColor Cyan
Write-Host "============================================================"

$inlineStyleCount = ([regex]::Matches(
    $shell,
    '\sstyle\s*='
)).Count

$inlineScriptCount = ([regex]::Matches(
    $shell,
    '<script\b(?![^>]*\bsrc\s*=)[^>]*>'
)).Count

Write-Host "INLINE STYLE ATTRIBUTES: $inlineStyleCount"
Write-Host "INLINE SCRIPT BLOCKS:     $inlineScriptCount"

if ($inlineStyleCount -eq 0) {
    Write-Host "[PASS] No inline style attributes." -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Inline styles detected." -ForegroundColor Yellow
}

if ($inlineScriptCount -eq 0) {
    Write-Host "[PASS] No inline script blocks." -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Inline script blocks detected." -ForegroundColor Yellow
}

# ============================================================
# 12. ACCESSIBILITY CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "12. ACCESSIBILITY CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$accessibility = @(
    "aria-label",
    "aria-expanded",
    "aria-controls",
    "aria-current",
    "focus-visible",
    "prefers-reduced-motion",
    "alt=",
    "skip-link"
)

foreach ($marker in $accessibility) {

    if (
        $shell -match [regex]::Escape($marker) -or
        $css   -match [regex]::Escape($marker) -or
        $js    -match [regex]::Escape($marker)
    ) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 13. RESPONSIVE DESIGN CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "13. RESPONSIVE DESIGN CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$mediaRules = [regex]::Matches(
    $css,
    '@media[^{]+'
) |
ForEach-Object { $_.Value.Trim() } |
Sort-Object -Unique

if ($mediaRules.Count -gt 0) {
    Write-Host "[FOUND] Media-query rules: $($mediaRules.Count)" -ForegroundColor Green
    $mediaRules | ForEach-Object { Write-Host "  $_" }
}
else {
    Write-Host "[REVIEW] No media queries detected." -ForegroundColor Yellow
}

# ============================================================
# 14. PREMIUM DESIGN TOKEN CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "14. PREMIUM DESIGN TOKEN CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$tokens = [regex]::Matches(
    $css,
    '--jv-[A-Za-z0-9_-]+'
) |
ForEach-Object { $_.Value } |
Sort-Object -Unique

Write-Host "JANAVANI DESIGN TOKENS: $($tokens.Count)"

if ($tokens.Count -ge 20) {
    Write-Host "[PASS] Strong tokenized design foundation." -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Token system may need expansion." -ForegroundColor Yellow
}

$requiredTokenFamilies = @(
    "jv-container",
    "jv-reading",
    "jv-space-",
    "jv-radius-",
    "jv-shadow-",
    "jv-transition",
    "jv-text",
    "jv-border"
)

foreach ($family in $requiredTokenFamilies) {

    if ($css -match "--$([regex]::Escape($family))") {
        Write-Host "[FOUND] token family --$family*" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] token family --$family*" -ForegroundColor Yellow
    }
}

# ============================================================
# 15. DUPLICATE INITIALIZATION RISK
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "15. JAVASCRIPT INITIALIZATION RISK" -ForegroundColor Cyan
Write-Host "============================================================"

$functionNames = @(
    "initJanavani",
    "initMobileNavigation",
    "initBackToTop",
    "initCurrentNavigation",
    "initEscapeHandling",
    "initExternalLinks",
    "initFooterYear"
)

foreach ($name in $functionNames) {

    $count = ([regex]::Matches(
        $js,
        "\b$([regex]::Escape($name))\b"
    )).Count

    Write-Host "$name → $count occurrence(s)"

    if ($count -le 2) {
        Write-Host "  [OK / REVIEW CALL-SITES]" -ForegroundColor Green
    }
    else {
        Write-Host "  [REVIEW] Multiple references." -ForegroundColor Yellow
    }
}

# ============================================================
# 16. EXTERNAL DEPENDENCY CLASSIFICATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "16. EXTERNAL DEPENDENCY CLASSIFICATION" -ForegroundColor Cyan
Write-Host "============================================================"

$externalPatterns = 'https?://[^\s"''<>]+'

foreach ($pair in @(
    @{Name="REBUILD CSS"; Text=$css},
    @{Name="REBUILD JS"; Text=$js},
    @{Name="GTRANSLATION"; Text=$translation},
    @{Name="SHELL"; Text=$shell}
)) {

    $urls = [regex]::Matches($pair.Text, $externalPatterns) |
        ForEach-Object { $_.Value } |
        Sort-Object -Unique

    Write-Host ""
    Write-Host "$($pair.Name)"

    if ($urls.Count -eq 0) {
        Write-Host "  [NONE]" -ForegroundColor Green
    }
    else {
        foreach ($url in $urls) {
            Write-Host "  [EXTERNAL] $url" -ForegroundColor Yellow
        }
    }
}

# ============================================================
# 17. SHARED INFRASTRUCTURE CLASSIFICATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "17. SHARED INFRASTRUCTURE CLASSIFICATION" -ForegroundColor Cyan
Write-Host "============================================================"

Write-Host ""
Write-Host "CLASSIFICATION RULE:" -ForegroundColor Cyan
Write-Host "  KEEP AS-IS      = architecture already stable"
Write-Host "  STABILIZE       = sound foundation, targeted cleanup required"
Write-Host "  REFACTOR        = architecture usable but contract needs redesign"
Write-Host "  REPLACE         = unsuitable as shared foundation"
Write-Host ""

# Evidence-based preliminary classification.
# This does NOT modify files.

$cssClass = "STABILIZE"
$jsClass = "STABILIZE"
$translationClass = "STABILIZE"
$shellClass = "STABILIZE"

if ($css -notmatch ":root" -or $css -notmatch "prefers-reduced-motion") {
    $cssClass = "REFACTOR"
}

if ($js -notmatch "DOMContentLoaded" -or
    $js -notmatch "initMobileNavigation" -or
    $js -notmatch "initBackToTop") {
    $jsClass = "REFACTOR"
}

if ($translation -notmatch "translate" -or
    $shell -notmatch "gtranslation\.js") {
    $translationClass = "REFACTOR"
}

if ($shell -notmatch "<header" -or
    $shell -notmatch "<nav" -or
    $shell -notmatch "<main" -or
    $shell -notmatch "<footer") {
    $shellClass = "REFACTOR"
}

Write-Host "styles-rebuild.css   → $cssClass" -ForegroundColor Yellow
Write-Host "script-rebuild.js    → $jsClass" -ForegroundColor Yellow
Write-Host "gtranslation.js      → $translationClass" -ForegroundColor Yellow
Write-Host "rebuild-shell-test   → $shellClass" -ForegroundColor Yellow

# ============================================================
# 18. FINAL GATE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-7 FINAL GATE" -ForegroundColor Cyan
Write-Host "============================================================"

Write-Host ""
Write-Host "This audit is READ ONLY." -ForegroundColor Green
Write-Host "No production files modified." -ForegroundColor Green
Write-Host "No assets moved." -ForegroundColor Green
Write-Host "No files deleted." -ForegroundColor Green
Write-Host "No deployment performed." -ForegroundColor Green
Write-Host ""

Write-Host "NEXT DECISION:" -ForegroundColor Cyan
Write-Host "1. Stabilize only the shared rebuild layer."
Write-Host "2. Re-run this audit."
Write-Host "3. Freeze the shared infrastructure."
Write-Host "4. Begin index-new.html from scratch."
Write-Host ""

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-7 COMPLETE" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Cyan
