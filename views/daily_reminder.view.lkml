view: daily_reminder {
  sql_table_name: `da-coe-iot-streaming.elderly_ai.daily_reminder` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: acknowledged {
    type: yesno
    sql: ${TABLE}.acknowledged ;;
  }
  dimension: reminder_sent {
    type: yesno
    sql: ${TABLE}.reminder_sent ;;
  }
  dimension: reminder_type {
    type: string
    sql: ${TABLE}.reminder_type ;;
  }
  dimension: scheduled_time {
    type: string
    sql: ${TABLE}.scheduled_time ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
