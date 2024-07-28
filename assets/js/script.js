// Preloader
document.addEventListener('DOMContentLoaded', () => {
    const preloader = document.getElementById('preloader');
    window.addEventListener('load', () => {
        preloader.style.display = 'none';
    });
});

// Light and dark theme toggle
document.addEventListener('DOMContentLoaded', () => {
    const themeToggleButton = document.getElementById("theme-toggle");
    const currentTheme = localStorage.getItem("theme") || "light";

    // Apply the current theme
    document.documentElement.setAttribute("data-theme", currentTheme);

    // Set the initial icon based on the theme
    updateThemeIcon(currentTheme);

    themeToggleButton.addEventListener("click", function() {
        let theme = document.documentElement.getAttribute("data-theme");

        if (theme === "light") {
        theme = "dark";
        } else {
        theme = "light";
        }

        // Apply the new theme
        document.documentElement.setAttribute("data-theme", theme);
        localStorage.setItem("theme", theme);

        // Update the theme toggle button icon
        updateThemeIcon(theme);
    });

    function updateThemeIcon(theme) {
        const moonIcon = document.getElementById("moon-icon");
        const sunIcon = document.getElementById("sun-icon");

        if (theme === "dark") {
        moonIcon.classList.add("hidden");
        sunIcon.classList.remove("hidden");
        } else {
        moonIcon.classList.remove("hidden");
        sunIcon.classList.add("hidden");
        }
    }
    });


// Nav toggle
document.addEventListener('DOMContentLoaded', () => {
    // Elements
    const menuButton = document.querySelector('button[aria-controls="mobile-menu"]');
    const mobileMenu = document.getElementById('mobile-menu');
    const userMenuButton = document.getElementById('user-menu-button');
    const userMenu = document.querySelector('[aria-labelledby="user-menu-button"]');

    // Toggle mobile menu
    menuButton.addEventListener('click', () => {
        const isExpanded = menuButton.getAttribute('aria-expanded') === 'true';
        menuButton.setAttribute('aria-expanded', !isExpanded);
        mobileMenu.classList.toggle('hidden');
        menuButton.querySelector('svg:first-of-type').classList.toggle('hidden');
        menuButton.querySelector('svg:last-of-type').classList.toggle('hidden');
    });

    // Toggle user menu
    userMenuButton.addEventListener('click', () => {
        userMenu.classList.toggle('hidden');
    });

    // Close menus when clicking outside
    document.addEventListener('click', (event) => {
        if (!userMenuButton.contains(event.target) && !userMenu.contains(event.target)) {
            userMenu.classList.add('hidden');
        }
        if (!menuButton.contains(event.target) && !mobileMenu.contains(event.target)) {
            menuButton.setAttribute('aria-expanded', 'false');
            mobileMenu.classList.add('hidden');
            menuButton.querySelector('svg:first-of-type').classList.remove('hidden');
            menuButton.querySelector('svg:last-of-type').classList.add('hidden');
        }
    });

    // JavaScript to handle the scroll behavior
    let lastScrollTop = 0;
        const navbar = document.getElementById('navbar');

        window.addEventListener('scroll', () => {
            const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
            if (scrollTop > lastScrollTop) {
                // Scroll down - hide navbar
                navbar.classList.add('-translate-y-full');
            } else {
                // Scroll up - show navbar
                navbar.classList.remove('-translate-y-full');
            }
            lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // For Mobile or negative scrolling
        });
    
});

// comment form anonymous fields
document.addEventListener('DOMContentLoaded', function() {
    const checkbox = document.getElementById('cb2');
    const anoElement = document.querySelector('.ano');

    checkbox.addEventListener('change', function() {
        if (checkbox.checked) {
            anoElement.classList.add('fade-out');
        } else {
            anoElement.classList.remove('fade-out');
        }
    });
});


// Horizontl nav scroll
document.getElementById('scroll-left').addEventListener('click', function() {
    document.getElementById('scroll-container').scrollBy({
        left: -150,
        behavior: 'smooth'
    });
});

document.getElementById('scroll-right').addEventListener('click', function() {
    document.getElementById('scroll-container').scrollBy({
        left: 150,
        behavior: 'smooth'
    });
});
