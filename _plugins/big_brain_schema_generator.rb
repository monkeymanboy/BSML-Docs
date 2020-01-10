module Jekyll
  class SchemaPageGenerator < Generator
    safe true

    def generate(site)
      @site = site
      @site.pages << make_page()
    end

    def make_page()
      PageWithoutAFile.new(@site, __dir__, "", "BSMLSchema.xsd").tap do |file|
        file.content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><xs:schema id=\"BSML\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" elementFormDefault=\"unqualified\" attributeFormDefault=\"unqualified\">"
        
        #Attribute Types
        valid_types = []
        @site.data["Types"].each do |type|
          valid_types << type["type"]
          file.content << "<xs:simpleType name=\"" + escape_type(type["type"]) + "\"><xs:union>"
          if type.key?("values")
            file.content << "<xs:simpleType><xs:restriction base=\"xs:string\">"
            type["values"].each do |value|
              file.content << "<xs:enumeration value=\"" + value + "\" />"
            end
            file.content << "</xs:restriction></xs:simpleType>"
          end
          if type.key?("patterns")
            type["patterns"].each do |pattern|
              file.content << "<xs:simpleType><xs:restriction base=\"xs:string\"><xs:pattern value=\"" + pattern + "\" /></xs:restriction></xs:simpleType>"
            end
          end
          file.content << "<xs:simpleType><xs:restriction base=\"xs:string\"><xs:pattern value=\"([~][a-zA-Z0-9-]*)\" /></xs:restriction></xs:simpleType></xs:union></xs:simpleType>"
        end
        
        #Tags
        @site.data["Tags"].each do |tag|
          tag["aliases"].each do |tag_alias|
            file.content << "<xs:element name=\"" + tag_alias + "\" type=\"" + tag["type"] + "\"/>"
          end
          current_type = "<xs:complexType name=\"" + tag["type"] + "\"><xs:sequence><xs:any minOccurs=\"0\" maxOccurs=\"unbounded\"/></xs:sequence>"
          tag["components"].each do |component|
            @site.data["TypeHandlers"].each do |type_handler|
              if component == type_handler["type"]
                type_handler["properties"].each do |property|
                  property["aliases"].each do |prop_alias|
                    current_type << "<xs:attribute name=\"" + prop_alias + "\" type=\"" + (valid_types.include?(property["type"]) ? escape_type(property["type"]) : "xs:string") + "\"><xs:annotation><xs:documentation>" + escape_xml(property["description"]) + "</xs:documentation></xs:annotation></xs:attribute>"
                  end
                end
              end
            end
          end
          #todo temp, should pull from some other documentation and add documentation tag
          current_type << "<xs:attribute name=\"tags\" type=\"xs:string\"/>"
          current_type << "<xs:attribute name=\"id\" type=\"xs:string\"/>"
          #
          current_type << "</xs:complexType>"
          file.content << current_type
        end
        
        #Macros
        @site.data["Macros"].each do |macro|
          macro["aliases"].each do |macro_alias|
            file.content << "<xs:element name=\"" + macro_alias + "\" type=\"" + macro["type"] + "\"/>"
          end
          current_type = "<xs:complexType name=\"" + macro["type"] + "\"><xs:annotation><xs:documentation>" + macro["description"] + "</xs:documentation></xs:annotation><xs:sequence><xs:any minOccurs=\"0\" maxOccurs=\"unbounded\"/></xs:sequence>"
          macro["properties"].each do |property|
            property["aliases"].each do |prop_alias|
              current_type << "<xs:attribute name=\"" + prop_alias + "\" type=\"xs:string\"><xs:annotation><xs:documentation>" + escape_xml(property["description"]) + "</xs:documentation></xs:annotation></xs:attribute>"
            end
          end
          current_type << "</xs:complexType>"
          file.content << current_type
        end
        file.content << "</xs:schema>"
      end
    end
    
    def escape_xml(source)
      source.gsub("\"", "&quot;").gsub("\"", "&quot;").gsub("&", "&amp;").gsub("'", "&apos;").gsub("<", "&lt;").gsub(">", "&gt;")
    end
    def escape_type(source)
      source.gsub(" ", "-")
    end
  end
end