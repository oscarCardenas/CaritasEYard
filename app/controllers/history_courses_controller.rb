class HistoryCoursesController < ApplicationController
  # GET /history_courses
  # GET /history_courses.xml
  def index
    @history_courses = HistoryCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @history_courses }
    end
  end

  # GET /history_courses/1
  # GET /history_courses/1.xml
  def show
    @history_course = HistoryCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @history_course }
    end
  end

  # GET /history_courses/new
  # GET /history_courses/new.xml
  def new
    @history_course = HistoryCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @history_course }
    end
  end

  # GET /history_courses/1/edit
  def edit
    @history_course = HistoryCourse.find(params[:id])
  end

  # POST /history_courses
  # POST /history_courses.xml
  def create
    @history_course = HistoryCourse.new(params[:history_course])

    respond_to do |format|
      if @history_course.save
        format.html { redirect_to(@history_course, :notice => 'Historia del Curso fue creada exitosamente.') }
        format.xml  { render :xml => @history_course, :status => :created, :location => @history_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @history_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /history_courses/1
  # PUT /history_courses/1.xml
  def update
    @history_course = HistoryCourse.find(params[:id])

    respond_to do |format|
      if @history_course.update_attributes(params[:history_course])
        format.html { redirect_to(@history_course, :notice => 'Historia del Curso fue Actualizada exitosamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @history_course.errors, :status => :unprocessable_entity }
      end
    end
  end

end