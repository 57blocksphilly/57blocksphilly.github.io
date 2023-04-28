window.addEventListener('DOMContentLoaded', (event) => {
  const nodes = document.querySelectorAll('.js-anchor-target-blank a')
  Array.from(nodes).forEach((e) => {
    e.setAttribute('target', '_blank')
  })
})

window.fiftysevenblocks = {

  insertFrame: function (iframeSrc) {
    const resize = this.resizeFrame('#iframe-container iframe')
    return function(evt) {
      const frameCont = document.querySelector('#iframe-container')
      const iframe = document.createElement('iframe')
      iframe.setAttribute('src', iframeSrc)
      frameCont.appendChild(iframe)
      resize()
    }
  },

  resizeFrame: function (frameSelector) {
    return function() {
      const iframe = document.querySelector(frameSelector)
      if(!!iframe) {
        const destinationCont = document.querySelector('section .inner')
        iframe.setAttribute('height', destinationCont.clientHeight)
        iframe.setAttribute('width', destinationCont.clientWidth)
      }
    }
  }

}
