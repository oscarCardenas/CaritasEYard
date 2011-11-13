class VolunteersController < ApplicationController
  # GET /volunteers
  # GET /volunteers.xml
  def index
    @volunteers = Volunteer.search(params[:search],params[:group])
    @groups = Group.find(:all)
    #@volunteers = Volunteer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @volunteers }
    end
  end
    
  def download_xls    
    
    # Require the WIN32OLE library
    require 'win32ole'
    # Create an instance of the Excel application object
    xl = WIN32OLE.new('Excel.Application')
    # Make Excel visible
    xl.Visible = 1
    
    @volunteer = Volunteer.all
    # Add a new Workbook object
    wb = xl.Workbooks.Add
    # Get the first Worksheet
    ws = wb.Worksheets(1)
    # Set the name of the worksheet tab
    ws.Name = 'Reporte P'
    # For each row in the data set
    @volunteer.each_with_index do |row, r|
      # For each field in the row
      row.each_with_index do |field, c|
          # Write the data to the Worksheet
          ws.Cells(r+1, c+1).Value = field.to_s
      end
    end
    # Save the workbook
    wb.SaveAs('C:\\Users\\Oscar\\Desktop\\workbook.xls')
    # Close the workbook
    wb.Close
    # Quit Excel
    xl.Quit
    
#    @volunteer = Volunteer.all
#          #sample is my model name
#
#        respond_to do |format|       
#        if @user.save
#          book = Spreadsheet::Workbook.new  
#          # create a new excel file
#          sheet1 = book.create_worksheet      
#          #initialize a new sheet
#          sheet1[1,1]=params[:user][:name]
#          #insert data in required sheet([row][column]) its starts from [0][0]
#          book.write 'test.xls'              # commit the write
#        end
#      end
  end

  # GET /volunteers/1
  # GET /volunteers/1.xml
  def show
    @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end  

  # GET /volunteers/new
  # GET /volunteers/new.xml
  def new
    @volunteer = Volunteer.new
    @groups = Group.find(:all)
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end

  # GET /volunteers/1/edit
  def edit
    @volunteer = Volunteer.find(params[:id])
    @groups = Group.find(:all)
  end

  # POST /volunteers
  # POST /volunteers.xml
  def create
    @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to(@volunteer, :notice => 'El voluntario fue creado exitosamente.') }
        format.xml  { render :xml => @volunteer, :status => :created, :location => @volunteer }
        
        t = Volunteer.find(@volunteer.id)
        t.update_attributes(:state => true)
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @volunteer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /volunteers/1
  # PUT /volunteers/1.xml
  def update
    @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      if @volunteer.update_attributes(params[:volunteer])
        format.html { redirect_to(@volunteer, :notice => 'El voluntario fue editado exitosamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @volunteer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.xml
  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.state ? @volunteer.update_attributes(:state => false) : @volunteer.update_attributes(:state => true)    

    respond_to do |format|
      format.html { redirect_to(volunteers_url) }
      format.xml  { head :ok }
    end
  end
end
