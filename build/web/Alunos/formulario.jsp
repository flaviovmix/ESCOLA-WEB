<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Novo Registro
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Novo Registro</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <form method="post" action="listaDeAlunos.jsp" class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Nome Completo</label>
                            <input type="text" class="form-control" id="firstName" name="nome" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label for="zip" class="form-label">CPF</label>
                            <input type="text" class="form-control" name="cargaHoraria" id="zip" placeholder="" required>
                            <div class="invalid-feedback">
                                Zip code required.
                            </div>
                        </div>                    

                        <div class="col-md-3">
                            <label for="state" class="form-label">RG</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                            <div class="invalid-feedback">
                                Zip code required.
                            </div>
                        </div>   

                        <div class="col-md-3">
                            <label for="country" class="form-label">Sexo</label>
                            <select class="form-select" id="country" required>
                                <option value="">Escolher...</option>
                                <option>Masculino</option>
                                <option>Feminino</option>
                                <option>Outro</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid country.
                            </div>
                        </div>        

                        <div class="col-md-3">
                            <label for="country" class="form-label">Dada de Nascimento</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                        </div>                 

                        <div class="col-md-2">
                            <label for="zip" class="form-label">Cep</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                        </div>                    

                        <div class="col-md-3">
                            <label for="state" class="form-label">Estado</label>
                            <select class="form-select" id="state" required>
                                <option value="">Escolher...</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapá</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceará</option>
                                <option>Distrito Federal</option>
                                <option>Espírito Santo</option>
                                <option>Goiás</option>
                                <option>Maranhão</option>
                            </select>
                        </div>   

                        <div class="col-md-7">
                            <label for="zip" class="form-label">Endereço</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                        </div>                      

                        <div class="col-12">
                            <label for="address" class="form-label">Complemento</label>
                            <input type="text" class="form-control" id="address" placeholder="Rua..." required>
                        </div>


                    </div>


                    <div class="form-check mt-4">
                        <input type="checkbox" class="form-check-input" id="save-info">
                        <label class="form-check-label" for="save-info">Cadastro Ativo</label>
                    </div>

                    <!--<button class="w-100 btn btn-primary btn-lg" type="submit">Cadastrar</button>-->
                    <div class="modal-footer">
                        <input  type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="Salvar"/>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    </div>

                </form>


            </div>


        </div>
    </div>
</div>        