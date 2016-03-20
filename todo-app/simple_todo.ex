defmodule TodoList do
    def new, do: Map.new()

    def add_entry(todo_list, date, title) do
        Map.update(todo_list, date, [title],&([title|&1]))
    end

    def entries(todo_list, date), do: Map.get(todo_list, date)
end
