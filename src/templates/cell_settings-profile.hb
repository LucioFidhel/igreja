<div class="page-header">
            <h1>Perfil</h1>
        </div>
        <div class="row-fluid">
            <div class="span12">
             <form class="form-horizontal" action="" method="post" name="form_perfil">
             <div class="control-group">
                <div class="controls">
                    <div class="span2">
                        <div class="thumbnail">
                            <img src="http://placehold.it/140x140" alt="">
                        </div>
                    </div>
                </div><!--/.controls -->
            </div><!--/.control-group -->
            <div class="control-group">
                <label class="control-label" for="input01">Alterar foto</label>
                <div class="controls">
                    <input class="input-file" type="file" name="photo" id="photo">
                </div><!--/.controls -->
            </div><!--/.control-group -->
                        <div class="control-group">
                            <label class="control-label" for="input01">Nome</label>
                            <div class="controls">
                                <input type="text" name="name" value="<?=$this->name?>" class="input-large" id="name" placeholder="nome completo">
                            </div><!--/.controls -->
                        </div><!--/.control-group -->
                        <div class="control-group">
                            <label class="control-label" for="input01">Sobrenome</label>
                            <div class="controls">
                                <input type="text" name="surname" value="<?=$this->surname?>" class="input-large" id="input01" placeholder="nome completo">
                            </div><!--/.controls -->
                        </div><!--/.control-group -->
                        <div class="control-group">
                            <label class="control-label" for="input01">Apelido</label>
                            <div class="controls">
                                <input type="text" name="nickname" value="<?=$this->nickname?>" class="input-large" id="input01" placeholder="como quer ser chamado">
                            </div><!--/.controls -->
                        </div><!--/.control-group -->
                        <div class="control-group">
                            <label class="control-label" for="input01">Sexo</label>
                            <div class="controls">
                                <label for="male" class="radio">
                                    <input type="radio" name="gender" id="male" <?if ($this->gender == 1){?>checked="checked"<?}?> value="1">
                                    Masculino
                                </label>
                                <label for="female" class="radio">
                                    <input type="radio"  name="gender" id="female" <?if ($this->gender == 2){?>checked="checked"<?}?> value="2">
                                    Feminino
                                </label>
                            </div><!--/.controls -->
                        </div><!--/.control-group -->
                        <div class="control-group">
                            <label class="control-label" for="input01">Data de nascimento</label>
                            <div class="controls">
                                <input type="text" name="birthday" value="<?=$this->birthday?>" class="input-large" id="birthday" placeholder="data de nascimento">
                            </div><!--/.controls -->
                        </div><!--/.control-group -->
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Salvar alterações</button>
                            <button class="btn">Cancelar</button>
                        </div>
                </form>
            </div>
        </div>