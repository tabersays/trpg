class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @characters = Character.all
    respond_with(@characters)
  end

  def show
    respond_with(@character)
  end

  def new
    @character = Character.new
    @edit = false
    respond_with(@character)
  end

  def edit
    @edit = true if @character.errors.any?
  end

  def create
    @character = Character.new(character_params)
    @character.image = @character.generate_filename
    if params[:character][:uploaded_file]
      @uploaded_io = params[:character][:uploaded_file]
      File.open(Rails.root.join('public', 'images', @character.image), 'wb') do |file|
        file.write(@uploaded_io.read)
      end
    else
      @character.image = 'default.png'
    end

    @character.lv = 1
    @character.exp = 0
    @character.user_id = current_user.id

=begin
    @character.con = 1 if !@character.con
    @character.min = 1 if !@character.min
    @character.end = 1 if !@character.end
=end

    @character.hp = @character.con * 10 if @character.con
    @character.mp = @character.min * 10 if @character.min
    @character.ep = @character.end * 10 if @character.end

=begin
    @character.sol = 1 if !@character.sol
    @character.str = 1 if !@character.str
    @character.dex = 1 if !@character.dex
    @character.spd = 1 if !@character.spd
=end
    total = 0
    total = (@character.str + @character. dex + @character.spd + @character.con + @character.end + @character.min + @character.sol) if checkValid
    if total <= 20 
      @character.save
      respond_with @character

    else
      @myMessage = "Your values added up to " + total.to_s + " Please use less points."
      render :new
    end
  end

  def update
    @character.update(character_params)
    respond_with(@character)
  end

  def destroy
    @character.destroy
    respond_with(@character)
  end

  def checkValid
    return false if @character.str
    return false if @character.dex
    return false if @character.spd
    return false if @character.end
    return false if @character.con
    return false if @character.min
    return false if @character.sol

  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :user_id, :hp, :mp, :ep, :str, :dex, :spd, :con, :end, :min, :sol, :lv, :exp)
    end
end
