/* ============================================================
   JANAVANI — SHARED PRODUCTION JAVASCRIPT
   STATUS: LIVE
   ============================================================ */

(function () {
    "use strict";

    function initMobileNavigation() {
        const toggle = document.querySelector(".jv-menu-toggle");
        const navigation = document.querySelector(".jv-navigation");
        if (!toggle || !navigation) return;

        toggle.addEventListener("click", function () {
            const isOpen = navigation.classList.toggle("is-open");
            toggle.setAttribute("aria-expanded", String(isOpen));
            toggle.setAttribute("aria-label", isOpen ? "Close navigation menu" : "Open navigation menu");
        });

        navigation.querySelectorAll("a").forEach(function (link) {
            link.addEventListener("click", function () {
                navigation.classList.remove("is-open");
                toggle.setAttribute("aria-expanded", "false");
                toggle.setAttribute("aria-label", "Open navigation menu");
            });
        });

        window.addEventListener("resize", function () {
            if (window.innerWidth > 760) {
                navigation.classList.remove("is-open");
                toggle.setAttribute("aria-expanded", "false");
                toggle.setAttribute("aria-label", "Open navigation menu");
            }
        });
    }

    function initBackToTop() {
        const button = document.querySelector(".jv-scroll-top");
        if (!button) return;

        function updateVisibility() {
            const visible = window.scrollY > 260;
            button.hidden = !visible;
            button.classList.toggle("is-visible", visible);
        }

        button.addEventListener("click", function () {
            window.scrollTo({ top: 0, behavior: "smooth" });
        });

        updateVisibility();
        window.addEventListener("scroll", updateVisibility, { passive: true });
    }

    function initCurrentNavigation() {
        const links = document.querySelectorAll(".jv-navigation a");
        if (!links.length) return;

        const currentFile = window.location.pathname.split("/").pop().toLowerCase();
        const currentPage = currentFile === "" ? "index.html" : currentFile;

        links.forEach(function (link) {
            const href = link.getAttribute("href");
            if (!href) return;

            const linkFile = href.split("#")[0].split("/").pop().toLowerCase();
            if (linkFile === currentPage) {
                link.setAttribute("aria-current", "page");
            }
        });
    }

    function initEscapeHandling() {
        const toggle = document.querySelector(".jv-menu-toggle");
        const navigation = document.querySelector(".jv-navigation");
        if (!toggle || !navigation) return;

        document.addEventListener("keydown", function (event) {
            if (event.key !== "Escape") return;

            navigation.classList.remove("is-open");
            toggle.setAttribute("aria-expanded", "false");
            toggle.setAttribute("aria-label", "Open navigation menu");
            toggle.focus();
        });
    }

    function initFooterYear() {
        const yearElements = document.querySelectorAll("[data-current-year]");
        if (!yearElements.length) return;

        const year = new Date().getFullYear();
        yearElements.forEach(function (element) {
            element.textContent = year;
        });
    }

    function initExternalLinks() {
        const links = document.querySelectorAll('a[href^="http://"], a[href^="https://"]');

        links.forEach(function (link) {
            try {
                const url = new URL(link.href, window.location.href);
                if (url.hostname !== window.location.hostname) {
                    link.setAttribute("target", "_blank");
                    link.setAttribute("rel", "noopener noreferrer");
                }
            } catch (error) {
                /* Ignore malformed URLs. */
            }
        });
    }

    function initJanavani() {
        initMobileNavigation();
        initBackToTop();
        initCurrentNavigation();
        initEscapeHandling();
        initFooterYear();
        initExternalLinks();
        document.documentElement.classList.add("jv-js-ready");
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", initJanavani, { once: true });
    } else {
        initJanavani();
    }
})();
