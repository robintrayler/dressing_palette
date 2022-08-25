scale_color_dressing <- function(discrete = TRUE, reverse = FALSE) {
  dressing_pal <- function(reverse = FALSE) {
    dressing_colors <-c('empty' = '#B89664',
                     'oil' = '#E7CA54',
                     'honey' = '#BF7E1E',
                     'vinegar' = '#884608',
                     'soy' = '#2F0A05')
    if (reverse) dressing_colors <- rev(dressing_colors)
    colorRampPalette(dressing_colors)
  }
  
  pal <- dressing_pal(reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", 'dressing', palette = pal)
  } else {
    scale_color_gradientn(colours = pal(256))
  }
}

scale_fill_dressing <- function(discrete = TRUE, reverse = FALSE) {
  
  dressing_pal <- function(reverse = FALSE) {
    dressing_colors <-c('empty' = '#B89664',
                        'oil' = '#E7CA54',
                        'honey' = '#BF7E1E',
                        'vinegar' = '#884608',
                        'soy' = '#2F0A05')
    if (reverse) dressing_colors <- rev(dressing_colors)
    colorRampPalette(dressing_colors)
  }
  
  pal <- dressing_pal(reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", 'dressing', palette = pal)
  } else {
    scale_fill_gradientn(colours = pal(256))
  }
}

