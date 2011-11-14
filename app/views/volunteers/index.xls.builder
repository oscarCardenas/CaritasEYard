xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Recent Volunteers' do
    xml.Table do
      # Header
      xml.Row do
        xml.Cell { xml.Data 'Name', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Lastname', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Second_Lastname', 'ss:Type' => 'String' }
      end

      # Rows
      for volunteer in @volunteers
        xml.Row do
          xml.Cell { xml.Data volunteer.name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.second_last_name, 'ss:Type' => 'String' }
        end
      end
    end
  end
end