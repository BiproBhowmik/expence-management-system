import BaseSchema from '@ioc:Adonis/Lucid/Schema'

export default class ExpenceCategories extends BaseSchema {
  protected tableName = 'expence_categories'

  public async up () {
    this.schema.createTable(this.tableName, (table) => {
      table.increments('id')
      table.string('type_name').notNullable()
      table.float('amount').defaultTo(0)

      /**
       * Uses timestamptz for PostgreSQL and DATETIME2 for MSSQL
       */
      table.timestamp('created_at', { useTz: true }).nullable()
      table.timestamp('updated_at', { useTz: true }).nullable()
    })
  }

  public async down () {
    this.schema.dropTable(this.tableName)
  }
}
