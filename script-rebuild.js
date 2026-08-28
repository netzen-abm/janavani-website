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

    function initFooterSocialLinks() {
        let containers = document.querySelectorAll(".jv-social-links");

        if (!containers.length) {
            const footer = document.querySelector(".jv-site-footer, footer");
            if (!footer) return;

            const footerBrand = footer.querySelector(".jv-footer-grid > div:first-child");
            const socialSection = document.createElement("div");
            socialSection.className = "jv-social-links";
            socialSection.setAttribute("aria-label", "Janavani social and contact links");

            if (footerBrand) {
                footerBrand.appendChild(socialSection);
            } else {
                footer.appendChild(socialSection);
            }

            containers = document.querySelectorAll(".jv-social-links");
        }

        const links = [
            ["Email", "mailto:janavani@atomicmail.io"],
            ["Telegram", "https://t.me/JanaVaniBot"],
            ["Primal", "https://primal.net/p/nprofile1qqsf02lveuv8h34awnk5n5jh9jcfqfz45ul8mnphhnh4cp8d5zgrkgsuzu7jh"],
            ["Nostr", "https://nostria.app/invite/nprofile1qyg8wumn8ghj7mn0wd68ytnddakj7qg4waehxw309aex2mrp0yhxgctdw4eju6t09uq3zamnwvaz7tmwdaehgu3wwa5kuef0qqsf02lveuv8h34awnk5n5jh9jcfqfz45ul8mnphhnh4cp8d5zgrkgsx4kxau"],
            ["Ditto", "https://ditto.pub/follow/npub1j747encc00rt6a8df8f9wt9sjqj9tfe70hxr0080tszwmgys8v3qaejqgg"],
            ["BlueSky", "https://bsky.app/profile/janavani.bsky.social"],
            ["Instagram", "https://www.instagram.com/janavani700"],
            ["Facebook", "https://www.facebook.com/janavani700/"],
            ["Njump.Me", "https://njump.me/janavani@zaps.lol"],
            ["GitHub", "https://github.com/netzen-abm/janavani"]
        ];

        containers.forEach(function (container) {
            container.replaceChildren();

            links.forEach(function (item) {
                const link = document.createElement("a");
                link.className = "jv-social-link";
                link.href = item[1];
                link.textContent = item[0];
                link.setAttribute("aria-label", "Janavani " + item[0]);

                if (item[1].indexOf("http") === 0) {
                    link.target = "_blank";
                    link.rel = "noopener noreferrer";
                }

                container.appendChild(link);
            });
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
        initFooterSocialLinks();
        initExternalLinks();
        document.documentElement.classList.add("jv-js-ready");
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", initJanavani, { once: true });
    } else {
        initJanavani();
    }
})();
