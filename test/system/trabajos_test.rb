require "application_system_test_case"

class TrabajosTest < ApplicationSystemTestCase
  setup do
    @trabajo = trabajos(:one)
  end

  test "visiting the index" do
    visit trabajos_url
    assert_selector "h1", text: "Trabajos"
  end

  test "should create trabajo" do
    visit trabajos_url
    click_on "New trabajo"

    fill_in "Cargo", with: @trabajo.cargo
    fill_in "Descripcion", with: @trabajo.descripcion
    fill_in "Empresa", with: @trabajo.empresa_id
    fill_in "Fecha inicio", with: @trabajo.fecha_inicio
    fill_in "Nombre", with: @trabajo.nombre
    fill_in "Regionch", with: @trabajo.regionch_id
    fill_in "Sueldo", with: @trabajo.sueldo
    fill_in "Tipo", with: @trabajo.tipo_id
    fill_in "Vacantes", with: @trabajo.vacantes
    click_on "Create Trabajo"

    assert_text "Trabajo was successfully created"
    click_on "Back"
  end

  test "should update Trabajo" do
    visit trabajo_url(@trabajo)
    click_on "Edit this trabajo", match: :first

    fill_in "Cargo", with: @trabajo.cargo
    fill_in "Descripcion", with: @trabajo.descripcion
    fill_in "Empresa", with: @trabajo.empresa_id
    fill_in "Fecha inicio", with: @trabajo.fecha_inicio
    fill_in "Nombre", with: @trabajo.nombre
    fill_in "Regionch", with: @trabajo.regionch_id
    fill_in "Sueldo", with: @trabajo.sueldo
    fill_in "Tipo", with: @trabajo.tipo_id
    fill_in "Vacantes", with: @trabajo.vacantes
    click_on "Update Trabajo"

    assert_text "Trabajo was successfully updated"
    click_on "Back"
  end

  test "should destroy Trabajo" do
    visit trabajo_url(@trabajo)
    click_on "Destroy this trabajo", match: :first

    assert_text "Trabajo was successfully destroyed"
  end
end
