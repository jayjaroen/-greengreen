const setHeight = () => {
  const innerH = window.innerHeight
  const homeScreen = document.getElementById('home-screen')
  if (homeScreen) {
    homeScreen.style.height = `${innerH}px`
  }
}

export { setHeight }
