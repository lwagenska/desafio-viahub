class ProductPage
    include Capybara::DSL

    def select_prod(prod)
        find('.products-grid .product .name', text: prod).click
    end

    def select_size
        find('.variations .variable-items-wrapper .button-variable-item-L').click
    end

    def select_color(color)
        find(".variations .variable-items-wrapper .button-variable-item-#{color}").click
    end

    def add_prod(color)
        select_size
        select_color(color)
        click_button 'Comprar'
    end

    def msg_add_to_cart
        find('.woocommerce-message').text
    end

    def btn_cart
        find('.woocommerce-message .button', text: 'Ver carrinho').click
    end
end 