#' Render Sub-book
#' 
#' Renders a bookdown site using shared configuration files.
#' 
#' @details Copies all files in `shared` to path, renders the book then 
#'   and finally removes the copied files.
render_sub_book <- function(path, shared = "_shared") {
  common_files <- list.files(shared, full.names = FALSE)
  
  purrr::walk(
    paste(shared, common_files, sep = "/"),
    file.copy,
    to = path
  )
  on.exit(unlink(paste(path, common_files, sep = "/")))
  
  bookdown::render_book(input = path)
}

#' Serve Sub-book
#' 
#' @describeIn render_sub_book Similar, but using `bookdown::serve_book()`.
serve_sub_book <- function(path, shared = "_shared") {
  common_files <- list.files(shared, full.names = FALSE)
  
  purrr::walk(
    paste(shared, common_files, sep = "/"),
    file.copy,
    to = path
  )
  on.exit(unlink(paste(path, common_files, sep = "/")))
  
  bookdown::serve_book(dir = path)
}

# Chapters currently in progress

render_sub_book("statistics/apts/statistical-machine-learning/")

render_sub_book("programming/python-basics")
serve_sub_book("programming/python-basics")
