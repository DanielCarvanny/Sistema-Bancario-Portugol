programa {

    inclua biblioteca Texto
    inclua biblioteca Util

    funcao inicio() {

        cadeia ps, r, monta, letra
        inteiro x, ponto

        // Palavras secretas  
        x = Util.sorteia(1, 10)

        escolha(x) {
            caso 1:
                ps = "fio"
                r = "_ _ _"
                pare
            caso 2:
                ps = "mar"
                r = "_ _ _"
                pare
            caso 3:
                ps = "sol"
                r = "_ _ _"
                pare
            caso 4:
                ps = "casa"
                r = "_ _ _ _"
                pare
            caso 5:
                ps = "lua"
                r = "_ _ _"
                pare
            caso 6:
                ps = "pipa"
                r = "_ _ _ _"
                pare
            caso 7:
                ps = "lama"
                r = "_ _ _ _"
                pare
            caso 8:
                ps = "ar"
                r = "_ _"
                pare
            caso 9:
                ps = "arte"
                r = "_ _ _ _"
                pare
            caso 10:
                ps = "azul"
                r = "_ _ _ _"
                pare
        }

        // Verificação das letras
        faca {
            escreva(r)
            escreva("\nQual letra?\n")
            leia(letra)
            monta = ""
            para (inteiro i = 0; i < Texto.comprimento(ps); i++) {
                se (letra == Texto.obter_caracter(ps, i)) {
                    monta = monta + letra
                } senao {
                    monta = monta + Texto.obter_caracter(r, i)
                }
                se (letra != Texto.obter_caracter(ps, i)) {
                    ponto++
                }
            }
            r = monta

        } enquanto (ponto != 5)
    }
}
