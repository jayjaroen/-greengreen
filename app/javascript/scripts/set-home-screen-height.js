const setHeight = () => {
  const innerH = window.innerHeight
  const homeScreen = document.getElementById('home-screen')
  if (homeScreen && window.innerWidth <= 640) {
    homeScreen.style.height = `${innerH}px`
  }
}

export { setHeight }
