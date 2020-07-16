defmodule StatefulComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    Phoenix.View.render(LiveviewProblemsWeb.CustomView, "stateful_component.html", assigns)
  end

  def handle_event("click", _, socket) do
    send self(), {:update, socket.assigns.idx, "new_value_#{socket.assigns.idx}"}
    {:noreply, socket}
  end

  defmacro __using__(_opts) do
    quote do
      def handle_info({:update, 1, new_value}, socket) do
        {:noreply, assign(socket, parent_text_1: new_value)}
      end

      def handle_info({:update, 2, new_value}, socket) do
        {:noreply, assign(socket, parent_text_2: new_value)}
      end
    end
  end
end
