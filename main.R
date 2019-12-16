

# install.packages("ggplot2")
# install.packages("ggthemes")
# install.packages("RColorBrewer")
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
data(mpg)


########## Gráfico de dispersão ##########


ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point()



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(color = "blue", alpha = 0.6, size = 3)



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3)



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria")



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria") +
  facet_wrap(~cyl)



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria") +
  facet_wrap(~cyl) +
  stat_smooth(method = "lm")



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  facet_wrap(~cyl) +
  stat_smooth(method = "lm")



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  stat_smooth(method = "loess")



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(alpha = 0.6, size = 3, color = "blue") +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  stat_smooth(method = "loess", color = "red")



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(alpha = 0.6, size = 3, color = "blue") +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  stat_smooth(method = "loess", color = "red") +
  coord_cartesian(xlim = c(3,5))



ggplot(data = mpg, mapping = aes(x = displ, y = cty)) +
  geom_point(alpha = 0.6, size = 3, color = "blue") +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  stat_smooth(method = "loess", color = "red") +
  coord_cartesian(xlim = c(3,5)) +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12, face = "bold"),
        axis.text = element_text(size = 12))



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria") +
  coord_cartesian(xlim = c(3,5)) +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12, face = "bold"),
        axis.text = element_text(size = 12))



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria") +
  coord_cartesian(xlim = c(3,5)) +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12, face = "bold"),
        axis.text = element_text(size = 12),
        legend.title = element_text(size = 12, face = "bold"),
        legend.text = element_text(size = 10),
        legend.position = c(0.9, 0.7))



ls("package:ggthemes")[grepl("theme_", ls("package:ggthemes"))]



ggplot(data = mpg, mapping = aes(x = displ, y = cty, color = class)) +
  geom_point(alpha = 0.6, size = 3) +
  labs(title = "Relação Consumo e Cilindradas", x = "Cilindradas", y = "Milhas por Galão") +
  scale_color_discrete(name = "Categoria") +
  coord_cartesian(xlim = c(3,5)) +
  theme_economist()





########## Gráfico de barras ##########


ggplot(data = mpg, mapping = aes(x = manufacturer)) +
  geom_bar()



ggplot(data = mpg, mapping = aes(x = manufacturer, y = cyl)) +
  geom_col()


ggplot(data = mpg, mapping = aes(x = manufacturer)) +
  geom_bar(fill = "blue", color = "#636363", alpha = 0.6)



ggplot(data = mpg, mapping = aes(x = manufacturer)) +
  geom_bar(fill = "blue", color = "#636363", alpha = 0.6) +
  scale_y_log10()



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6, position = "dodge")



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6, position = "fill")



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6)



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6)



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6) +
  labs(title = "Total de veículos por fabricante", x = "Fabricante", y = "Quantidade") +
  scale_fill_discrete(name = "Categoria", 
                      labels = c("Dois lugares", "Compacto", "Médio", "Minivan", "Pick-up", "Subcompacto", "SUV"),
                      palette())





ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6) +
  labs(title = "Total de veículos por fabricante", x = "Fabricante", y = "Quantidade") +
  scale_fill_manual(name = "Categoria", 
                    labels = c("Dois lugares", "Compacto", "Médio", "Minivan", "Pick-up", "Subcompacto", "SUV"),
                    values = c("red", "black", "blue", "yellow", "pink", "gray", "brown"))



display.brewer.all(colorblindFriendly = TRUE)



ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6) +
  labs(title = "Total de veículos por fabricante", x = "Fabricante", y = "Quantidade") +
  scale_fill_brewer(name = "Categoria",
                    labels = c("Dois lugares", "Compacto", "Médio", "Minivan", "Pick-up", "Subcompacto", "SUV"),
                    palette = "GnBu")





ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6) +
  labs(title = "Total de veículos por fabricante", x = "Fabricante", y = "Quantidade") +
  scale_fill_brewer(name = "Categoria",
                    labels = c("Dois lugares", "Compacto", "Médio", "Minivan", "Pick-up", "Subcompacto", "SUV"),
                    palette = "GnBu") +
  facet_grid(year ~ cyl)





ggplot(data = mpg, mapping = aes(x = manufacturer, fill = class)) +
  geom_bar(color = "#636363", alpha = 0.6) +
  labs(title = "Total de veículos por fabricante", x = "Fabricante", y = "Quantidade") +
  scale_fill_brewer(name = "Categoria",
                    labels = c("Dois lugares", "Compacto", "Médio", "Minivan", "Pick-up", "Subcompacto", "SUV"),
                    palette = "GnBu") +
  facet_grid(year ~ cyl) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5, size = 9),
        axis.text.y = element_text(size = 10),
        axis.title = element_text(size = 12, face = "bold"),
        plot.title = element_text(size = 14, face = "bold"),
        legend.title = element_text(size = 12, face = "bold"),
        legend.text = element_text(size = 10),
        strip.text = element_text(size = 10, face = "bold"))




