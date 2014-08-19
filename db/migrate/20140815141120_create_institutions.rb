class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions, primary_key: false do |t|
      t.string :facility_code, unique: true, null: false
      t.string :institution
      t.string :city
      t.string :state
      t.string :country
      t.integer :bah
      t.boolean :poe
      t.boolean :yr
      t.integer :gibill
      t.integer :cross
      t.decimal :grad_rate
      t.integer :grad_rate_rank
      t.decimal :default_rate
      t.integer :avg_stu_loan_debt
      t.integer :avg_stu_loan_debt_rank
      t.integer :indicator_group
      t.string :salary
      t.string :zip
      t.string :ope
      t.boolean :correspondence
      t.boolean :flight
      t.string :calendar
      t.integer :tuition_in_state
      t.integer :tuition_out_of_state
      t.string :student_veteran
      t.string :student_veteran_link
      t.string :vetsuccess_name
      t.string :vetsuccess_email
      t.boolean :gijobs
    end
  end
end
