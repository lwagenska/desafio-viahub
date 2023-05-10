#Steps do cenário add_product
Dado('que acesso a listagem de produtos da EBAC') do
    # Acessa a página da EBAC diretamente na listagem de produtos
    @home_page.products_list
end

Quando('adiciono o produto {string} nas cores {string} e {string} ao carrinho') do |prod, color_blue, color_red|
    # Variáveis globais
    @prod = prod
    @color_blue = color_blue
    @color_red = color_red

    # Seleciona o produto na cor Blue e o adiciona no carrinho
    @product_page.select_prod(prod)
    @product_page.add_prod(color_blue)
    
    # Seleciona o produto na cor Red e o adiciona no carrinho
    @product_page.add_prod(color_red)
end

Então('devo visualizar a mensagem {string}') do |msg|
    # Verifica mensagem de sucesso na tela de produto
    expect(@product_page.msg_add_to_cart).to have_text msg
end

Então('os produtos adicionados no carrinho de compras') do
    # Clica no botão de Ver carrinho ainda na tela de produto    
    @product_page.btn_cart

    # Verifica se há os produtos no carrinho
    expect(@cart_page.products).to have_text @cart_page.cart_product(@prod, @color_blue)
    expect(@cart_page.products).to have_text @cart_page.cart_product(@prod, @color_red)
end