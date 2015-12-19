defmodule Stockastic.Levels do
  import Stockastic

  def start(level, config) do
    post "gm/levels/#{level}", config
  end

  defmodule Instances do

    def status(instance_id, config) do
      get "gm/instances/#{instance_id}", config
    end

    def restart(instance_id, config) do
      post "gm/instances/#{instance_id}/restart", config
    end

    def stop(instance_id, config) do
      post "gm/instances/#{instance_id}/stop", config
    end

    def resume(instance_id, config) do
      post "gm/instances/#{instance_id}/resume", config
    end

  end

end
