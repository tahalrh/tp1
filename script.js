// Gestion du compteur de clics
let count = 0;
const clickBtn = document.getElementById('action-btn');
const clickDisplay = document.getElementById('click-count');

if (clickBtn && clickDisplay) {
    clickBtn.addEventListener('click', () => {
        count++;
        clickDisplay.textContent = count;
    });
}

// Gestion du thème Sombre / Clair avec mémorisation
const themeToggle = document.getElementById('theme-toggle');
const currentTheme = localStorage.getItem('theme') || 'light';

// Appliquer le thème initial
if (currentTheme === 'dark') {
    document.documentElement.setAttribute('data-theme', 'dark');
    if (themeToggle) themeToggle.textContent = '☀️';
} else {
    document.documentElement.setAttribute('data-theme', 'light');
    if (themeToggle) themeToggle.textContent = '🌙';
}

// Basculer le thème au clic
if (themeToggle) {
    themeToggle.addEventListener('click', () => {
        const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
        const newTheme = isDark ? 'light' : 'dark';
        
        document.documentElement.setAttribute('data-theme', newTheme);
        themeToggle.textContent = newTheme === 'dark' ? '☀️' : '🌙';
        localStorage.setItem('theme', newTheme);
    });
}
