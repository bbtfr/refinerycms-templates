class CreateTemplatesTemplates < ActiveRecord::Migration

  def up
    create_table :refinery_templates do |t|
      t.string :name
      t.text :body
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-templates"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/templates/templates"})
    end

    drop_table :refinery_templates

  end

end
