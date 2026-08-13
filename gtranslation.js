/* --- BRAND CONFIGURATION VARIABLES --- */
:root {
    --gt-brand-color: #005a9c;       
    --gt-bg-hover: #f3f4f6;          
    --gt-text-color: #1f2937;        
    --gt-font-family: 'Poppins', 'Inter', system-ui, sans-serif; 
}

/* Import custom font safely from Google Fonts CDN */
@import url('https://googleapis.com');

/* Base Layout: Sticky Top-Right Circular Button */
.gtranslate_wrapper {
    position: fixed;
    top: 20px;
    right: 20px;
    z-index: 9999;
    display: flex;
    align-items: center;
    justify-content: flex-start; /* Keeps items aligned to the left side during expansion */
    width: 44px;
    height: 44px;
    background-color: #ffffff;
    border: 1px solid #e5e7eb;
    border-radius: 50%;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
    cursor: pointer;
    overflow: hidden;
    padding-left: 11px; /* Centers the icon perfectly in the 44px circle */
    box-sizing: border-box;
    /* Hardware-accelerated transitions for ultra-smooth movement */
    transition: width 0.35s cubic-bezier(0.4, 0, 0.2, 1), 
                border-radius 0.35s cubic-bezier(0.4, 0, 0.2, 1), 
                background-color 0.2s ease, 
                box-shadow 0.2s ease;
    font-family: var(--gt-font-family);
}

/* Vector Globe Icon Graphic */
.gtranslate_wrapper::before {
    content: "";
    display: inline-block;
    width: 20px;
    height: 20px;
    min-width: 20px;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://w3.org' fill='none' viewBox='0 0 24 24' stroke-width='2' stroke='%234b5563'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' d='M12 21a9 9 0 100-18 9 9 0 000 18zm0 0a15.918 15.918 0 003-9 15.918 15.918 0 00-3-9m0 18a15.918 15.918 0 01-3-9 15.918 15.918 0 013-9m-9 9h18' /%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: center;
    transition: transform 0.4s ease;
}

/* Dropdown Menu Custom Font and Text Styles */
.gtranslate_wrapper select {
    opacity: 0;
    visibility: hidden;
    transform: translateX(15px); /* Starts slightly offset to the right */
    border: none;
    background: transparent;
    color: var(--gt-text-color);
    font-family: var(--gt-font-family);
    font-size: 14px;
    font-weight: 500;
    cursor: pointer;
    outline: none;
    padding: 0;
    /* Controls the slide-in timing of the text separate from the container width */
    transition: opacity 0.2s ease, 
                visibility 0.2s ease, 
                transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

/* Apply fonts inside the native dropdown options pane */
.gtranslate_wrapper select option {
    font-family: var(--gt-font-family);
    color: var(--gt-text-color);
    background-color: #ffffff;
}

/* --- REVEAL STATE (Triggered via JS Click) --- */
.gtranslate_wrapper.active {
    width: 190px; /* Fixed width gives the animation a clean target end point */
    border-radius: 30px;
    padding-left: 12px;
    box-shadow: 0 6px 14px rgba(0, 0, 0, 0.12);
}

.gtranslate_wrapper.active::before {
    transform: rotate(90deg); /* Full quarter-turn spin animation on open */
}

.gtranslate_wrapper.active select {
    opacity: 1;
    visibility: visible;
    transform: translateX(0); /* Slides smoothly back left into its proper slot */
    padding-left: 4px;
    width: 140px; /* Forces layout stability during full reveal */
}

/* Hover Interactivity using Brand Colors */
.gtranslate_wrapper:hover {
    box-shadow: 0 6px 14px rgba(0, 0, 0, 0.12);
    border-color: #d1d5db;
    background-color: var(--gt-bg-hover);
}

/* Fallback protection: if active, maintain white inner dropdown background on hover */
.gtranslate_wrapper.active:hover {
    background-color: #ffffff;
}

.gtranslate_wrapper select:focus {
    color: var(--gt-brand-color);
}

/* Mobile Responsiveness (< 600px width) */
@media (max-width: 600px) {
    .gtranslate_wrapper, .gtranslate_wrapper.active {
        top: auto;
        right: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: auto;
        border-radius: 0;
        border-top: 1px solid #e5e7eb;
        justify-content: center;
        padding: 14px;
        box-shadow: 0 -4px 12px rgba(0, 0, 0, 0.08);
        background-color: #ffffff;
    }
    
    .gtranslate_wrapper select, .gtranslate_wrapper.active select {
        width: auto;
        opacity: 1;
        visibility: visible;
        transform: none;
    }
}

// 4. Instant Language Reset Handler
document.addEventListener("DOMContentLoaded", () => {
    const resetBtn = document.getElementById('reset-language');
    if (resetBtn) {
        resetBtn.addEventListener('click', (e) => {
            e.preventDefault();
            // Clear the GTranslate cookies across all path variations
            document.cookie = "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
            document.cookie = "googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/; domain=" + window.location.hostname;
            // Reload the portal fresh in native default English
            window.location.reload();
        });
    }
});
