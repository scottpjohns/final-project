class ThemesController < ApplicationController
  def list
    @themes = Theme.all

    render("theme_templates/list.html.erb")
  end

  def details
    @theme = Theme.where({ :id => params.fetch("id_to_display") }).first

    render("theme_templates/details.html.erb")
  end

  def blank_form
    @theme = Theme.new

    render("theme_templates/blank_form.html.erb")
  end

  def save_new_info
    @theme = Theme.new

    @theme.story_type = params.fetch("story_type")

    if @theme.valid?
      @theme.save

      redirect_to("/themes", { :notice => "Theme created successfully." })
    else
      render("theme_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @theme = Theme.where({ :id => params.fetch("id_to_prefill") }).first

    render("theme_templates/prefilled_form.html.erb")
  end

  def save_edits
    @theme = Theme.where({ :id => params.fetch("id_to_modify") }).first

    @theme.story_type = params.fetch("story_type")

    if @theme.valid?
      @theme.save

      redirect_to("/themes/" + @theme.id.to_s, { :notice => "Theme updated successfully." })
    else
      render("theme_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @theme = Theme.where({ :id => params.fetch("id_to_remove") }).first

    @theme.destroy

    redirect_to("/themes", { :notice => "Theme deleted successfully." })
  end
end
