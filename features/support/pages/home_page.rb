class HomePage
    include Capybara::DSL

    def products_list
        visit '/'
        find('#primary-menu .menu-item-629').click
    end
end