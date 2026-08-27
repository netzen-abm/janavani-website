/* ============================================================
   JANAVANI — SHARED GTRANSLATE INFRASTRUCTURE
   STEP 2D-4N

   Responsibilities:
   1. Own GTranslate configuration
   2. Load GTranslate after DOM is ready
   3. Provide one shared flagless language switcher
   4. Keep translator infrastructure reusable across all pages
   ============================================================ */

window.gtranslateSettings = {
    "default_language": "en",
    "native_language_names": true,
    "detect_browser_language": true,
    "languages": [
        "en","ml","hi","ta","kn","te","bn","gu","mr","ne","pa","sd","ur","ar","as","bodo","brx","doi","ks","ksm","gom","mai","mni-Mtei","or","sa","sat","snthl","awa","bho","trp","mwr","mzo","pa-Arab","tcy",
    ],
    "wrapper_selector": ".gtranslate_wrapper",
    "switcher_horizontal_position": "right",
    "switcher_vertical_position": "top",
    "float_switcher_open_direction": "bottom",
    "flag_style": "3d"
};


/* ============================================================
   JANAVANI — FLAGLESS TRANSLATOR PRESENTATION
   ============================================================ */

(function () {

    function installTranslatorStyles() {

        if (document.getElementById("janavani-gtranslate-shared-style")) {
            return;
        }

        const style = document.createElement("style");

        style.id = "janavani-gtranslate-shared-style";

        style.textContent = `
            /* ------------------------------------------------
               Remove country flags
               ------------------------------------------------ */

            .gtranslate_wrapper .gt_float_switcher img {
                display: none !important;
            }

            .gtranslate_wrapper .gt_float_switcher .gt-selected {
                gap: 0 !important;
            }


            /* ------------------------------------------------
               Janavani translator button
               ------------------------------------------------ */

            .gtranslate_wrapper .gt_float_switcher {
                min-width: auto !important;

                background: rgba(255, 255, 255, 0.98) !important;

                border: 1px solid rgba(12, 35, 52, 0.10) !important;

                border-radius: 10px !important;

                box-shadow:
                    0 8px 24px rgba(12, 35, 52, 0.12) !important;

                overflow: hidden;

                transition:
                    transform 160ms ease,
                    box-shadow 160ms ease,
                    border-color 160ms ease;
            }


            /* ------------------------------------------------
               Selected language
               ------------------------------------------------ */

            .gtranslate_wrapper .gt_float_switcher .gt-selected {
                background: transparent !important;

                color: #0c2334 !important;

                font-family:
                    system-ui,
                    -apple-system,
                    BlinkMacSystemFont,
                    "Segoe UI",
                    sans-serif;

                font-weight: 700;

                letter-spacing: 0.01em;
            }


            /* ------------------------------------------------
               Hover / keyboard focus
               ------------------------------------------------ */

            .gtranslate_wrapper .gt_float_switcher:hover {
                transform: translateY(-1px);

                border-color:
                    rgba(12, 35, 52, 0.18) !important;

                box-shadow:
                    0 10px 28px rgba(12, 35, 52, 0.16) !important;
            }


            .gtranslate_wrapper .gt_float_switcher:focus-within {
                border-color:
                    rgba(12, 35, 52, 0.24) !important;

                box-shadow:
                    0 0 0 3px rgba(12, 35, 52, 0.08),
                    0 8px 24px rgba(12, 35, 52, 0.12) !important;
            }


            /* ------------------------------------------------
               Dropdown language list
               ------------------------------------------------ */

            .gtranslate_wrapper .gt_float_switcher .gt_options {
                border-top:
                    1px solid rgba(12, 35, 52, 0.08);
            }


            /* ------------------------------------------------
               Keep the control compact
               ------------------------------------------------ */

            .gtranslate_wrapper {
                min-height: 32px;
                display: flex;
                align-items: center;
                justify-content: center;
            }


            /* ------------------------------------------------
               Mobile
               ------------------------------------------------ */

            @media (max-width: 900px) {

                .gtranslate_wrapper .gt_float_switcher {
                    border-radius: 9px !important;
                }

            }
        `;

        document.head.appendChild(style);
    }


    /* ========================================================
       LOAD GTRANSLATE AFTER THE PAGE DOM EXISTS
       ======================================================== */

    function loadGTranslate() {

        installTranslatorStyles();

        if (
            document.querySelector(
                'script[src="https://cdn.gtranslate.net/widgets/latest/float.js"]'
            )
        ) {
            return;
        }

        const script = document.createElement("script");

        script.src =
            "https://cdn.gtranslate.net/widgets/latest/float.js";

        script.defer = true;

        document.head.appendChild(script);
    }


    if (document.readyState === "loading") {

        document.addEventListener(
            "DOMContentLoaded",
            loadGTranslate,
            { once: true }
        );

    } else {

        loadGTranslate();

    }

})();
