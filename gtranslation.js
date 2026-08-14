/* ============================================================
   JANAVANI — GTRANSLATE CONFIGURATION
   ============================================================ */

window.gtranslateSettings = {
    default_language: "en",
    native_language_names: true,
    detect_browser_language: true,

    languages: [
        "en",
        "ml",
        "hi",
        "kn",
        "te",
        "ta",
        "mr",
        "gu",
        "pa"
    ],

    wrapper_selector: ".gtranslate_wrapper",

    switcher_horizontal_position: "right",
    switcher_vertical_position: "top",

    float_switcher_open_direction: "bottom",

    flag_style: "3d",

    alt_flags: {
        en: "canada"
    }
};


/* ============================================================
   JANAVANI — NATIVE LANGUAGE RESET
   ============================================================ */

document.addEventListener("DOMContentLoaded", function () {

    const resetBtn = document.getElementById("reset-language");

    if (!resetBtn) {
        return;
    }

    resetBtn.addEventListener("click", function (event) {

        event.preventDefault();

        document.cookie =
            "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

        document.cookie =
            "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/; domain=" +
            window.location.hostname;

        window.location.reload();
    });

});
