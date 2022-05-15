
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