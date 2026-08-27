# ============================================================
# JANAVANI — STEP 4A-21
# SHARED NEW-SITE SHELL FIX
#
# PURPOSE
#   1. Make the new-site header persist while scrolling.
#   2. Present the Janavani logo as a clean circular mark.
#   3. Preserve the six-page new-site architecture.
#   4. Do NOT modify old production HTML/CSS/JS.
#   5. Backup shared rebuild files before modification.
#   6. Commit and push only the intended new shared-layer changes.
#
# IMPORTANT
#   Run from:
#   C:\Users\famil\Documents\GitHub\janavani-website
# ============================================================

$ErrorActionPreference = "Stop"

$root = "C:\Users\famil\Documents\GitHub\janavani-website"
Set-Location $root

$css = ".\styles-rebuild.css"
$js  = ".\script-rebuild.js"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "JANAVANI — STEP 4A-21" -ForegroundColor Green
Write-Host "SHARED SHELL FIX: LOGO + PERSISTENT NAVIGATION" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

foreach ($file in @($css,$js)) {
    if (-not (Test-Path $file)) {
        throw "Required shared file missing: $file"
    }
}

# ------------------------------------------------------------
# 1. PROTECT SHARED FILES
# ------------------------------------------------------------
$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
Copy-Item $css "$css.step4A21-backup-$stamp" -Force
Copy-Item $js  "$js.step4A21-backup-$stamp"  -Force

Write-Host "[BACKUP] Shared rebuild CSS/JS preserved." -ForegroundColor Green

# ------------------------------------------------------------
# 2. APPLY SHARED CSS FIX
# ------------------------------------------------------------
$cssText = [System.IO.File]::ReadAllText((Resolve-Path $css), [System.Text.Encoding]::UTF8)

$marker = "JANAVANI — STEP 4A-21 SHARED SHELL FIX"

if ($cssText.Contains($marker)) {
    Write-Host "[INFO] Step 4A-21 CSS fix already present. No duplicate CSS added." -ForegroundColor Yellow
}
else {

$patch = @'

/* ============================================================
   JANAVANI — STEP 4A-21 SHARED SHELL FIX
   ------------------------------------------------------------
   Shared new-site shell only.
   1. Persistent header while scrolling.
   2. Circular Janavani logo presentation.
   3. Stable header offset for page content.
   ============================================================ */

:root {
    --jv-header-height: 78px;
}

.jv-site-header {
    position: fixed !important;
    top: 0 !important;
    left: 0 !important;
    right: 0 !important;
    width: 100% !important;
    z-index: 1000 !important;
}

body {
    padding-top: var(--jv-header-height);
}

.jv-header-inner {
    min-height: var(--jv-header-height);
}

/* ------------------------------------------------------------
   Circular Janavani identity mark
   ------------------------------------------------------------ */

.jv-brand {
    width: 58px !important;
    height: 58px !important;
    min-width: 58px !important;
    min-height: 58px !important;
    display: inline-grid !important;
    place-items: center !important;
    overflow: hidden !important;
    border-radius: 50% !important;
    background: transparent !important;
    border: 0 !important;
    box-shadow: none !important;
    flex: 0 0 58px !important;
}

.jv-brand img {
    display: block !important;
    width: 58px !important;
    height: 58px !important;
    min-width: 58px !important;
    min-height: 58px !important;
    max-width: 58px !important;
    max-height: 58px !important;
    object-fit: cover !important;
    object-position: center !important;
    border-radius: 50% !important;
}

/* Keep the navigation and translator above page content. */
.jv-navigation,
.gtranslate_wrapper,
.jv-menu-toggle {
    position: relative;
    z-index: 1002;
}

/* Skip link must remain visible above the fixed header when focused. */
.skip-link,
.jv-skip-link {
    z-index: 1100 !important;
}

@media (max-width: 760px) {

    :root {
        --jv-header-height: 70px;
    }

    .jv-header-inner {
        min-height: var(--jv-header-height);
    }

    .jv-brand {
        width: 50px !important;
        height: 50px !important;
        min-width: 50px !important;
        min-height: 50px !important;
        flex-basis: 50px !important;
    }

    .jv-brand img {
        width: 50px !important;
        height: 50px !important;
        min-width: 50px !important;
        min-height: 50px !important;
        max-width: 50px !important;
        max-height: 50px !important;
    }
}

@media (prefers-reduced-motion: reduce) {
    .jv-site-header {
        scroll-behavior: auto;
    }
}
'@

    [System.IO.File]::AppendAllText(
        (Resolve-Path $css),
        $patch,
        (New-Object System.Text.UTF8Encoding($false))
    )

    Write-Host "[PASS] Shared shell CSS fix appended." -ForegroundColor Green
}

# ------------------------------------------------------------
# 3. HARDEN BACK-TO-TOP VISIBILITY
# ------------------------------------------------------------
$jsText = [System.IO.File]::ReadAllText((Resolve-Path $js), [System.Text.Encoding]::UTF8)

if ($jsText.Contains("JANAVANI — STEP 4A-21 BACK-TO-TOP HARDENING")) {
    Write-Host "[INFO] Step 4A-21 JS hardening already present." -ForegroundColor Yellow
}
else {
    $jsPatch = @'

/* ============================================================
   JANAVANI — STEP 4A-21 BACK-TO-TOP HARDENING
   ------------------------------------------------------------
   The shared back-to-top control becomes visible after scrolling
   and remains keyboard accessible.
   ============================================================ */

(function () {
    "use strict";

    function hardenBackToTop() {
        const button = document.querySelector(".jv-scroll-top");
        if (!button) return;

        function sync() {
            if (window.scrollY > 260) {
                button.hidden = false;
                button.classList.add("is-visible");
            } else {
                button.hidden = true;
                button.classList.remove("is-visible");
            }
        }

        if (!button.dataset.jvStep4a21Bound) {
            button.addEventListener("click", function () {
                window.scrollTo({
                    top: 0,
                    behavior: "smooth"
                });
            });
            button.dataset.jvStep4a21Bound = "true";
        }

        sync();
        window.addEventListener("scroll", sync, { passive: true });
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", hardenBackToTop, { once: true });
    } else {
        hardenBackToTop();
    }
})();
'@

    [System.IO.File]::AppendAllText(
        (Resolve-Path $js),
        $jsPatch,
        (New-Object System.Text.UTF8Encoding($false))
    )

    Write-Host "[PASS] Shared back-to-top hardening appended." -ForegroundColor Green
}

# ------------------------------------------------------------
# 4. READ-ONLY SAFETY CHECKS
# ------------------------------------------------------------
Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-21 SAFETY CHECK" -ForegroundColor Cyan
Write-Host "============================================================"

$newPages = @(
    "index-new.html",
    "about-new.html",
    "how-it-works-new.html",
    "resources-new.html",
    "vision-new.html",
    "contact-new.html"
)

foreach ($page in $newPages) {
    if (Test-Path ".\$page") {
        Write-Host "[FOUND] $page" -ForegroundColor Green
    }
    else {
        Write-Host "[REVIEW] Missing local new page: $page" -ForegroundColor Yellow
    }
}

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

Write-Host ""
Write-Host "OLD PRODUCTION FILE STATUS:" -ForegroundColor Cyan
foreach ($file in $oldFiles) {
    if (Test-Path ".\$file") {
        Write-Host "[PROTECTED] $file" -ForegroundColor Green
    }
}

# ------------------------------------------------------------
# 5. GIT DIFF REVIEW
# ------------------------------------------------------------
Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "GIT DIFF — REVIEW BEFORE COMMIT" -ForegroundColor Cyan
Write-Host "============================================================"
Write-Host ""

git status --short
Write-Host ""

git diff -- styles-rebuild.css script-rebuild.js

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "STEP 4A-21 COMPLETE — FILES MODIFIED, NOT YET COMMITTED" -ForegroundColor Green
Write-Host "============================================================"
Write-Host ""
Write-Host "NEXT COMMANDS:" -ForegroundColor Cyan
Write-Host "  git add styles-rebuild.css script-rebuild.js"
Write-Host '  git commit -m "fix(new-site): stabilize shared header logo and persistent navigation"'
Write-Host "  git push origin main"
Write-Host ""
Write-Host "After push, GitHub Pages will deploy automatically only if the repository's" -ForegroundColor Yellow
Write-Host "Pages publishing source/workflow is already configured for main." -ForegroundColor Yellow
Write-Host ""
Write-Host "DO NOT delete the step4A21 backups until browser verification passes." -ForegroundColor Yellow
