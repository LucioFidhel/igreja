<div class="container-fluid">
  <div class="row-fluid">
    <div class="span8">
           
      <div class="row-fluid">
        <div class="span12">
              
          Selecionar reunião:
          {{view Ember.Select
            contentBinding="allMeetings"
            optionLabelPath="content.date"
            optionValuePath="content.date"
            valueBinding="lastSelectedMeeting"}}
          
          {{#if salvo}}
            <a style="float: right;" class="btn btn-success disabled">Salvo</a>
          {{else}}
            <a style="float: right;" {{action "salvarFrequencia"}} class="btn btn-success">Salvar</a>
          {{/if}}
          
          <table class="table table-bordered">
            <thead>
              <tr>
                <th></th>
                <th class="th-left">Nome</th>
                {{#each dateMeetings}}
                  <th>{{date}}</th>
                {{/each}}
              </tr>
            </thead>
            
            <tbody>
              <tr>
                <td colspan="8">Membros IBC</td>
              </tr>
              {{#each members}}
                <tr>
                  <td>{{funcao}}</td>
                  <td>{{nome}}</td>
                  {{#each dateMeetings}}
                    <td>
                      <input type="checkbox">
                    </td>
                  {{/each}}
                </tr>
              {{/each}}
          
              <tr>
                <td colspan="8">Visitantes</td>
              </tr>
              {{#each visitors}}
                <tr>
                  <td>{{funcao}}</td>
                  <td>{{nome}}</td>
                  {{#each dateMeetings}}
                    <td>
                      <input type="checkbox">
                    </td>
                  {{/each}}
                </tr>
              {{/each}}
            </tbody>
          </table>


      <p class="add-visitor">
        <a {{action "addNewVisitor"}} class="btn btn-block btn-large">Adicionar Visitante</a>
      </p>

      </div><!--/.span12 -->
    </div><!--/.row-fluid -->
  </div><!--/span8 -->

  {{outlet subgoals}}
  </div><!--/.row-fluid -->

</div><!--/.container-fluid -->