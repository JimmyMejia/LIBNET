# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131204171705) do

  create_table "asistentes", force: true do |t|
    t.integer  "biblioteca_id"
    t.string   "nombre",               limit: 80
    t.text     "direccion"
    t.string   "telefono",             limit: 8
    t.string   "celular",              limit: 8
    t.string   "email",                limit: 40
    t.integer  "cantidaddeprestamos"
    t.integer  "cantidaddedevolucion"
    t.integer  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bibliotecas", force: true do |t|
    t.string   "nombre",     limit: 50
    t.text     "direccion"
    t.string   "telefono",   limit: 8
    t.string   "email",      limit: 40
    t.string   "logo",       limit: 250
    t.integer  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devolucions", force: true do |t|
    t.datetime "fechadevolucion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ejemplars", force: true do |t|
    t.integer  "cantidad"
    t.datetime "fechaadquisicion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.datetime "fecharegistro"
    t.string   "isbn",                                                          limit: 20
    t.string   "issn",                                                          limit: 20
    t.text     "fuentedecatalogacion"
    t.text     "idiomapub"
    t.text     "lugarpub"
    t.text     "cronologicofechahora"
    t.string   "clasificacionlc",                                               limit: 50
    t.string   "cdewey",                                                        limit: 50
    t.string   "autorpersonal"
    t.text     "autorcorporativo"
    t.text     "autorporasambleaconferenciacongreso"
    t.text     "asientoportitulouniforme_tituloconvencional"
    t.text     "tituloabreviado"
    t.text     "tituloclave"
    t.text     "titulouniforme"
    t.text     "titulouniformecolectivo"
    t.text     "titulo_mencionderesponsabilidad"
    t.text     "variantedeltitulo"
    t.text     "edicion_menciondeedicion"
    t.text     "editorial"
    t.text     "paginasovoldimensiones"
    t.text     "duraciondelmaterial"
    t.text     "frecuenciaactualdepublicacion"
    t.text     "fechadepublicacion_designaciondesecuencia"
    t.text     "notadeseriebajoautorpersonal"
    t.text     "notadeseriebajoautorcorporativo"
    t.text     "notadeseriebajoautorporasamblea"
    t.text     "serie_mencionderesponsabilidad"
    t.text     "notadeserie_menciondeserie"
    t.text     "notasgenerales"
    t.text     "notasdecon"
    t.text     "notadetesis"
    t.text     "notadelhistorialbibliografico"
    t.text     "notadebibliografia"
    t.text     "notadecontenido"
    t.text     "notaderestriccionesdeacceso"
    t.text     "notasdecredito"
    t.text     "notadereferencia_cita"
    t.text     "notasdeelenco"
    t.text     "notassobrefecha_horaylugardegrabacion"
    t.text     "notaderesumen"
    t.text     "notadeaudiencia"
    t.text     "notasobreotrosformatosdisponibles"
    t.text     "notadeversionoriginal"
    t.text     "notadedetallesdelsistema"
    t.text     "notadeidioma"
    t.text     "acciondeconservacion"
    t.text     "notadecatalogacionpersonalizada"
    t.text     "encabezamientosbajoautorperesonal"
    t.text     "encabezamientosbajoautorcorporativo"
    t.text     "encabezamientosbajoautorporasambleaconferenciacongresoetc"
    t.text     "encabezamientosbajotitulouniforme"
    t.text     "encabezamientosbajotemasgenerales"
    t.text     "encabezamientosbajonombresgeograficos"
    t.text     "asientossecundariosbajoautorpersonal"
    t.text     "asientossecundariosbajoautorcorporativo"
    t.text     "asientossecundariosbajoautorporasambleaconferenciacongresoetc"
    t.text     "asientossecundariosbajotitulouniforme"
    t.text     "asientossecundariosdetitulo"
    t.text     "fechadefasciculosnorecibidos"
    t.text     "fechadeinicio_terminacion"
    t.text     "acervo"
    t.text     "ligaarecursoselectronicos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas", force: true do |t|
    t.string   "idioma",     limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcs", force: true do |t|
    t.string   "codigomarc",    limit: 25
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "identificador", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcxmaterials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multas", force: true do |t|
    t.text     "observaciones"
    t.datetime "fechamulta"
    t.decimal  "totalmulta"
    t.string   "estado",        default: "Pendiente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagomultas", force: true do |t|
    t.datetime "fechapago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pais", force: true do |t|
    t.string   "pais",       limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prestamos", force: true do |t|
    t.datetime "fechaprestamo"
    t.datetime "fechadevolucion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renovacions", force: true do |t|
    t.string   "observaciones",   limit: 80
    t.datetime "fecharenovacion"
    t.datetime "fechadevolucion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservacions", force: true do |t|
    t.datetime "fechareserva"
    t.text     "observaciones"
    t.string   "estado",        limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipomaterials", force: true do |t|
    t.string   "descripcion", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoprestamos", force: true do |t|
    t.string   "descripcion", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipousuarios", force: true do |t|
    t.string   "descripcion", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.integer  "tipousuario"
    t.string   "identificacion",   limit: 30
    t.string   "nombre",           limit: 80
    t.text     "direccion"
    t.string   "telefono",         limit: 8
    t.string   "celular",          limit: 8
    t.datetime "fecharegistro"
    t.string   "username",         limit: 20, null: false
    t.string   "email",            limit: 40
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
