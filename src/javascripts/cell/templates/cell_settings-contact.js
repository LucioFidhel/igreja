Ember.TEMPLATES["cell_settings-contact"] = Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
helpers = helpers || Ember.Handlebars.helpers;
  var foundHelper, self=this;


  data.buffer.push("<div class=\"page-header\">\n            <h1>Contato</h1>\n        </div>\n        <div class=\"row-fluid\">\n            <div class=\"span12\">\n                <form class=\"form-horizontal\" method=\"post\" action=\"\">\n            \n                        <div class=\"control-group\">\n                            <label class=\"control-label\" for=\"input01\">Telefone</label>\n                            <div class=\"controls\">\n                                <input type=\"text\" class=\"input-large\" id=\"input01\" name=\"phone\" id=\"phone\" value=\"<?=$this->phone?>\" placeholder=\"(DDD) 9999-9999\">\n                            </div><!--/.controls -->\n                        </div><!--/.control-group -->\n\n                        <div class=\"form-actions\">\n                            <button type=\"submit\" class=\"btn btn-primary\">Salvar alterações</button>\n                            <button class=\"btn\">Cancelar</button>\n                        </div>\n                </form>\n            </div>\n        </div>");
});