server_create_list_of_works <- function() {
  

  
  works <- state_manager_get_works() 
  
  musicians <- state_manager_get_musicians()
  
  merged_data <<- left_join(works, 
                            musicians, by = c('created_by' = 'id')) %>%
    select(id,
           first_name,
           family_name,
           title) %>%
    mutate(list_display = paste0(family_name, ', ', first_name, ', ', title))
  
  
  #glimpse(merged_data)
  
  return(sort(unique(merged_data$list_display)))
}
