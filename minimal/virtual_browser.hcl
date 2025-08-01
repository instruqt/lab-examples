resource "virtual_browser" "browser" {
  url = "https://www.instruqt.com.com"
  agent = "chromium"
}

resource "task" "browser" {
  description = "Navigate to the Instruqt website"
  
  config {
    target = resource.virtual_browser.browser
  }

  condition "navigated" {
    description = "Navigated to instruqt.com"

    check {
      script          = "scripts/browser/check.js"
      failure_message = "The current page is not instruqt.com"
    }

    solve {
      script  = "scripts/browser/solve.js"
    }
  }
}