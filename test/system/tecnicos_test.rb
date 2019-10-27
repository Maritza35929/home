require "application_system_test_case"

class TecnicosTest < ApplicationSystemTestCase
  setup do
    @tecnico = tecnicos(:one)
  end

  test "visiting the index" do
    visit tecnicos_url
    assert_selector "h1", text: "Tecnicos"
  end

  test "creating a Tecnico" do
    visit tecnicos_url
    click_on "New Tecnico"

    fill_in "Nombre", with: @tecnico.nombre
    fill_in "Profesion u oficio", with: @tecnico.profesion_u_oficio
    fill_in "Servicios ofrecidos", with: @tecnico.servicios_ofrecidos
    fill_in "Telefono", with: @tecnico.telefono
    click_on "Create Tecnico"

    assert_text "Tecnico was successfully created"
    click_on "Back"
  end

  test "updating a Tecnico" do
    visit tecnicos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tecnico.nombre
    fill_in "Profesion u oficio", with: @tecnico.profesion_u_oficio
    fill_in "Servicios ofrecidos", with: @tecnico.servicios_ofrecidos
    fill_in "Telefono", with: @tecnico.telefono
    click_on "Update Tecnico"

    assert_text "Tecnico was successfully updated"
    click_on "Back"
  end

  test "destroying a Tecnico" do
    visit tecnicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tecnico was successfully destroyed"
  end
end
