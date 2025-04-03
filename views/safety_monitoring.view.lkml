view: safety_monitoring {
  sql_table_name: `da-coe-iot-streaming.elderly_ai.safety_monitoring` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: alert_triggered {
    type: yesno
    sql: ${TABLE}.alert_triggered ;;
  }
  dimension: caregiver_notified {
    type: yesno
    sql: ${TABLE}.caregiver_notified ;;
  }
  dimension: fall_detected {
    type: yesno
    sql: ${TABLE}.fall_detected ;;
  }
  dimension: impact_force_level {
    type: string
    sql: ${TABLE}.impact_force_level ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: movement {
    type: string
    sql: ${TABLE}.movement ;;
  }
  dimension: post_fall_inactivity_duration {
    type: number
    sql: ${TABLE}.post_fall_inactivity_duration ;;
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
