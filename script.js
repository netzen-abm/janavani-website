/* ============================================
   JANAVANI WEBSITE
   Lightweight site interactions
   ============================================ */

document.addEventListener("DOMContentLoaded", function () {

    /* =========================================
       MOBILE NAVIGATION
       ========================================= */

    const hamburger = document.querySelector(".hamburger");
    const navLinks = document.querySelector(".nav-links");

    if (hamburger && navLinks) {

        hamburger.addEventListener("click", function () {
            navLinks.classList.toggle("active");
            hamburger.classList.toggle("active");

            const expanded =
                hamburger.classList.contains("active");

            hamburger.setAttribute("aria-expanded", expanded);
        });

        const links = navLinks.querySelectorAll("a");

        links.forEach(function (link) {
            link.addEventListener("click", function () {
                navLinks.classList.remove("active");
                hamburger.classList.remove("active");
                hamburger.setAttribute("aria-expanded", "false");
            });
        });

        document.addEventListener("keydown", function (event) {
            if (event.key === "Escape") {
                navLinks.classList.remove("active");
                hamburger.classList.remove("active");
                hamburger.setAttribute("aria-expanded", "false");
            }
        });
    }


    /* =========================================
       SMOOTH SCROLL
       ========================================= */

    const anchorLinks = document.querySelectorAll(
        'a[href^="#"]'
    );

    anchorLinks.forEach(function (link) {

        link.addEventListener("click", function (event) {

            const targetId = link.getAttribute("href");

            if (!targetId || targetId === "#") {
                return;
            }

            const target = document.querySelector(targetId);

            if (!target) {
                return;
            }

            event.preventDefault();

            target.scrollIntoView({
                behavior: "smooth",
                block: "start"
            });
        });
    });


    /* =========================================
       NAVIGATION SHADOW ON SCROLL
       ========================================= */

    const navbar = document.querySelector(".navbar");

    if (navbar) {

        function updateNavbar() {

            if (window.scrollY > 30) {
                navbar.classList.add("scrolled");
            } else {
                navbar.classList.remove("scrolled");
            }
        }

        window.addEventListener(
            "scroll",
            updateNavbar,
            { passive: true }
        );

        updateNavbar();
    }


    /* =========================================
       SIMPLE SECTION REVEAL
       ========================================= */

    const revealElements = document.querySelectorAll(
        ".feature-card, .problem-card, .law-card, .solution-item, .tech-item"
    );

    if (
        revealElements.length > 0 &&
        "IntersectionObserver" in window
    ) {

        const revealObserver =
            new IntersectionObserver(
                function (entries, observer) {

                    entries.forEach(function (entry) {

                        if (entry.isIntersecting) {

                            entry.target.classList.add(
                                "fade-in"
                            );

                            observer.unobserve(
                                entry.target
                            );
                        }
                    });
                },
                {
                    threshold: 0.1
                }
            );

        revealElements.forEach(function (element) {

            element.classList.add(
                "fade-in-element"
            );

            revealObserver.observe(element);
        });
    }


    /* =========================================
       SCROLL TO TOP
       ========================================= */

    const scrollTopButton =
        document.createElement("button");

    scrollTopButton.type = "button";
    scrollTopButton.className = "scroll-top";
    scrollTopButton.setAttribute(
        "aria-label",
        "Scroll to top"
    );
    scrollTopButton.innerHTML = "â†‘";

    document.body.appendChild(scrollTopButton);


    function updateScrollTopButton() {

        if (window.scrollY > 400) {
            scrollTopButton.classList.add("visible");
        } else {
            scrollTopButton.classList.remove("visible");
        }
    }

    window.addEventListener(
        "scroll",
        updateScrollTopButton,
        { passive: true }
    );

    scrollTopButton.addEventListener(
        "click",
        function () {

            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        }
    );

    updateScrollTopButton();


    /* =========================================
       ACCESSIBILITY â€” REDUCE MOTION
       ========================================= */

    const prefersReducedMotion =
        window.matchMedia(
            "(prefers-reduced-motion: reduce)"
        );

    if (prefersReducedMotion.matches) {

        document.documentElement.style.scrollBehavior =
            "auto";
    }


    /* =========================================
       INSTANT NATIVE LANGUAGE RESET
       ========================================= */

    const resetBtn = document.getElementById('reset-language');
    if (resetBtn) {
        resetBtn.addEventListener('click', (e) => {
            e.preventDefault();
            // Erase underlying cookie storage scopes
            document.cookie = "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
            document.cookie = "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/; domain=" + window.location.hostname;
            // Hot reload application pipeline to clear views instantly
            window.location.reload();
        });
    }

});


/* ============================================
   MINIMAL DYNAMIC STYLES
   These support the JavaScript interactions
   without requiring another CSS framework.
   ============================================ */

const janavaniDynamicStyles =
    document.createElement("style");

janavaniDynamicStyles.textContent = `

    .navbar.scrolled {
        box-shadow:
            0 4px 18px rgba(0, 0, 0, 0.12);
    }

    .fade-in-element {
        opacity: 0;
        transform: translateY(18px);
    }

    .fade-in {
        opacity: 1;
        transform: translateY(0);
        transition:
            opacity 0.5s ease,
            transform 0.5s ease;
    }

    .scroll-top {
        position: fixed;
        right: 24px;
        bottom: 24px;

        width: 46px;
        height: 46px;

        border: none;
        border-radius: 50%;

        background: #0d3b66;
        color: #ffffff;

        font-size: 22px;
        line-height: 1;

        cursor: pointer;

        display: flex;
        align-items: center;
        justify-content: center;

        opacity: 0;
        visibility: hidden;

        transform: translateY(10px);

        transition:
            opacity 0.25s ease,
            visibility 0.25s ease,
            transform 0.25s ease;
        z-index: 9998; /* Keeps it directly beneath the translation layer level */
    }

    .scroll-top.visible {
        opacity: 1;
        visibility: visible;
        transform: translateY(0);
    }

    .scroll-top:hover {
        background: #164f89;
    }

    @media (max-width: 600px) {
        /* Pushes scroll-to-top button upward on phones to keep it clear of the translation bar ribbon */
        .scroll-top {
            bottom: 70px;
            right: 16px;
            width: 40px;
            height: 40px;
            font-size: 18px;
        }
    }

    @media (prefers-reduced-motion: reduce) {

        .fade-in-element {
            opacity: 1;
            transform: none;
        }

        .fade-in {
            transition: none;
        }

        .scroll-top {
            transition: none;
        }
    }

`;

document.head.appendChild(janavaniDynamicStyles);


/* ============================================
   JANAVANI WEBSITE READY
   ============================================ */

console.log(
    "Janavani website loaded successfully."
);
