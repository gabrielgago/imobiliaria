<strong class="title">Cadastro de Im�veis</strong>
        <div class="formulario">
            <table>
                <tbody>
                    <!-- Sessao geral -->
                    <tr class="sub-titulo-tr">
                            <td colspan="2" class="sub-titulo-td separador-geral">
                                <i class="far fa-caret-square-up"></i>
                                <span class="sub-titulo">Geral</span>
                            </td>
                    </tr>
                    <tr class="hidden hidden-geral">
                            <td class="label">C�digo</td>
                            <td class="entrada">
                                <input type="number" class="input codigo"/>
                                <i class="fas fa-sync-alt atualizar atualizar-codigo"></i>
                            </td>
                    </tr>
                    <tr class="hidden hidden-geral">
                            <td class="label">Descri��o</td>
                            <td class="entrada">
                                <input type="text" class="input descricao"/>
                            </td>
                    </tr>
                    <!-- Sess�o endereco -->
                    <tr class="sub-titulo-tr">
                        <td colspan="2" class="sub-titulo-td separador-endereco">
                            <i class="far fa-caret-square-up"></i>
                            <span class="sub-titulo">Endere�o</span>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Cep</td>
                        <td class="entrada">
                            <input type="number" class="input cep"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Rua</td>
                        <td class="entrada">
                                <input type="text" class="input rua"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">N�mero</td>
                        <td class="entrada">
                                <input type="text" class="input numero"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Complemento</td>
                        <td class="entrada">
                                <input type="text" class="input complemento"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Bairro</td>
                        <td class="entrada">
                                <input type="text" class="input bairro"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Munic�pio</td>
                        <td class="entrada">
                                <input type="text" class="input municipio"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Cidade</td>
                        <td class="entrada">
                                <input type="text" class="input cidade"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-endereco">
                        <td class="label">Estado</td>
                        <td class="entrada">
                                <input type="text" class="input estado"/>
                        </td>
                    </tr>
                    <!-- Sessao proprietario -->
                    <tr class="sub-titulo-tr">
                        <td colspan="2" class="sub-titulo-td separador-proprietario">
                            <i class="far fa-caret-square-up"></i>
                            <span class="sub-titulo">Propriet�rio</span>
                        </td>
                    </tr>
                    <tr class="hidden hidden-proprietario">
                        <td class="label">Propriet�rio</td>
                        <td class="entrada">
                            <select name="" id="">
                                <option value="Selecione o propriet�rio.">Selecione o propriet�rio.</option>
                                <option value="Gabriel Martins Frael de Abreu">Gabriel Martins Frael de Abreu</option>
                                <option value="Maycon Ribas">Maycon Ribas</option>
                                <option value="Rodrigo Noutel">Rodrigo Noutel</option>
                            </select>
                            <i class="fas fa-sync-alt atualizar atualizar-proprietario"></i>
                        </td>
                    </tr>
                   <tr class="hidden hidden-proprietario">
                        <td class="label">C�digo</td>
                        <td class="entrada">
                                <input type="number" class="input codigo"/>
                        </td>
                    </tr>
                    <tr class="hidden hidden-proprietario">
                        <td class="label">CPF</td>
                        <td class="entrada">
                                <input type="number" class="input cpf"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="menu-botoes">
                    <button class="bt-menus bt-acoes" 
                        >
                        Salvar
                    </button>
                    <button class="bt-menus bt-acoes" 
                        >
                        Limpar
                    </button>
                    <button class="bt-menus bt-acoes" 
                        >
                        Cancelar
                    </button>
                </div>
        </div>