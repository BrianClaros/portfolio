document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('lottie-container');
  if (!container) return;

  container.style.opacity = '0';
  container.style.transition = 'opacity 1s ease';

  setTimeout(() => {
    lottie.loadAnimation({
      container,
      renderer: 'svg',
      loop: true,
      autoplay: true,
      path: 'assets/animations/developer.json'
    });

    requestAnimationFrame(() => {
      container.style.opacity = '1';
    });
  }, 1500);
});
