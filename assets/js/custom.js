window.addEventListener('DOMContentLoaded', (event) => {
  const nodes = document.querySelectorAll('.js-anchor-target-blank a')
  Array.from(nodes).forEach((e) => {
    e.setAttribute('target', '_blank')
  })
})
