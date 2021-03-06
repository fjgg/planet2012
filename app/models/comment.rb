# == Qué define este modelo
# El modelo de comments define los comentarios que los usuarios hagan sobre los sitios. Cada comentario pertenece
# a un usuario y a un sitio determinado. Por defecto se ha establecido un máximo de 240 caracteres para cada comentario.
class Comment < ActiveRecord::Base
  belongs_to :site
  belongs_to :user

  # Debe estar protegido para evitar accesos indeseados
  attr_protected :user_id    

  # Se añaden estas definiciones 
  validates :comment, :presence => true, :length => { :maximum => 240 }   # campo obligatorio
  
end
