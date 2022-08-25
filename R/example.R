library(ggplot2)
source('./R/scale_dressing.R')

# scale_color_dressing
ggplot(data = iris, 
       mapping =aes(x = Sepal.Length,
                    y = Sepal.Width,
                    color = Species,
                    fill = Species)) + 
  geom_point(size = 3, alpha = 0.75) + 
  theme_minimal() + 
  scale_color_dressing(reverse = TRUE, discrete = TRUE)

# scale_fill_dressing
ggplot(data = faithfuld, 
       mapping =aes(x = eruptions,
                    y = waiting,
                    z = density,
                    fill = density)) + 
  geom_tile() +
  theme_minimal() + 
  scale_fill_dressing(discrete = FALSE)
