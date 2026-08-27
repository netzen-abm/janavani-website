# ============================================================
# JANAVANI — STEP 4A-8
# SHARED INFRASTRUCTURE STABILITY AUDIT
#
# READ ONLY
# NO FILE MODIFICATION
# NO PRODUCTION MODIFICATION
# NO ASSET MOVEMENT
# NO DEPLOYMENT
#
# PURPOSE:
# Verify the shared rebuild infrastructure before rebuilding
# the six pages individually.
#
# Shared infrastructure:
#   1. styles-rebuild.css
#   2. script-rebuild.js
#   3. gtranslation.js
#   4. rebuild-shell-test.html
#
# Shared UI contract:
#   HEADER
#   NAVIGATION
#   STICKY NAVIGATION
#   MOBILE NAVIGATION
#   FOOTER
#   SOCIAL LINKS
#   BACK-TO-TOP
#   LANGUAGE / TRANSLATION
#
# ============================================================

$ErrorActionPreference = "Stop"

$root = Get-Location

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "JANAVANI — STEP 4A-8" -ForegroundColor Green
Write-Host "SHARED INFRASTRUCTURE STABILITY AUDIT" -ForegroundColor Yellow
Write-Host "READ ONLY — NO FILE MODIFICATION" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

# ============================================================
# 1. REQUIRED FILES
# ============================================================

$required = @(
    "styles-rebuild.css",
    "script-rebuild.js",
    "gtranslation.js",
    "rebuild-shell-test.html"
)

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "1. SHARED INFRASTRUCTURE FILES" -ForegroundColor Cyan
Write-Host "============================================================"

foreach ($file in $required) {

    $path = Join-Path $root $file

    if (Test-Path $path) {
        $item = Get-Item $path

        Write-Host "[PASS] $file" -ForegroundColor Green
        Write-Host "      $($item.Length) bytes"
    }
    else {
        Write-Host "[FAIL] MISSING: $file" -ForegroundColor Red
    }
}

# ============================================================
# 2. UTF-8 / FILE INTEGRITY
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "2. UTF-8 / FILE INTEGRITY" -ForegroundColor Cyan
Write-Host "============================================================"

foreach ($file in $required) {

    $path = Join-Path $root $file

    if (-not (Test-Path $path)) {
        continue
    }

    $bytes = [System.IO.File]::ReadAllBytes($path)

    try {

        $utf8 = New-Object System.Text.UTF8Encoding($false, $true)
        $text = $utf8.GetString($bytes)

        $replacement = (
            [regex]::Matches(
                $text,
                [regex]::Escape([string][char]0xFFFD)
            )
        ).Count

        if ($replacement -eq 0) {
            Write-Host "[PASS] $file — valid UTF-8 / no replacement characters" `
                -ForegroundColor Green
        }
        else {
            Write-Host "[REVIEW] $file — replacement characters: $replacement" `
                -ForegroundColor Yellow
        }

    }
    catch {

        Write-Host "[FAIL] $file — invalid UTF-8" `
            -ForegroundColor Red
    }
}

# ============================================================
# 3. LOAD INFRASTRUCTURE
# ============================================================

$cssPath         = Join-Path $root "styles-rebuild.css"
$jsPath          = Join-Path $root "script-rebuild.js"
$translationPath = Join-Path $root "gtranslation.js"
$shellPath       = Join-Path $root "rebuild-shell-test.html"

$css         = Get-Content $cssPath -Raw -Encoding UTF8
$js          = Get-Content $jsPath -Raw -Encoding UTF8
$translation = Get-Content $translationPath -Raw -Encoding UTF8
$shell       = Get-Content $shellPath -Raw -Encoding UTF8

# ============================================================
# 4. CSS DESIGN SYSTEM
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "4. CSS DESIGN SYSTEM" -ForegroundColor Cyan
Write-Host "============================================================"

$cssChecks = @(
    ":root",
    "--jv-navy-950",
    "--jv-navy-900",
    "--jv-gold-500",
    "--jv-container",
    "--jv-reading",
    ".jv-site-header",
    ".jv-navigation",
    ".jv-site-footer",
    ".jv-social-links",
    ".jv-scroll-top",
    ".jv-button",
    ":focus-visible",
    "@media",
    "prefers-reduced-motion"
)

foreach ($marker in $cssChecks) {

    if ($css.Contains($marker)) {
        Write-Host "[PASS] CSS → $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] CSS → $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 5. CSS RESPONSIVE ARCHITECTURE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "5. CSS RESPONSIVE ARCHITECTURE" -ForegroundColor Cyan
Write-Host "============================================================"

$breakpoints = [regex]::Matches(
    $css,
    '@media\s*\(([^)]+)\)'
) |
    ForEach-Object {
        $_.Groups[1].Value
    } |
    Sort-Object -Unique

if ($breakpoints.Count -gt 0) {

    foreach ($bp in $breakpoints) {
        Write-Host "[FOUND] @media ($bp)" -ForegroundColor Green
    }

}
else {

    Write-Host "[FAIL] No responsive media queries detected." `
        -ForegroundColor Red
}

# ============================================================
# 6. SHELL SEMANTIC CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "6. SHELL SEMANTIC CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$semanticElements = @(
    "<header",
    "<nav",
    "<main",
    "<section",
    "<footer"
)

foreach ($element in $semanticElements) {

    if ($shell.Contains($element)) {
        Write-Host "[PASS] $element" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $element" -ForegroundColor Yellow
    }
}

# ============================================================
# 7. SHARED HEADER / NAVIGATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "7. SHARED HEADER / NAVIGATION CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$navigationChecks = @(
    "jv-site-header",
    "jv-header-inner",
    "jv-navigation",
    "jv-menu-toggle",
    "aria-expanded",
    "aria-controls",
    "aria-current",
    "Escape"
)

foreach ($marker in $navigationChecks) {

    $found = (
        $shell.Contains($marker) -or
        $js.Contains($marker) -or
        $css.Contains($marker)
    )

    if ($found) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 8. STICKY NAVIGATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "8. STICKY NAVIGATION" -ForegroundColor Cyan
Write-Host "============================================================"

if (
    $css -match '(?i)position\s*:\s*sticky' -or
    $css -match '(?i)position\s*:\s*fixed'
) {
    Write-Host "[FOUND] Persistent navigation positioning mechanism" `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] No sticky/fixed navigation positioning detected." `
        -ForegroundColor Yellow
}

if (
    $css -match '(?i)\.jv-site-header[\s\S]{0,1200}position\s*:\s*sticky' -or
    $css -match '(?i)\.jv-site-header[\s\S]{0,1200}position\s*:\s*fixed'
) {
    Write-Host "[PASS] Header itself has persistent positioning." `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Header persistent positioning requires visual verification." `
        -ForegroundColor Yellow
}

# ============================================================
# 9. MOBILE NAVIGATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "9. MOBILE NAVIGATION" -ForegroundColor Cyan
Write-Host "============================================================"

$mobileChecks = @(
    ".jv-menu-toggle",
    ".jv-navigation",
    "aria-expanded",
    "aria-controls",
    "classList",
    "Escape",
    "focus"
)

foreach ($marker in $mobileChecks) {

    if ($shell.Contains($marker) -or $js.Contains($marker)) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 10. FOOTER
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "10. SHARED FOOTER CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$footerChecks = @(
    ".jv-site-footer",
    ".jv-footer-inner",
    ".jv-footer-grid",
    ".jv-footer-navigation",
    ".jv-footer-bottom",
    "data-current-year"
)

foreach ($marker in $footerChecks) {

    if (
        $shell.Contains($marker) -or
        $css.Contains($marker) -or
        $js.Contains($marker)
    ) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 11. SOCIAL INFRASTRUCTURE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "11. SHARED SOCIAL INFRASTRUCTURE" -ForegroundColor Cyan
Write-Host "============================================================"

$socialChecks = @(
    ".jv-social-links",
    ".jv-social-link",
    ".jv-social-monogram"
)

foreach ($marker in $socialChecks) {

    if (
        $shell.Contains($marker) -or
        $css.Contains($marker)
    ) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 12. BACK TO TOP
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "12. BACK-TO-TOP CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$topChecks = @(
    ".jv-scroll-top",
    "initBackToTop",
    "scrollTo",
    "hidden"
)

foreach ($marker in $topChecks) {

    if (
        $shell.Contains($marker) -or
        $js.Contains($marker) -or
        $css.Contains($marker)
    ) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 13. TRANSLATION SEPARATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "13. TRANSLATION INFRASTRUCTURE SEPARATION" -ForegroundColor Cyan
Write-Host "============================================================"

$translationChecks = @(
    "gtranslate",
    "language",
    "lang",
    "select",
    "option"
)

foreach ($marker in $translationChecks) {

    if ($translation.Contains($marker)) {
        Write-Host "[FOUND] gtranslation.js → $marker" `
            -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] gtranslation.js → $marker" `
            -ForegroundColor Yellow
    }
}

if (
    $js -notmatch '(?i)translate\.google' -and
    $js -notmatch '(?i)googletranslate'
) {
    Write-Host "[PASS] Rebuild JS does not contain Google translation implementation." `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Translation logic detected inside rebuild JS." `
        -ForegroundColor Yellow
}

# ============================================================
# 14. SHELL → CSS CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "14. SHELL → CSS CLASS CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$shellClasses = [regex]::Matches(
    $shell,
    'class\s*=\s*"([^"]+)"'
) |
    ForEach-Object {
        $_.Groups[1].Value -split '\s+'
    } |
    Where-Object {
        $_ -and
        $_ -notmatch '^(active|open|hidden|visible|js-|no-js)$'
    } |
    Sort-Object -Unique

$missingCSS = @()

foreach ($class in $shellClasses) {

    $escaped = [regex]::Escape($class)

    $pattern = "(?m)\.$escaped(\b|[\s:{,])"

    if ($css -notmatch $pattern) {
        $missingCSS += $class
    }
}

if ($missingCSS.Count -eq 0) {

    Write-Host "[PASS] All shell classes have obvious CSS definitions." `
        -ForegroundColor Green

}
else {

    Write-Host "[REVIEW] Shell classes without obvious CSS definitions:" `
        -ForegroundColor Yellow

    foreach ($class in $missingCSS) {
        Write-Host "  .$class"
    }
}

# ============================================================
# 15. JS → SHELL CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "15. JS → SHELL SELECTOR CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$selectors = @(
    ".jv-menu-toggle",
    ".jv-navigation",
    ".jv-navigation a",
    ".jv-scroll-top",
    "[data-current-year]",
    "a"
)

foreach ($selector in $selectors) {

    $cleanSelector = $selector

    if ($selector -match '^\[data-current-year\]$') {
        $found = $shell.Contains("data-current-year")
    }
    elseif ($selector -eq "a") {
        $found = $shell -match '<a\b'
    }
    else {
        $className = $selector.TrimStart(".")
        $found = $shell.Contains($className)
    }

    if ($found) {
        Write-Host "[CONNECTED] $selector" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $selector" -ForegroundColor Yellow
    }
}

# ============================================================
# 16. INLINE CODE PROTECTION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "16. INLINE CODE PROTECTION" -ForegroundColor Cyan
Write-Host "============================================================"

$inlineStyleMatches = [regex]::Matches(
    $shell,
    '\sstyle\s*='
).Count

$inlineScriptMatches = [regex]::Matches(
    $shell,
    '<script\b[^>]*>[\s\S]*?</script>'
).Count

if ($inlineStyleMatches -eq 0) {
    Write-Host "[PASS] No inline style attributes." `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Inline style attributes: $inlineStyleMatches" `
        -ForegroundColor Yellow
}

if ($inlineScriptMatches -eq 0) {
    Write-Host "[PASS] No inline script blocks." `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Inline script blocks: $inlineScriptMatches" `
        -ForegroundColor Yellow
}

# ============================================================
# 17. PAGE-SPECIFIC DEPENDENCY CHECK
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "17. PAGE-SPECIFIC DEPENDENCY CHECK" -ForegroundColor Cyan
Write-Host "============================================================"

$productionPages = @(
    "index.html",
    "about.html",
    "how-it-works.html",
    "resources.html",
    "vision.html",
    "contact.html"
)

foreach ($page in $productionPages) {

    if ($js.Contains($page)) {

        Write-Host "[REVIEW] script-rebuild.js references $page" `
            -ForegroundColor Yellow

    }
    else {

        Write-Host "[PASS] script-rebuild.js does not reference $page" `
            -ForegroundColor Green
    }
}

# ============================================================
# 18. ACCESSIBILITY INFRASTRUCTURE
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "18. ACCESSIBILITY INFRASTRUCTURE" -ForegroundColor Cyan
Write-Host "============================================================"

$accessibility = @(
    "aria-label",
    "aria-expanded",
    "aria-controls",
    "aria-current",
    "focus-visible",
    "prefers-reduced-motion",
    "alt="
)

foreach ($marker in $accessibility) {

    if (
        $shell.Contains($marker) -or
        $css.Contains($marker) -or
        $js.Contains($marker)
    ) {
        Write-Host "[FOUND] $marker" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] $marker" -ForegroundColor Yellow
    }
}

# ============================================================
# 19. HEADING CONTRACT
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "19. SHELL HEADING CONTRACT" -ForegroundColor Cyan
Write-Host "============================================================"

$h1Count = [regex]::Matches(
    $shell,
    '<h1\b'
).Count

$h2Count = [regex]::Matches(
    $shell,
    '<h2\b'
).Count

$h3Count = [regex]::Matches(
    $shell,
    '<h3\b'
).Count

Write-Host "H1: $h1Count"
Write-Host "H2: $h2Count"
Write-Host "H3: $h3Count"

if ($h1Count -eq 1) {
    Write-Host "[PASS] Shell contains exactly one H1." `
        -ForegroundColor Green
}
else {
    Write-Host "[REVIEW] Shell H1 count = $h1Count" `
        -ForegroundColor Yellow
}

# ============================================================
# 20. ASSET ORGANIZATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "20. ASSET INFRASTRUCTURE READINESS" -ForegroundColor Cyan
Write-Host "============================================================"

$assetDirectories = @(
    "assets\brand\logos",
    "assets\brand\favicon",
    "assets\home\hero",
    "assets\home\citizen-problem",
    "assets\home\janavani-helps",
    "assets\home\citizen-journey",
    "assets\home\product-maturity",
    "assets\home\technology-agency",
    "assets\home\citizen-vigilance",
    "assets\home\larger-vision",
    "assets\diagrams\civic-pathway",
    "assets\diagrams\process",
    "assets\constitutional",
    "assets\social\icons",
    "assets\social\qr",
    "assets\screenshots",
    "assets\source\legacy"
)

foreach ($dir in $assetDirectories) {

    $path = Join-Path $root $dir

    if (Test-Path $path) {
        Write-Host "[READY] $dir" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] Missing $dir" -ForegroundColor Yellow
    }
}

# ============================================================
# 21. OLD PRODUCTION FILE PROTECTION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "21. OLD PRODUCTION FILE PROTECTION" -ForegroundColor Cyan
Write-Host "============================================================"

$oldFiles = @(
    "index.html",
    "about.html",
    "how-it-works.html",
    "resources.html",
    "vision.html",
    "contact.html",
    "styles.css",
    "script.js",
    "gtranslation.js"
)

foreach ($file in $oldFiles) {

    if (Test-Path (Join-Path $root $file)) {

        Write-Host "[PRESENT / PROTECTED] $file" `
            -ForegroundColor Green

    }
    else {

        Write-Host "[MISSING] $file" `
            -ForegroundColor Red
    }
}

# ============================================================
# 22. NEW PAGE POLICY
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "22. NEW-PAGE REBUILD POLICY" -ForegroundColor Cyan
Write-Host "============================================================"

Write-Host "[RULE] Existing six production pages remain untouched." `
    -ForegroundColor Green

Write-Host "[RULE] New pages will use -new.html naming." `
    -ForegroundColor Green

Write-Host "[RULE] Each page is rebuilt independently." `
    -ForegroundColor Green

Write-Host "[RULE] Shared infrastructure is not duplicated unnecessarily." `
    -ForegroundColor Green

Write-Host "[RULE] Old pages are archived only after final verification." `
    -ForegroundColor Green

Write-Host "[RULE] Old pages are archived, never deleted." `
    -ForegroundColor Green

# ============================================================
# 23. FINAL CLASSIFICATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-8 FINAL CLASSIFICATION" -ForegroundColor Cyan
Write-Host "============================================================"

Write-Host ""
Write-Host "READ ONLY — NO FILES MODIFIED." -ForegroundColor Green
Write-Host ""

Write-Host "Infrastructure under evaluation:" -ForegroundColor Cyan
Write-Host "  styles-rebuild.css"
Write-Host "  script-rebuild.js"
Write-Host "  gtranslation.js"
Write-Host "  rebuild-shell-test.html"
Write-Host ""

Write-Host "Shared UI contract:" -ForegroundColor Cyan
Write-Host "  HEADER"
Write-Host "  NAVIGATION"
Write-Host "  STICKY NAVIGATION"
Write-Host "  MOBILE NAVIGATION"
Write-Host "  FOOTER"
Write-Host "  SOCIAL LINKS"
Write-Host "  BACK-TO-TOP"
Write-Host "  LANGUAGE / TRANSLATION"
Write-Host ""

Write-Host "Rebuild policy:" -ForegroundColor Cyan
Write-Host "  OLD FILES → PROTECTED"
Write-Host "  NEW FILES → -new.html"
Write-Host "  VERIFICATION → PAGE BY PAGE"
Write-Host "  FINAL REPLACEMENT → ONLY AFTER SIX-PAGE VERIFICATION"
Write-Host "  OLD FILES → ARCHIVE, NEVER DELETE"
Write-Host ""

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-8 COMPLETE" -ForegroundColor Green
Write-Host "============================================================"
Write-Host ""
Write-Host "NO FILES MODIFIED." -ForegroundColor Green
Write-Host ""