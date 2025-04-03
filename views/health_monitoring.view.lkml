view: health_monitoring {
  sql_table_name: `da-coe-iot-streaming.elderly_ai.health_monitoring` ;;
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
  dimension: blood_pressure {
    type: string
    sql: ${TABLE}.blood_pressure ;;
  }
  dimension: blood_pressure_below_above_threshold {
    type: yesno
    sql: ${TABLE}.blood_pressure_below_above_threshold ;;
  }
  dimension: caregiver_notified {
    type: yesno
    sql: ${TABLE}.caregiver_notified ;;
  }
  dimension: glucose_levels {
    type: number
    sql: ${TABLE}.glucose_levels ;;
  }
  dimension: glucose_levels_below_above_threshold {
    type: yesno
    sql: ${TABLE}.glucose_levels_below_above_threshold ;;
  }
  dimension: heart_rate {
    type: number
    sql: ${TABLE}.heart_rate ;;
  }
  dimension: heart_rate_below_above_threshold {
    type: yesno
    sql: ${TABLE}.heart_rate_below_above_threshold ;;
  }
  dimension: oxygen_sat_below_threshold {
    type: yesno
    sql: ${TABLE}.oxygen_sat_below_threshold ;;
  }
  dimension: oxygen_saturation {
    type: number
    sql: ${TABLE}.oxygen_saturation ;;
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
