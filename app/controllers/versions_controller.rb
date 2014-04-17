class VersionsController < ApplicationController

  def edited
    @version = Version.find(params[:id])
    @version.next.save!
  end

  def original
    @version = Version.find(params[:id])
    @version.reify.save!
  end

end
