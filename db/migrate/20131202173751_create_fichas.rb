class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      #t.integer :idtipomaterial
      t.datetime :fecharegistro
      t.string :isbn, :limit => 20
      t.string :issn, :limit => 20
      t.text :fuentedecatalogacion
      t.text :idiomapub
      t.text :lugarpub
      t.text :cronologicofechahora
      t.string :clasificacionlc, :limit => 50
      t.string :cdewey, :limit => 50
      t.string :autorpersonal, :limit => 255
      t.text :autorcorporativo
      t.text :autorporasambleaconferenciacongreso
      t.text :asientoportitulouniforme_tituloconvencional
      t.text :tituloabreviado
      t.text :tituloclave
      t.text :titulouniforme
      t.text :titulouniformecolectivo
      t.text :titulo_mencionderesponsabilidad
      t.text :variantedeltitulo
      t.text :edicion_menciondeedicion
      t.text :editorial
      t.text :paginasovoldimensiones
      t.text :duraciondelmaterial
      t.text :frecuenciaactualdepublicacion
      t.text :fechadepublicacion_designaciondesecuencia
      t.text :notadeseriebajoautorpersonal
      t.text :notadeseriebajoautorcorporativo
      t.text :notadeseriebajoautorporasamblea
      t.text :serie_mencionderesponsabilidad
      t.text :notadeserie_menciondeserie
      t.text :notasgenerales
      t.text :notasdecon
      t.text :notadetesis
      t.text :notadelhistorialbibliografico
      t.text :notadebibliografia
      t.text :notadecontenido
      t.text :notaderestriccionesdeacceso
      t.text :notasdecredito
      t.text :notadereferencia_cita
      t.text :notasdeelenco
      t.text :notassobrefecha_horaylugardegrabacion
      t.text :notaderesumen
      t.text :notadeaudiencia
      t.text :notasobreotrosformatosdisponibles
      t.text :notadeversionoriginal
      t.text :notadedetallesdelsistema
      t.text :notadeidioma
      t.text :acciondeconservacion
      t.text :notadecatalogacionpersonalizada
      t.text :encabezamientosbajoautorperesonal
      t.text :encabezamientosbajoautorcorporativo
      t.text :encabezamientosbajoautorporasambleaconferenciacongresoetc
      t.text :encabezamientosbajotitulouniforme
      t.text :encabezamientosbajotemasgenerales
      t.text :encabezamientosbajonombresgeograficos
      t.text :asientossecundariosbajoautorpersonal
      t.text :asientossecundariosbajoautorcorporativo
      t.text :asientossecundariosbajoautorporasambleaconferenciacongresoetc
      t.text :asientossecundariosbajotitulouniforme
      t.text :asientossecundariosdetitulo
      t.text :fechadefasciculosnorecibidos
      t.text :fechadeinicio_terminacion
      t.text :acervo
      t.text :ligaarecursoselectronicos
      t.timestamps
    end
  end
end
