defmodule WrapperComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    Phoenix.View.render(LiveviewProblemsWeb.CustomView, "wrapper_component.html", assigns)
  end
end
