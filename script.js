/* ============================================
   JANAVANI WEBSITE - SCRIPT.JS
   ============================================ */

// ============================================
// MOBILE MENU TOGGLE
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');

    if (hamburger) {
        hamburger.addEventListener('click', function() {
            navLinks.classList.toggle('active');
            hamburger.classList.toggle('active');
        });
    }

    // Close menu when a link is clicked
    if (navLinks) {
        const links = navLinks.querySelectorAll('a');
        links.forEach(link => {
            link.addEventListener('click', function() {
                navLinks.classList.remove('active');
                hamburger.classList.remove('active');
            });
        });
    }
});

// ============================================
// SMOOTH SCROLL FOR ANCHOR LINKS
// ============================================

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        if (href === '#') return;
        
        e.preventDefault();
        const target = document.querySelector(href);
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// ============================================
// NAVBAR BACKGROUND ON SCROLL
// ============================================

window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) {
        navbar.style.boxShadow = '0 5px 20px rgba(0, 0, 0, 0.2)';
    } else {
        navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
    }
});

// ============================================
// INTERSECTION OBSERVER FOR ANIMATIONS
// ============================================

const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('fade-in');
            observer.unobserve(entry.target);
        }
    });
}, observerOptions);

// Observe all cards and sections
document.querySelectorAll('.problem-card, .feature-card, .law-card, .solution-item, .tech-item').forEach(el => {
    el.classList.add('fade-in-element');
    observer.observe(el);
});

// ============================================
// RATING SYSTEM (if used on a form page)
// ============================================

class RatingSystem {
    constructor(elementId) {
        this.container = document.getElementById(elementId);
        if (!this.container) return;
        
        this.stars = this.container.querySelectorAll('.star');
        this.ratingValue = 0;
        
        this.stars.forEach((star, index) => {
            star.addEventListener('click', () => this.setRating(index + 1));
            star.addEventListener('mouseover', () => this.hoverRating(index + 1));
            star.addEventListener('mouseout', () => this.resetHover());
        });
    }

    setRating(value) {
        this.ratingValue = value;
        this.updateStars(value);
        // Store rating in a hidden input if needed
        const input = this.container.querySelector('input[type="hidden"]');
        if (input) {
            input.value = value;
        }
    }

    hoverRating(value) {
        this.updateStars(value);
    }

    resetHover() {
        this.updateStars(this.ratingValue);
    }

    updateStars(value) {
        this.stars.forEach((star, index) => {
            if (index < value) {
                star.classList.add('active');
            } else {
                star.classList.remove('active');
            }
        });
    }
}

// Initialize rating system
const rating = new RatingSystem('rating-system');

// ============================================
// FORM SUBMISSION HANDLER
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.getElementById('contactForm');
    
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Collect form data
            const formData = {
                name: document.getElementById('name').value,
                email: document.getElementById('email').value,
                message: document.getElementById('message').value
            };
            
            // Validate form
            if (!validateForm(formData)) {
                showNotification('Please fill in all fields correctly', 'error');
                return;
            }
            
            // Show loading state
            const submitBtn = contactForm.querySelector('button[type="submit"]');
            const originalText = submitBtn.textContent;
            submitBtn.textContent = 'Sending...';
            submitBtn.disabled = true;
            
            // Simulate form submission (replace with actual API call)
            setTimeout(() => {
                showNotification('Message sent successfully! We will get back to you soon.', 'success');
                contactForm.reset();
                submitBtn.textContent = originalText;
                submitBtn.disabled = false;
            }, 1500);
        });
    }
});

// ============================================
// FORM VALIDATION
// ============================================

function validateForm(data) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    
    if (!data.name || data.name.trim() === '') {
        return false;
    }
    
    if (!data.email || !emailRegex.test(data.email)) {
        return false;
    }
    
    if (!data.message || data.message.trim() === '') {
        return false;
    }
    
    return true;
}

// ============================================
// NOTIFICATION SYSTEM
// ============================================

function showNotification(message, type = 'info') {
    // Create notification element
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.textContent = message;
    
    // Add styles
    notification.style.cssText = `
        position: fixed;
        bottom: 20px;
        right: 20px;
        padding: 15px 20px;
        background-color: ${type === 'success' ? '#27ae60' : type === 'error' ? '#e74c3c' : '#3498db'};
        color: white;
        border-radius: 5px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
        z-index: 9999;
        animation: slideIn 0.3s ease-out;
        max-width: 300px;
    `;
    
    document.body.appendChild(notification);
    
    // Remove after 5 seconds
    setTimeout(() => {
        notification.style.animation = 'slideOut 0.3s ease-out';
        setTimeout(() => notification.remove(), 300);
    }, 5000);
}

// ============================================
// SCROLL TO TOP BUTTON
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    // Create scroll to top button
    const scrollTopBtn = document.createElement('button');
    scrollTopBtn.id = 'scrollTopBtn';
    scrollTopBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
    scrollTopBtn.style.cssText = `
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 50px;
        height: 50px;
        background-color: #e74c3c;
        color: white;
        border: none;
        border-radius: 50%;
        cursor: pointer;
        display: none;
        align-items: center;
        justify-content: center;
        font-size: 1.2rem;
        z-index: 999;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        transition: all 0.3s ease;
    `;
    
    document.body.appendChild(scrollTopBtn);
    
    // Show button when scrolled down
    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 300) {
            scrollTopBtn.style.display = 'flex';
        } else {
            scrollTopBtn.style.display = 'none';
        }
    });
    
    // Scroll to top
    scrollTopBtn.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
    
    // Hover effect
    scrollTopBtn.addEventListener('mouseover', function() {
        this.style.transform = 'scale(1.1)';
        this.style.backgroundColor = '#c0392b';
    });
    
    scrollTopBtn.addEventListener('mouseout', function() {
        this.style.transform = 'scale(1)';
        this.style.backgroundColor = '#e74c3c';
    });
});

// ============================================
// STATISTICS COUNTER ANIMATION
// ============================================

function animateCounter(element, target, duration = 2000) {
    let current = 0;
    const increment = target / (duration / 16);
    const timer = setInterval(() => {
        current += increment;
        if (current >= target) {
            element.textContent = target;
            clearInterval(timer);
        } else {
            element.textContent = Math.floor(current);
        }
    }, 16);
}

// Observe stats elements and animate on scroll
const statsObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting && !entry.target.classList.contains('animated')) {
            entry.target.classList.add('animated');
            const numberElement = entry.target.querySelector('.stat-number');
            if (numberElement) {
                const text = numberElement.textContent;
                const number = parseInt(text);
                if (!isNaN(number)) {
                    animateCounter(numberElement, number);
                }
            }
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('.stat').forEach(el => statsObserver.observe(el));

// ============================================
// LAZY LOADING IMAGES (if applicable)
// ============================================

function setupLazyLoading() {
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const img = entry.target;
                    img.src = img.dataset.src;
                    img.classList.add('loaded');
                    observer.unobserve(img);
                }
            });
        });

        document.querySelectorAll('img[data-src]').forEach(img => imageObserver.observe(img));
    }
}

setupLazyLoading();

// ============================================
// KEYBOARD ACCESSIBILITY
// ============================================

document.addEventListener('keydown', function(e) {
    // ESC key to close mobile menu
    if (e.key === 'Escape') {
        const navLinks = document.querySelector('.nav-links');
        const hamburger = document.querySelector('.hamburger');
        if (navLinks && hamburger) {
            navLinks.classList.remove('active');
            hamburger.classList.remove('active');
        }
    }
    
    // Alt + T to go to top
    if (e.altKey && e.key === 't') {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }
});

// ============================================
// MODAL DIALOG HANDLER
// ============================================

class Modal {
    constructor(modalId) {
        this.modal = document.getElementById(modalId);
        this.closeBtn = this.modal?.querySelector('.close');
        
        if (!this.modal) return;
        
        this.closeBtn?.addEventListener('click', () => this.close());
        window.addEventListener('click', (e) => {
            if (e.target === this.modal) this.close();
        });
    }
    
    open() {
        if (this.modal) this.modal.style.display = 'flex';
    }
    
    close() {
        if (this.modal) this.modal.style.display = 'none';
    }
}

// ============================================
// ACTIVE NAVIGATION LINK
// ============================================

window.addEventListener('scroll', function() {
    const sections = document.querySelectorAll('section[id]');
    const navLinks = document.querySelectorAll('.nav-links a[href^="#"]');
    
    let current = '';
    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        if (pageYOffset >= sectionTop - 60) {
            current = section.getAttribute('id');
        }
    });
    
    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href') === `#${current}`) {
            link.classList.add('active');
        }
    });
});

// ============================================
// ADD FADE-IN CSS ANIMATION
// ============================================

const style = document.createElement('style');
style.textContent = `
    @keyframes slideIn {
        from {
            transform: translateX(400px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes slideOut {
        from {
            transform: translateX(0);
            opacity: 1;
        }
        to {
            transform: translateX(400px);
            opacity: 0;
        }
    }
    
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    .fade-in-element {
        opacity: 0;
    }
    
    .fade-in {
        animation: fadeIn 0.6s ease-out forwards;
    }
    
    .nav-links a.active {
        color: #e74c3c;
        font-weight: 700;
    }
`;
document.head.appendChild(style);

// ============================================
// MOBILE RESPONSIVE MENU STYLES
// ============================================

const mobileMenuStyle = document.createElement('style');
mobileMenuStyle.textContent = `
    @media (max-width: 768px) {
        .nav-links {
            position: absolute;
            top: 60px;
            left: 0;
            right: 0;
            background-color: #2c3e50;
            flex-direction: column;
            gap: 0;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease;
        }
        
        .nav-links.active {
            max-height: 500px;
        }
        
        .nav-links a {
            padding: 15px 20px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            display: block;
        }
        
        .hamburger.active span:nth-child(1) {
            transform: rotate(45deg) translate(8px, 8px);
        }
        
        .hamburger.active span:nth-child(2) {
            opacity: 0;
        }
        
        .hamburger.active span:nth-child(3) {
            transform: rotate(-45deg) translate(7px, -7px);
        }
    }
`;
document.head.appendChild(mobileMenuStyle);

// ============================================
// PERFORMANCE: DEBOUNCE FUNCTION
// ============================================

function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Use debounce for resize events
const debouncedResize = debounce(function() {
    // Handle resize logic here
}, 250);

window.addEventListener('resize', debouncedResize);

// ============================================
// GOOGLE ANALYTICS PLACEHOLDER
// ============================================

// Replace with your actual Google Analytics ID
// window.dataLayer = window.dataLayer || [];
// function gtag(){dataLayer.push(arguments);}
// gtag('js', new Date());
// gtag('config', 'GA_ID');

// ============================================
// PRINT STYLES
// ============================================

window.addEventListener('beforeprint', function() {
    // Hide non-essential elements before printing
    document.querySelector('.navbar')?.style.display = 'none';
    document.querySelector('.footer')?.style.display = 'none';
});

window.addEventListener('afterprint', function() {
    // Restore elements after printing
    document.querySelector('.navbar')?.style.display = 'block';
    document.querySelector('.footer')?.style.display = 'block';
});

// ============================================
// EXPORT FUNCTIONS FOR EXTERNAL USE
// ============================================

window.JanavaniApp = {
    showNotification: showNotification,
    Modal: Modal,
    RatingSystem: RatingSystem
};

console.log('Janavani website loaded successfully!');
