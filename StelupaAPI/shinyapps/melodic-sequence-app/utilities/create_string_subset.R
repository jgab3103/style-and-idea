create_string_subset <- function(subset_length) {
  
  if(subset_length == 1) {
    return("[^;]*")
  } else if (subset_length == 2) {
    return("[^;]*-[^;]*")
  } else if (subset_length == 3) {
    return("[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 4) {
    return("[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 5) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 6) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 7) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 8) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else if (subset_length == 9) {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  } else {
    return("[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*;[^;]*")
  }
  
}