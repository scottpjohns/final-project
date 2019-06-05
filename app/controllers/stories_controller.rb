class StoriesController < ApplicationController
  def list
    @stories = Story.all

    render("story_templates/list.html.erb")
  end

  def details
    @story = Story.where({ :id => params.fetch("id_to_display") }).first

    render("story_templates/details.html.erb")
  end

  def blank_form
    @story = Story.new

    render("story_templates/blank_form.html.erb")
  end

  def save_new_info
    @story = Story.new

    @story.name = params.fetch("name")
    @story.comments_count = params.fetch("comments_count")
    @story.author_id = params.fetch("author_id")
    @story.theme_id = params.fetch("theme_id")
    @story.file_url = params.fetch("file_url")

    if @story.valid?
      @story.save

      redirect_to("/stories", { :notice => "Story created successfully." })
    else
      render("story_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @story = Story.where({ :id => params.fetch("id_to_prefill") }).first

    render("story_templates/prefilled_form.html.erb")
  end

  def save_edits
    @story = Story.where({ :id => params.fetch("id_to_modify") }).first

    @story.name = params.fetch("name")
    @story.comments_count = params.fetch("comments_count")
    @story.author_id = params.fetch("author_id")
    @story.theme_id = params.fetch("theme_id")
    @story.file_url = params.fetch("file_url")

    if @story.valid?
      @story.save

      redirect_to("/stories/" + @story.id.to_s, { :notice => "Story updated successfully." })
    else
      render("story_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @story = Story.where({ :id => params.fetch("id_to_remove") }).first

    @story.destroy

    redirect_to("/stories", { :notice => "Story deleted successfully." })
  end
end
