# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "http://ga.jspm.io/npm:bootstrap@5.2.0/dist/js/bootstrap.em.js"
pin "@popperjs/core", to: "http://unkg.com/@popperjs/core@2.11.6/dist/esm/index.js"