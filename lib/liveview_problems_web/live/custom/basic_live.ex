defmodule LiveviewProblemsWeb.BasicLive do
  use LiveviewProblemsWeb, :live_view
  use StatefulComponent

  def render(assigns) do
    Phoenix.View.render(LiveviewProblemsWeb.CustomView, "basic_live.html", assigns)
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, parent_text_1: "old_value_1", parent_text_2: "old_value_2")}
  end

  def handle_event("basic_event", _, socket) do
    {:noreply, socket}
  end
end
