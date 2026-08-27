/* ============================================================
   JANAVANI — NEW SITE
   GTRANSLATION INFRASTRUCTURE
   ------------------------------------------------------------
   File: gtranslation-new.js

   PURPOSE
   -------
   Dedicated translation infrastructure for the NEW Janavani
   website.

   IMPORTANT
   ---------
   - Does NOT modify gtranslation.js
   - Does NOT depend on any production page
   - Does NOT contain page-specific logic
   - Shared by all six *-new.html pages
   - GTranslate configuration is centralized here
   - External GTranslate loader is loaded once
   ============================================================ */

(function () {
    "use strict";

    /* ========================================================
       1. GTRANSLATE CONFIGURATION
       ======================================================== */

    window.gtranslateSettings = {
        default_language: "en",

        native_language_names: true,

        detect_browser_language: true,

        languages: [
            "en",
            "ml",
            "hi",
            "ta",
            "kn",
            "te",
            "gu",
            "mr",
            "pa",
            "as",
            "bodo",
            "brx",
            "doi",
            "ks",
            "ksm",
            "gom",
            "mai",
            "mni-Mtei",
            "or",
            "sa",
            "sat",
            "snthl",
            "awa",
            "bho",
            "trp",
            "mwr",
            "mzo",
            "pa-Arab",
            "tcy",
            "ne",
            "bn",
            "sd",
            "ur",
            "ar"
        ],

        wrapper_selector: ".gtranslate_wrapper",

        switcher_horizontal_position: "right",

        switcher_vertical_position: "top",

        float_switcher_open_direction: "bottom"
    };


    /* ========================================================
       2. GTRANSLATE SCRIPT LOADER
       ======================================================== */

    var GTRANSLATE_SRC =
        "https://cdn.gtranslate.net/widgets/latest/float.js";


    function loadGTranslate() {

        /*
         * Prevent duplicate loading if multiple components
         * or page logic attempt to initialize translation.
         */
        if (document.querySelector(
            'script[src="' + GTRANSLATE_SRC + '"]'
        )) {
            return;
        }


        var script = document.createElement("script");

        script.src = GTRANSLATE_SRC;

        script.defer = true;

        script.setAttribute(
            "data-janavani-gtranslate",
            "new-site"
        );


        document.head.appendChild(script);
    }


    /* ========================================================
       3. INITIALIZATION
       ======================================================== */

    function initJanavaniTranslation() {

        /*
         * GTranslate requires its wrapper to exist before
         * the widget initializes.
         */
        var wrapper = document.querySelector(
            ".gtranslate_wrapper"
        );

        if (!wrapper) {
            return;
        }

        loadGTranslate();
    }


    /* ========================================================
       4. DOM READY
       ======================================================== */

    if (document.readyState === "loading") {

        document.addEventListener(
            "DOMContentLoaded",
            initJanavaniTranslation,
            { once: true }
        );

    } else {

        initJanavaniTranslation();

    }

})();