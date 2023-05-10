#language: pt

@cart
Funcionalidade: Carrinho de Compras
    Para que eu possa visualizar todos os produtos selecionados
    Sendo um usuário não cadastrado
    Posso ter um carrinho de compras que exiba todos os produtos que selecionei

    @add_products
    Cenário: Adicionar dois produtos no carrinho
        Dado que acesso a listagem de produtos da EBAC
        Quando adiciono o produto "Abominable Hoodie" nas cores "Blue" e "Red" ao carrinho
        Então devo visualizar a mensagem "“Abominable Hoodie” foi adicionado no seu carrinho."
        E os produtos adicionados no carrinho de compras