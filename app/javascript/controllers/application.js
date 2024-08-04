import { Application } from "@hotwired/stimulus"
import ScrollReveal from '@stimulus-components/scroll-reveal'
import Dialog from '@stimulus-components/dialog'

const application = Application.start()
application.register('scroll-reveal', ScrollReveal)
application.register('dialog', Dialog)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
