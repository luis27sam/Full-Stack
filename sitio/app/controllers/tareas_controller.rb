class TareasController < ApplicationController
  before_action :authenticate_usuario!, except: [:index,:show]
  before_action :set_tarea, except: [:index,:new,:create]

  def index
  	@tareas = Tarea.all
  end

  def new
  	@tarea = Tarea.new
  end

  def create
  	@tarea = Tarea.new(tarea_params)
    #(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    @tarea.usuario = current_usuario
  	if @tarea.save
    CorreosMailer.notificacion(@tarea).deliver_now
    redirect_to @tarea
  	#redirect_to controller: 'tareas', action: 'show', id: @tarea.id 
    else render :new
  	end
  end

  def show
    @comentario = Comentario.new
  	#@tarea = Tarea.find(params[:id])
  	#insert into tareas (titulo,descripcion) VALUES (FORMULARIO)
  end
#@tarea = Tarea.find(params[:id])
  def destroy
    @tarea.destroy
    redirect_to tareas_pach
    #redirect_to controllers: "tareas",action: "index"
  end

  def edit
    #@tarea = Tarea.find(params[:id])
  end

  def update
    #@tarea = Tarea.find(params[:id])
    if @tarea.update(tarea_params)
    #(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
    redirect_to @tarea
    #redirect_to controller: "tareas", action:"show",id: @tarea.id
    else 
      render :edit
      end
  end
  private
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    def tarea_params
      params.require(:tarea).permit(:titulo,:descripcion)
    end  
end
