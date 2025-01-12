use_ACTCP_aes <- function(use=NULL) {
    aes <- list()

    if (any("st_clr" == use)) {
        aes <- append(aes, list(
            scale_color_manual(values = st_clr_manual, labels = sapply(names(st_clr_manual), function(name) bquote(italic(.(name)))))
        ))
    }
    if (any("sp_clr" == use)) {
        aes <- append(aes, list(
            scale_color_manual(values = sp_clr_manual, labels = sapply(names(sp_clr_manual), function(name) bquote(italic(.(name)))))
        ))
    }
    if (any("sp_shp" == use)) {
        aes <- append(aes, list(
            scale_shape_manual(values = sp_shp_manual, labels = sapply(names(sp_shp_manual), function(name) bquote(italic(.(name)))))
        ))
    }
    if (any("bathy_world" == use)) {
        aes <- append(aes, list(
            scale_fill_gradientn(
                colors = c("#000000", "#06152b", "#27323f", "#656b6e"),
                values = rescale(c(-11000, -6000, -3000, 0)),
                limits = c(-11000, 0), 
                name = "Depth (m)",
                na.value = "white")
        ))
    }
    basic_theme <- list(
        theme_minimal(),
        theme(
            plot.title = element_text(size = 12, face = "bold", family = "Times New Roman", hjust = 0.5),
            axis.ticks.length = unit(-0.05, "in"),
            axis.text.y = element_text(margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
            axis.text.x = element_text(margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
            axis.ticks.x = element_blank(),
            aspect.ratio = 1,
            plot.background = element_blank(),
            panel.grid = element_blank(),
            panel.border = element_blank(),
            legend.background = element_blank(),
        ))
    if (any("theme_tp_b" == use)) {
        aes <- append(aes, list(
            basic_theme,
            theme(
                plot.title = element_text(color = "white"),
                panel.background = element_rect(color = "white", fill = "transparent"),
                axis.text = element_text(color = "white"),
                legend.text = element_text(color = "white"),
                legend.title = element_text(color = "white"),
                axis.title = element_text(color = "white")
        )))
    }
    if (any("theme_tp_w" == use)) {
        aes <- append(aes, list(
            basic_theme,
            theme(
                panel.background = element_rect(color = "black", fill = "transparent"),
                axis.text = element_text(color = "black"),
                legend.text = element_text(color = "black"),
                legend.title = element_text(color = "black"),
                axis.title = element_text(color = "black")
        )))
    }
    if (any("theme_blk" == use)) {
        aes <- append(aes, list(
            basic_theme,
            theme(
                panel.background = element_rect(color = "black", fill = "white"),
                panel.grid = element_blank()
        )))
    }
    if (any("theme_blk_drk" == use)) {
        aes <- append(aes, list(
            basic_theme,
            theme(
                panel.background = element_rect(fill = "#2d2d2d", colour = "#2d2d2d"),
                panel.grid = element_blank()
        )))
    }
    if (is.null(use)) {
        return(basic_theme)
    }
    return(aes)
}