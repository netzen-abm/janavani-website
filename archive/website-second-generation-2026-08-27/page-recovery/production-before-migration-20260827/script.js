/* ============================================================
   JANAVANI — SHARED SITE JAVASCRIPT
   Clean architecture
   ============================================================ */

(function () {
    "use strict";

    document.addEventListener("DOMContentLoaded", function () {

        /* ======================================================
           MOBILE NAVIGATION
           ====================================================== */

        const hamburger = document.querySelector(".hamburger");
        const navLinks = document.querySelector(".nav-links");

        function closeMobileNavigation() {
            if (!hamburger || !navLinks) {
                return;
            }

            navLinks.classList.remove("active");
            hamburger.classList.remove("active");
            hamburger.setAttribute("aria-expanded", "false");
        }

        if (hamburger && navLinks) {

            hamburger.setAttribute(
                "aria-expanded",
                "false"
            );

            hamburger.addEventListener("click", function () {

                const isOpen =
                    navLinks.classList.toggle("active");

                hamburger.classList.toggle(
                    "active",
                    isOpen
                );

                hamburger.setAttribute(
                    "aria-expanded",
                    String(isOpen)
                );
            });

            navLinks
                .querySelectorAll("a")
                .forEach(function (link) {

                    link.addEventListener(
                        "click",
                        function () {

                            closeMobileNavigation();

                        }
                    );

                });
        }


        /* ======================================================
           KEYBOARD NAVIGATION
           ====================================================== */

        document.addEventListener(
            "keydown",
            function (event) {

                if (event.key === "Escape") {
                    closeMobileNavigation();
                }

            }
        );


        /* ======================================================
           ABOUT SUBMENU
           ====================================================== */

        const submenuParents =
            document.querySelectorAll(
                ".jv-has-submenu"
            );

        submenuParents.forEach(function (parent) {

            const trigger =
                parent.querySelector(
                    ":scope > a"
                );

            const submenu =
                parent.querySelector(
                    ":scope > .jv-about-submenu"
                );

            if (!trigger || !submenu) {
                return;
            }

            trigger.setAttribute(
                "aria-expanded",
                "false"
            );

            trigger.addEventListener(
                "click",
                function (event) {

                    const isMobile =
                        window.matchMedia(
                            "(max-width: 760px)"
                        ).matches;

                    if (!isMobile) {
                        return;
                    }

                    event.preventDefault();

                    const isOpen =
                        parent.classList.toggle(
                            "is-open"
                        );

                    trigger.setAttribute(
                        "aria-expanded",
                        String(isOpen)
                    );

                }
            );

        });


        /* ======================================================
           SMOOTH ANCHOR SCROLL
           ====================================================== */

        const anchorLinks =
            document.querySelectorAll(
                'a[href^="#"]'
            );

        anchorLinks.forEach(function (link) {

            link.addEventListener(
                "click",
                function (event) {

                    const targetId =
                        link.getAttribute("href");

                    if (
                        !targetId ||
                        targetId === "#"
                    ) {
                        return;
                    }

                    let target;

                    try {
                        target =
                            document.querySelector(
                                targetId
                            );
                    }
                    catch (error) {
                        return;
                    }

                    if (!target) {
                        return;
                    }

                    event.preventDefault();

                    target.scrollIntoView({
                        behavior: "smooth",
                        block: "start"
                    });

                }
            );

        });


        /* ======================================================
           NAVBAR SCROLL STATE
           ====================================================== */

        const navbar =
            document.querySelector(
                ".navbar"
            );

        if (navbar) {

            function updateNavbar() {

                navbar.classList.toggle(
                    "scrolled",
                    window.scrollY > 30
                );

            }

            window.addEventListener(
                "scroll",
                updateNavbar,
                { passive: true }
            );

            updateNavbar();

        }


        /* ======================================================
           SECTION REVEAL
           ====================================================== */

        const revealElements =
            document.querySelectorAll(
                ".feature-card, " +
                ".problem-card, " +
                ".law-card, " +
                ".solution-item, " +
                ".tech-item"
            );

        const prefersReducedMotion =
            window.matchMedia(
                "(prefers-reduced-motion: reduce)"
            );

        if (
            revealElements.length > 0 &&
            "IntersectionObserver" in window &&
            !prefersReducedMotion.matches
        ) {

            const revealObserver =
                new IntersectionObserver(
                    function (
                        entries,
                        observer
                    ) {

                        entries.forEach(
                            function (entry) {

                                if (
                                    entry.isIntersecting
                                ) {

                                    entry.target.classList.add(
                                        "is-visible"
                                    );

                                    observer.unobserve(
                                        entry.target
                                    );

                                }

                            }
                        );

                    },
                    {
                        threshold: 0.1
                    }
                );

            revealElements.forEach(
                function (element) {

                    element.classList.add(
                        "reveal-ready"
                    );

                    revealObserver.observe(
                        element
                    );

                }
            );

        }


        /* ======================================================
           SCROLL TO TOP
           ====================================================== */

        const scrollTopButton =
            document.querySelector(
                ".jv-scroll-top"
            );

        if (scrollTopButton) {

            function updateScrollTopButton() {

                scrollTopButton.classList.toggle(
                    "visible",
                    window.scrollY > 400
                );

            }

            scrollTopButton.addEventListener(
                "click",
                function () {

                    window.scrollTo({
                        top: 0,
                        behavior:
                            prefersReducedMotion.matches
                                ? "auto"
                                : "smooth"
                    });

                }
            );

            window.addEventListener(
                "scroll",
                updateScrollTopButton,
                { passive: true }
            );

            updateScrollTopButton();

        }


        /* ======================================================
           REDUCED MOTION
           ====================================================== */

        if (prefersReducedMotion.matches) {

            document.documentElement.style
                .scrollBehavior = "auto";

        }


        /* ======================================================
           LANGUAGE RESET
           ====================================================== */

        const resetButton =
            document.getElementById(
                "reset-language"
            );

        if (resetButton) {

            resetButton.addEventListener(
                "click",
                function (event) {

                    event.preventDefault();

                    document.cookie =
                        "googtrans=;" +
                        "expires=Thu, 01 Jan 1970 00:00:00 UTC;" +
                        "path=/;";

                    document.cookie =
                        "googtrans=;" +
                        "expires=Thu, 01 Jan 1970 00:00:00 UTC;" +
                        "path=/;" +
                        "domain=" +
                        window.location.hostname;

                    window.location.reload();

                }
            );

        }

    });

})();