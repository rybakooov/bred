function update () {
  document.body.style.setProperty('--vh', `${window.innerHeight / 100}px`)
}

window.addEventListener('resize', update)
update()
