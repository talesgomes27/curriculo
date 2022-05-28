  
  
####### Portuguese ##########
  
  # Render Rmarkdown Html
  rmarkdown::render(input = "curriculo.Rmd", output_file = "docs/index.html")
  
  # Render Rmarkdown Pdf
  pagedown::chrome_print(
    "curriculo.Rmd",
    output = "docs/curriculo.pdf",
    browser = "google-chrome",
    format = c("pdf")
  )
  
  
  #Define the file name that will be deleted
  fn <- "curriculo.html"
  #Check its existence
  if (file.exists(fn)) {
    #Delete file if it exists
    file.remove(fn)
  }
  
####### English ##########
  
  # Render Rmarkdown Html
  rmarkdown::render(input = "resume.Rmd", output_file = "docs/resume.html")
  
  
  # Render Rmarkdown Pdf
  pagedown::chrome_print(
    "resume.Rmd",
    output = "docs/resume.pdf",
    browser = "google-chrome",
    format = c("pdf")
  )
  
  
  #Define the file name that will be deleted
  fn <- "resume.html"
  #Check its existence
  if (file.exists(fn)) {
    #Delete file if it exists
    file.remove(fn)
  }