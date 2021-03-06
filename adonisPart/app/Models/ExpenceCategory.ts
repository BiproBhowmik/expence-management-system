import { DateTime } from 'luxon'
import { BaseModel, column } from '@ioc:Adonis/Lucid/Orm'

export default class ExpenceCategory extends BaseModel {
  @column({ isPrimary: true })
  public id: number

  @column()
  public type_name : string
  
  @column()
  public amount : number

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
