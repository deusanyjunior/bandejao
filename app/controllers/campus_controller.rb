# -*- encoding : utf-8 -*-
class CampusController < ApplicationController
  def index
    @campus = Campus.all
    
    respond_to do |format|
      format.html #index.html.erb
      format.xml { render :xml => @campus }
      format.json {render :json => @campus.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")} }
    end
  end

  def show
    @campus = Campus.find(params[:id])
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => {:campus => @campus} }
      format.json { render :json => {:campus => @campus}.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")} }
    end
  end

  def new
    @campus = Campus.new
    
    respond_to do |format|
      format.html #new.html.erb
      format.json { render :json => @campus.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")} }
    end
  end

  def create
    @campus = Campus.new(params[:campus])
    
    respond_to do |format|
      if @campus.save
        format.html { redirect_to(@campus,
                      :notice => 'Portão adicionado com sucesso.') }
        format.json { render :json => @campus.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")},
                      :status => :created, :location => @campus }
      else
        format.html { render :action => "new" }
        format.json { render :json => @campus.errors.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")},
                      :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @campus = Campus.find(params[:id])
  end

  def update
    @campus = Campus.find(params[:id])
    
    respond_to do |format|
      if @campus.update_attributes(params[:campus])
        format.html { redirect_to(@campus,
                      :notice => 'O campus foi atualizado com sucesso.')}
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @campus.errors.to_json.to_s.gsub(/\\u([0-9a-z]{4})/) {|s| [$1.to_i(16)].pack("U")},
                      :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @campus = Campus.find(params[:id])
    @campus.destroy
    
    respond_to do |format|
      format.html { redirect_to campus_url }
      format.json { head :no_content }
    end
  end

end
