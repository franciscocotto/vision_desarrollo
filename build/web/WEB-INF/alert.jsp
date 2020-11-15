<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="confirmDelete" role="dialog" aria-labelledby="confirmDeleteLabel" aria-hidden="true">
  <form id="delete" action="deleteCliente" method="post">
    <div class="modal-dialog" style="width:25%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>            
            </div>
            <div class="modal-body">
                  <span class="glyphicon glyphicon-remove-sign errort"></span>
               <h4 class="text-center">Estimado Usuario</h4>
               <div class="form-group">
                        <label class="col-md-6 control-label">ID Cliente</label>
                        <div class="col-md-6">
                            <input class="form-control addcodigo" type="text" name="codigo" readonly />    
                        </div>
                    </div>   
                <p  class="text-center">¿Estas Seguro que Deseas Eliminar el Usuario?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-danger">Eliminar</button>
            </div>
        </div>
    </div>
  </form>
</div>