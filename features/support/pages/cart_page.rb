class CartPage
    include Capybara::DSL

    def products
        find('.widget .table-responsive .shop_table tbody').text
    end

    def cart_product(prod, color)
        "#{prod} " + '-' + ' L' + ',' + " #{color}"
    end
end 